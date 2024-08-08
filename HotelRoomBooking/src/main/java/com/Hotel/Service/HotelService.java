package com.Hotel.Service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Hotel.Entity.Admin;
import com.Hotel.Entity.HotelData;
import com.Hotel.Repositary.AdminRepositary;
import com.Hotel.Repositary.HotelRepositary;


@Service
public class HotelService {
	
	@Autowired
	HotelRepositary repo;

	@Autowired
	AdminRepositary aRepo;
	
	public void booking(HotelData obj)
	{
		repo.save(obj);
		
	}
	public HotelData readbooking(String phone)
	{
	   
	   return repo.findById(phone).orElse(null);
	}
	
	 public Admin readAdmin(String username)
	    {
	    	return aRepo.findById(username).orElse(null);
	    }
	    
	    public void updatePassword(String username,String password)
	    {
	    	 Admin admin = aRepo.findById(username).orElse(null);
	    	 
	    	 admin.setPassword(password);
	    	 
	    	 aRepo.save(admin);
	    }
	    
	    public List<HotelData> readAll()
	    {
	    	System.out.println("Rushhi");
	    	List <HotelData> data = new ArrayList<HotelData>();
	         repo.findAll().forEach(data1 -> data.add(data1) );
	         
	         return data;
	    }

}
