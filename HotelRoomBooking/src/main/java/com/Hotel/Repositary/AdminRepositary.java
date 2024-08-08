package com.Hotel.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Hotel.Entity.Admin;

public interface AdminRepositary extends JpaRepository<Admin, String> {

}
