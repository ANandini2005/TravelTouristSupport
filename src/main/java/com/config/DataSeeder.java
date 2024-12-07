package com.config;

import com.model.Place;
import com.repository.PlaceRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSeeder {

    @Bean
    CommandLineRunner seedDatabase(PlaceRepository placeRepository) {
        return args -> {
            if (placeRepository.count() == 0) {
                placeRepository.save(new Place("Eiffel Tower", "Iconic landmark in Paris.", "images/eiffeltower.webp", "Paris"));
                placeRepository.save(new Place("Louvre Museum", "Famous museum in Paris.", "https://lh3.googleusercontent.com/p/AF1QipMiq8zbQz74ahZttWk6Nf_ASq3ARdE8TPLeVDof=s1360-w1360-h1020-rw", "Paris"));
                placeRepository.save(new Place("Colosseum", "Ancient amphitheater in Rome.", "images/colosseum.jpg", "Rome"));
                placeRepository.save(new Place("Central Park", "Famous urban park in New York.", "images/centralpark.jpg", "New York"));
            }
        };
    }
}
