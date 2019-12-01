package com.java.springboot.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.springboot.dao.UserRepository;
import com.java.springboot.entity.User;

@Controller
public class LoginController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = { "/index" })
	public String showLogin() {

		return "index";
	}

	@GetMapping("/register")
	public String doRegistration() {

		return "register";
	}



	@RequestMapping(value = "/login/do", method = RequestMethod.POST)
	public String loginProcess(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {

		session.setAttribute("email", email);
		Optional<User> userDetail = userRepository.findById(email);

		if (userDetail.isPresent()) {
			String userType = userDetail.get().getUserType();
			String passwordDb = userDetail.get().getPassword();
			if (password.equals(passwordDb) && userType.equals("admin")) {
				return "adminPage";
			} else if (password.equals(passwordDb) && userType.equals("candidate")) {
				return "candidatePage";
			} else {
				return "passwordError";
			}

		} else {
			return "invalid";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		System.out.println("inside logout");
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
}
