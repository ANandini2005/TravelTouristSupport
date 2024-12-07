package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.model.Guide;
import com.repository.GuideRepository;

import java.util.List;

@Service
public class GuideService {

    @Autowired
    private GuideRepository guideRepository;  // Repository to interact with the database

    // Add a new guide
    public Guide addGuide(Guide guide) {
        return guideRepository.save(guide);  // Save the guide to the database
    }

    public List<Guide> getAllGuides() {
        List<Guide> guides = guideRepository.findAll();
        System.out.println("Retrieved Guides: " + guides); // This will print meaningful data after overriding toString
        return guides;
    }


    // Delete a guide by ID
    public void deleteGuide(Long guideId) {
        guideRepository.deleteById(guideId);  // Delete the guide with the given ID
    }

    public Guide findGuideById(Long id) {
        return guideRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Guide not found with ID: " + id));
    }

}