package com.Hotel.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Hotel.Entity.HotelData;

public interface HotelRepositary  extends JpaRepository<HotelData, String>{

}
