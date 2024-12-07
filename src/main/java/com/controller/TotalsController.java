package com.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.repository.GuideRepository;
import com.repository.PlaceRepository;
import com.repository.UserRepository;

@RestController
public class TotalsController {
    @Autowired
    private GuideRepository guideRepository;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private PlaceRepository placeRepository;

    @GetMapping("/api/totals")
    public Map<String, Long> getTotals() {
        Map<String, Long> totals = new HashMap<>();
        totals.put("guides", guideRepository.count());
        totals.put("users", userRepository.count());
        totals.put("places", placeRepository.count());
        return totals;
    }
}