package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.model.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {

	List<Booking> findByUsername(String username);
}
