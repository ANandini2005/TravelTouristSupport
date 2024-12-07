package com.repository;


import com.model.VehicleBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VehicleBookingRepository extends JpaRepository<VehicleBooking, Long> {
}
