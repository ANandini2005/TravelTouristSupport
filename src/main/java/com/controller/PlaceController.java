package com.controller;

import com.model.Place;
import com.service.PlaceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PlaceController {
    private final PlaceService placeService;

    public PlaceController(PlaceService placeService) {
        this.placeService = placeService;
    }

    @GetMapping("/cityTour")
    public String getCityPlaces(@RequestParam("city") String city, Model model) {
        List<Place> places = placeService.getPlacesByCity(city);
        model.addAttribute("city", city);
        model.addAttribute("places", places);
        return "cityDetails"; // Returns the JSP view
    }

    @PostMapping("/addPlace")
    public String addPlace(@ModelAttribute Place place) {
        placeService.savePlace(place);
        return "redirect:/adminDashboard";
    }

}
