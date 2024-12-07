package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Place;

@Repository
public interface PlaceRepository extends JpaRepository<Place, Long> {
    List<Place> findByCity(String city); // Fetch places based on city name
}
