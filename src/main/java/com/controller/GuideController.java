package com.controller;

import com.model.Guide;
import com.repository.GuideRepository;
import com.service.EmailService;
import com.service.GuideService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/guides")
public class GuideController {

    @Autowired
    private GuideRepository guideRepository;  // Directly use the repository

    @Autowired
    private GuideService guideService;
    // Add a new guide
    @PostMapping
    public ResponseEntity<Guide> addGuide(@RequestBody Guide guide) {
        Guide savedGuide = guideRepository.save(guide); // Save the guide directly using the repository
        return ResponseEntity.ok(savedGuide);
    }

    // Show the guide management page and list all guides
    @GetMapping("/manageGuides")
    public String manageGuides(Model model) {
        List<Guide> guides = guideRepository.findAll(); // Fetch all guides directly from the repository
        model.addAttribute("guides", guides); // Add the guides to the model
        return "manageGuides";  // Return the JSP page for managing guides
    }

    @GetMapping("/editGuide/{id}")
    public String editGuide(@PathVariable("id") Long id, Model model) {
        Guide guide = guideService.findGuideById(id);
        if (guide == null) {
            throw new RuntimeException("Guide not found with ID: " + id); // Optional: Add proper error handling
        }
        model.addAttribute("guide", guide);
        return "editGuide"; // This should match the JSP file's name without extension
    }


    // Edit guide (handle the form submission)
    @PostMapping("/editGuide")
    public String editGuide(@ModelAttribute("guide") Guide guide) {
        guideRepository.save(guide); // Save the updated guide directly using the repository
        return "redirect:/adminDashboard";  // Redirect to the admin dashboard after saving
    }

    // Delete guide by ID
    @GetMapping("/deleteGuide/{id}")
    public String deleteGuide(@PathVariable("id") Long id) {
        guideRepository.deleteById(id);  // Delete the guide by ID directly using the repository
        return "redirect:/adminDashboard";  // Redirect to the admin dashboard after deletion
    }
    @GetMapping
    public List<Guide> getAllGuides() {
        return guideRepository.findAll(); // Direct call to the repository
    }
    
    
}
