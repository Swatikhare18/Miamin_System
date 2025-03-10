package eCommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import eCommerce.DAO.UserDAO;
import eCommerce.model.UserDetail;

@Controller

public class RegisterController {

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerUser(
    
	@RequestParam("username")String username,@RequestParam("role")String role, @RequestParam("email")String email, 
	@RequestParam("userAddress")String userAddress, @RequestParam("password")String password)
	{
		UserDetail user = new UserDetail();
		
		user.setUsername(username);
		
		user.setUserAddress(userAddress);
		
		user.setEmail(email);
		
		user.setPassword(password);
		
		user.setEnabled(true);
		
		user.setRole(role);
		
		userDAO.registerUser(user);
	
		return "Success";
	}
	
	@RequestMapping(value="/success")
	public String showSuccessPage()
	{
		return "Success";
	}

}
