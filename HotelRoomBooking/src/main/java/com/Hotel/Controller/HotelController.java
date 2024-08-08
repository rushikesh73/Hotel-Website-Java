package com.Hotel.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Hotel.Entity.Admin;
import com.Hotel.Entity.HotelData;
import com.Hotel.Service.HotelService;

import ch.qos.logback.core.model.Model;


@Controller
public class HotelController {
	
	@Autowired
	HotelService ser;
	
	
	@RequestMapping("/home")
	public String index() 
	{
		return "home";
	}
	@RequestMapping("/room")
	public String index1() 
	{
		return "Rooms";
	}
	@RequestMapping("/faci")
	public String index2() 
	{
		return "facilities";
	}
	@RequestMapping("/cont")
	public String index3() 
	{
		return "contact";
	}
	@RequestMapping("/abou")
	public String index4() 
	{
		return "about";
	}
	@RequestMapping("/book")
	public String index5() 
	{
		return "booking";
	}
	@RequestMapping("/submit")
	public String index6(HotelData obj)
	{
		
		ser.booking(obj);  

		
		return "Payment";
	}
	@RequestMapping("/success")
	public String index6() 
	{
		return "sucessful";
	}
	
	@RequestMapping("/history")
	public String index7() 
	{

		return "yourbooking";
	}
	
	@RequestMapping("/readdata")
	public ModelAndView index8(String phone) 
	{

		HotelData abc=ser.readbooking(phone);
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj",abc);
		mv.setViewName("read");
		
		
		return mv;
	}
	
	@RequestMapping("/Admin")
	public String admin()
	{
		return"Admin";
	}
	
	 @RequestMapping("insideLogin")
	    public String admin(String username, String password)
	    {
	    	Admin admin = ser.readAdmin(username);
	    	String str = admin.toString();
	    	
	    	
	    	if(username.equals(admin.getUsername()) && (password.equals(admin.getPassword())) )
	        {
	        	
	           return"NewOne";	

	        }
	        
	       return"ErrorPage";

	    	
	    }
	    
	    
	
	 @RequestMapping("SuccessAdmin")
	    public String AdminSuccess(String username,String password)
	    {
	    	ser.updatePassword(username,password);
	    	
	    	return"SuccessAdmin";
	    }
	   

    
	    @RequestMapping("Forgot")
	    public String rushikesh()
	    {
	    	return"ChangePass";
	    }
	    
	    @RequestMapping("ChangePass")
	    public String newPass()
	    {
	    	return"NewPass";
	    }
	    
	    @RequestMapping("new1")
	    public ModelAndView view()
	    {
	    	
	    	List<HotelData> list  =  ser.readAll();
	    	
	    
	    	
	    	ModelAndView mv = new ModelAndView();
	    	mv.addObject("key", list);
	    	mv.setViewName("TotalBooking");
	    
	    	return mv;
	    }
	    



}
