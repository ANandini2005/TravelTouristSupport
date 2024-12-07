package com.controller;

import com.model.Booking;
import com.model.Contact;

import com.model.Guide;
import com.model.User;
import com.repository.BookingRepository;
import com.repository.ContactRepository;
import com.repository.GuideRepository;
import com.repository.UserRepository;
import com.service.GuideService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private GuideRepository guideRepository;
    
    @Autowired
    private ContactRepository contactRepository;
    
    @Autowired
    private JavaMailSender emailSender;
    
    @Autowired
    private BookingRepository bookingRepository;

    @GetMapping("/adminDashboard")
    public String adminDashboard(Model model) {
        List<User> users = userRepository.findAll();
        List<Guide> guides = guideRepository.findAll(); // Retrieve all guides
        List<Contact> contacts = contactRepository.findAll(); // Retrieve all contacts
        List<Booking> bookings = bookingRepository.findAll();

        model.addAttribute("users", users);
        model.addAttribute("guides", guides); // Add guides to the model
        model.addAttribute("contacts", contacts); // Add contacts to the model
        model.addAttribute("bookings", bookings);
        return "adminDashboard";
    }


    // Show Add User Form
    @GetMapping("/addUser")
    public String showAddUserForm(Model model) {
        model.addAttribute("user", new User()); // Empty user object for the form
        return "addUser";
    }

    // Handle Add User Form Submission
    @PostMapping("/addUser")
    public String addUser(@ModelAttribute("user") User user) {
        userRepository.save(user);
        return "redirect:/adminDashboard"; // Redirect to dashboard
    }

    // Show Edit User Form
    @GetMapping("/editUser/{id}")
    public String showEditUserForm(@PathVariable("id") Long id, Model model) {
        User user = userRepository.findById(id).orElse(null);
        if (user == null) {
            return "redirect:/adminDashboard"; // Redirect if user not found
        }
        model.addAttribute("user", user); // Populate form with existing user details
        return "editUser";
    }

    // Handle Edit User Form Submission
    @PostMapping("/editUser")
    public String editUser(@ModelAttribute("user") User user) {
        userRepository.save(user); // Save updated user
        return "redirect:/adminDashboard";
    }

    // Delete User
    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userRepository.deleteById(id);
        return "redirect:/adminDashboard"; // Redirect to dashboard after deletion
    }
    
    @GetMapping("/addGuide")
    public String showAddGuidePage() {
        return "addGuide";  // Return the JSP page for adding guides
    }
    
    @GetMapping("/replyContact/{id}")
    public String showReplyForm(@PathVariable("id") Long id, Model model) {
        // Retrieve contact message by ID
        Contact contact = contactRepository.findById(id).orElse(null);
        if (contact != null) {
            model.addAttribute("contact", contact);
        }
        return "replyContact";  // This will be the reply form page
    }

    @PostMapping("/sendReply")
    public String sendReply(@RequestParam("contactId") Long contactId,
                            @RequestParam("replyMessage") String replyMessage,
                            Model model) {
        // Retrieve contact details
        Contact contact = contactRepository.findById(contactId).orElse(null);
        if (contact != null) {
            // Prepare email
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(contact.getEmail()); // Send to the contact's email
            message.setSubject("Reply to Your Inquiry");
            message.setText(replyMessage);

            // Send the email
            emailSender.send(message);

            // Add success message to the model
            model.addAttribute("message", "Your reply has been sent successfully!");

            // Optionally, you can add a message for future admin reference or log the action.
        }
        return "redirect:/adminDashboard";  // Redirect to admin dashboard after sending the reply
    }

}
