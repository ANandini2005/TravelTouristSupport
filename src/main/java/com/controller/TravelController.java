package com.controller;

import java.time.LocalDate;


import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Booking;
import com.model.Contact;
import com.model.PasswordResetToken;
import com.model.User;
import com.model.VehicleBooking;
import com.repository.BookingRepository;
import com.repository.ContactRepository;
import com.repository.PasswordResetTokenRepository;
import com.repository.UserRepository;
import com.service.CaptchaService;
import com.service.EmailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class TravelController {

    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private PasswordResetTokenRepository passwordResetTokenRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private CaptchaService captchaService;
    
    @Autowired
    private ContactRepository contactRepository;
    
    @Autowired
    private BookingRepository bookingRepository;

    // Map root URL ("/") to the welcome page
    @GetMapping("/")
    public ModelAndView showWelcomePage() {
        return new ModelAndView("welcome");
    }

    @GetMapping("/welcome")
    public ModelAndView showWelcomePageAlias() {
        return new ModelAndView("welcome");
    }

    @GetMapping("/index")
    public ModelAndView showLoginPage() {
        return new ModelAndView("index");
    }

    @GetMapping("/signup")
    public ModelAndView showSignupPage() {
        return new ModelAndView("signup");
    }

   
    @PostMapping("/signup")
    public String handleSignup(@RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("username") String username,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam("contactNumber") String contactNumber,
                               @RequestParam("address") String address,
                               @RequestParam("role") String role,
                               Model model) {

        // Validate phone number and password
        String errorMessage = validatePhoneNumberAndPassword(contactNumber, password);
        if (errorMessage != null) {
            // Add error message and return to signup form
            model.addAttribute("error", errorMessage);
            return "signup"; // Return to signup page if validation fails
        }

        // Save the user if validation passes
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setContactNumber(contactNumber);
        user.setAddress(address);
        user.setRole(role);

        userRepository.save(user);

        return "redirect:/index"; // Redirect to login page
    }

    private String validatePhoneNumberAndPassword(String contactNumber, String password) {
        if (!contactNumber.matches("\\d{10,15}")) { // Validate international format (e.g., +1234567890)
            return "Contact number must be in international format, starting with '+', followed by 10-15 digits.";
        }
        if (password == null || password.length() < 6) { // Ensure password length
            return "Password must be at least 6 characters long.";
        }
        return null; // No errors
    }
    


    @PostMapping("/index")
    public ModelAndView handleLogin(@RequestParam("username") String username,
                                    @RequestParam("password") String password,
                                    @RequestParam("g-recaptcha-response") String captchaResponse,
                                    HttpSession session) {

        if (!captchaService.verifyCaptcha(captchaResponse)) {
            ModelAndView modelAndView = new ModelAndView("index");
            modelAndView.addObject("error", "Captcha verification failed. Please try again.");
            return modelAndView;
        }

        User user = userRepository.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("loggedInUser", user); // Store user in session

            // Redirect based on role
            if ("admin".equalsIgnoreCase(user.getRole())) {
                return new ModelAndView("redirect:/adminDashboard");
            } else {
                return new ModelAndView("redirect:/home");
            }
        } else {
            ModelAndView modelAndView = new ModelAndView("index");
            modelAndView.addObject("error", "Invalid username or password");
            return modelAndView;
        }
    }

    @GetMapping("/home")
    public ModelAndView showHomePage() {
        return new ModelAndView("home");
    }

    @GetMapping("/tourismContent")
    public String showProtectedContent() {
        return "redirect:/destinations";
    }
    @GetMapping("/profile")
    public ModelAndView showProfile(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // Retrieve user from session
        if (user == null) {
            return new ModelAndView("redirect:/index"); // Redirect to login if no user is in session
        }
        ModelAndView modelAndView = new ModelAndView("profile");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
    @GetMapping("/editProfile")
    public ModelAndView showEditProfilePage(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // Get user from session
        if (user == null) {
            return new ModelAndView("redirect:/index"); // Redirect to login if no user is in session
        }
        ModelAndView modelAndView = new ModelAndView("editProfile");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
    
    @PostMapping("/updateProfile")
    public ModelAndView updateProfile(@RequestParam("id") Long id,
                                      @RequestParam("firstName") String firstName,
                                      @RequestParam("lastName") String lastName,
                                      @RequestParam("email") String email,
                                      @RequestParam("contactNumber") String contactNumber,
                                      @RequestParam("address") String address) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            // Update user details
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email); // Ensure email is updated as well
            user.setContactNumber(contactNumber);
            user.setAddress(address);
            
            userRepository.save(user); // Save the updated user in the database
        }
        return new ModelAndView("redirect:/profile"); // Redirect back to profile page after saving
    }

    @PostMapping("/editProfile")
    public String handleEditProfile(@RequestParam("firstName") String firstName,
                                    @RequestParam("lastName") String lastName,
                                    @RequestParam("email") String email,
                                    @RequestParam("contactNumber") String contactNumber,
                                    @RequestParam("address") String address) {
        User user = userRepository.findByUsername("loggedInUsername"); // replace "loggedInUsername" with actual logged-in username
        
        // Update user details
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setContactNumber(contactNumber);
        user.setAddress(address);

        userRepository.save(user); // Save the updated user in the database
        return "redirect:/profile"; // Redirect back to profile page after saving
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Invalidate the current session
        return "redirect:/"; // Redirect to login page
    }
    @GetMapping("/destinations")
    public String showDestinations(Model model) {
        // Add destinations to the model if needed
        return "destinations";
    }

    @GetMapping("/adventureTours")
    public String showAdventureToursPage() {
        return "adventureTours"; // JSP page name for Adventure Tours
    }
    
    @GetMapping("/cityTours")
    public String cityToursPage() {
        return "cityTours"; // This corresponds to cityTours.jsp
    }
    @GetMapping("/vehicle_rentals")
    public String carRentalsPage() {
        return "vehicle_rentals"; // This corresponds to carRentals.jsp
    }
    @GetMapping("/beachVacations")
    public String beachVacationsPage(Model model) {
        // Add any attributes to model if necessary
        model.addAttribute("username", "user"); // Example for username
        return "beachVacations"; // JSP page name
    }
    @GetMapping("/romanticGetaways")
    public String romantiGetawaysPage() {
        return "romanticGetaways"; // This corresponds to carRentals.jsp
    }
    @GetMapping("/winterEscapes")
    public String winterEscapesPage() {
        return "winterEscapes"; // This corresponds to carRentals.jsp
    }
    @GetMapping("/familyPackages")
    public String familyPackagesPage() {
        return "familyPackages"; // This corresponds to carRentals.jsp
    }
    @GetMapping("/accommodation")
    public String acommodationPage() {
        return "accommodation"; // This corresponds to carRentals.jsp
    }
    @GetMapping("/travelPackages")
    public String travelPackagesPage() {
        return "travelPackages"; // This corresponds to carRentals.jsp
    }
    
    @GetMapping("/touristGuide")
    public String showtouristGuide(Model model) {
        // Add destinations to the model if needed
        return "touristGuide";
    }
    
    @GetMapping("/support")
    public String supportPage() {
        return "support"; // This corresponds to carRentals.jsp
    }
    
    @PostMapping("/submit-support-form")
    public ModelAndView submitSupportForm(@RequestParam("name") String name,
                                          @RequestParam("email") String email,
                                          @RequestParam("message") String message) {
        // Create a new Contact object and save it to the database
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setMessage(message);

        contactRepository.save(contact);

        // Redirect to a confirmation page or return a success message
        ModelAndView modelAndView = new ModelAndView("support");  // Assuming 'support.jsp' is the form page
        modelAndView.addObject("successMessage", "Thank you for reaching out! We will get back to you soon.");
        return modelAndView;
    }
    @GetMapping("/book")
    public String showBookingForm(@RequestParam("destination") String destination, Model model) {
        model.addAttribute("destination", destination);
        return "book"; // JSP file for the booking form
    }

    @PostMapping("/book")
    public ModelAndView handleBooking(@RequestParam("destination") String destination,
                                       @RequestParam("username") String username,
                                       @RequestParam("numberOfTravelers") int numberOfTravelers,
                                       @RequestParam("startDate") String startDate,
                                       @RequestParam("endDate") String endDate,
                                       @RequestParam("accommodationType") String accommodationType,
                                       @RequestParam("travelPreferences") String travelPreferences,
                                       @RequestParam("specialRequirements") String specialRequirements) {

        ModelAndView modelAndView = new ModelAndView();

        // Validation
        if (numberOfTravelers <= 0) {
            modelAndView.setViewName("book");
            modelAndView.addObject("errorMessage", "Number of travelers must be greater than 0.");
            return modelAndView;
        }

        LocalDate start = LocalDate.parse(startDate);
        LocalDate end = LocalDate.parse(endDate);

        if (end.isBefore(start)) {
            modelAndView.setViewName("book");
            modelAndView.addObject("errorMessage", "End date must be after start date.");
            return modelAndView;
        }

        if (username == null || username.trim().isEmpty()) {
            modelAndView.setViewName("book");
            modelAndView.addObject("errorMessage", "Username is required.");
            return modelAndView;
        }

        // Save to database
        Booking booking = new Booking();
        booking.setDestination(destination);
        booking.setUsername(username);
        booking.setNumberOfTravelers(numberOfTravelers);
        booking.setStartDate(start);
        booking.setEndDate(end);
        booking.setAccommodationType(accommodationType);
        booking.setTravelPreferences(travelPreferences);
        booking.setSpecialRequirements(specialRequirements);
        booking.setBookingDate(LocalDate.now());

        bookingRepository.save(booking);

        modelAndView.setViewName("payment_scanner");
        modelAndView.addObject("booking", booking);
        return modelAndView;
    }
    
    @PostMapping("/confirmPayment")
    public String confirmTravelPayment(@RequestParam Long bookingId, Model model) {
        Booking booking = bookingRepository.findById(bookingId).orElse(null);

        model.addAttribute("booking", booking);
        return "bookingConfirmation"; // JSP page for travel booking confirmation
    }
    

    @GetMapping("/forgot-password")
    public String showForgotPasswordPage() {
        return "forgot-password"; // Create this JSP for the forgot password page
    }

    @PostMapping("/forgot-password")
    public String handleForgotPassword(@RequestParam("email") String email, Model model) {
        User user = userRepository.findByEmail(email);

        if (user != null) {
            // Generate a unique token for password reset
            String token = UUID.randomUUID().toString();
            PasswordResetToken resetToken = new PasswordResetToken();
            resetToken.setToken(token);
            resetToken.setEmail(email);
            resetToken.setExpiryDate(LocalDateTime.now().plusHours(1)); // Token expires in 1 hour

            passwordResetTokenRepository.save(resetToken);

            // Send the reset password email
            emailService.sendPasswordResetEmail(email, token);

            model.addAttribute("message", "A password reset link has been sent to your email.");
        } else {
            model.addAttribute("error", "No user found with that email address.");
        }

        return "forgot-password"; // Return to the forgot password page with a success or error message
    }

    @GetMapping("/reset-password")
    public String showResetPasswordPage(@RequestParam("token") String token, Model model) {
        // Logic to validate the token and display the reset password form
        model.addAttribute("token", token);
        return "reset-password";
    }


    @PostMapping("/reset-password")
    public String handleResetPassword(@RequestParam("token") String token,
                                       @RequestParam("newPassword") String newPassword,
                                       Model model) {
        PasswordResetToken resetToken = passwordResetTokenRepository.findByToken(token);

        if (resetToken == null || resetToken.getExpiryDate().isBefore(LocalDateTime.now())) {
            model.addAttribute("error", "Invalid or expired token.");
            return "reset-password"; // Show reset password page with error message
        }

        User user = userRepository.findByEmail(resetToken.getEmail());
        if (user != null) {
            user.setPassword(newPassword); // Set new password
            userRepository.save(user);

            passwordResetTokenRepository.delete(resetToken); // Delete the used token

            model.addAttribute("message", "Password reset successfully. You can now log in.");
        }

        return "reset-password"; // Show success message on reset password page
    }
    
    @GetMapping("/chatbot")
    public String showChatbotPage() {
        return "chatbot"; // Corresponds to chatbot.jsp
    }
    @GetMapping("/myBookings")
    public ModelAndView showMyBookings(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser"); // Retrieve logged-in user
        if (user == null) {
            return new ModelAndView("redirect:/index"); // Redirect to login if not logged in
        }

        // Fetch bookings for the user
        List<Booking> bookings = bookingRepository.findByUsername(user.getUsername());

        ModelAndView modelAndView = new ModelAndView("myBookings"); // Pointing to myBookings.jsp
        modelAndView.addObject("bookings", bookings); // Add bookings to the model
        return modelAndView;
    }

    
}