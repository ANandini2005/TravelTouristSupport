package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.model.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long> {
    // Additional query methods can be defined here if needed
}
