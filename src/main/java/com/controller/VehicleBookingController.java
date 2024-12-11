package com.controller;


import com.model.VehicleBooking;
import com.repository.VehicleBookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
public class VehicleBookingController {

    @Autowired
    private VehicleBookingRepository vehicleBookingRepository;

    // Show the booking form
    @GetMapping("/vehicle-booking")
    public String showBookingForm(Model model) {
        model.addAttribute("vehicleBooking", new VehicleBooking());
        return "vehicle_rentals"; // Return the JSP page to show the form
    }

    // Handle the form submission for booking
    @PostMapping("/processBooking")
    public String processBooking(@RequestParam String vehicleType,
                                 @RequestParam String pickupLocation,
                                 @RequestParam String pickupDate,
                                 @RequestParam String dropoffDate,
                                 Model model) {

        // Parse the date strings to LocalDate
        LocalDate parsedPickupDate = LocalDate.parse(pickupDate);
        LocalDate parsedDropoffDate = LocalDate.parse(dropoffDate);

        // Create a new VehicleBooking object and set the form data
        VehicleBooking booking = new VehicleBooking();
        booking.setVehicleType(vehicleType);
        booking.setPickupLocation(pickupLocation);
        booking.setPickupDate(parsedPickupDate);
        booking.setDropoffDate(parsedDropoffDate);

        // Save the booking to the database
        vehicleBookingRepository.save(booking);

        // Add the booking object to the model for displaying confirmation
        model.addAttribute("booking", booking);

        // Return the booking confirmation JSP page
        return "payment_scanner"; // Show confirmation page
    }

    @PostMapping("/vehicle/confirmPayment")
    public String confirmPayment(@RequestParam Long bookingId, Model model) {
        // Fetch booking details if needed
        VehicleBooking booking = vehicleBookingRepository.findById(bookingId).orElse(null);
        model.addAttribute("booking", booking);

        return "booking_confirmation"; // Booking success page
    }
}
