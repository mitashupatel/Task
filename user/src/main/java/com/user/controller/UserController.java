package com.user.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.user.model.User;
import com.user.service.UserService;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/signUpPage", method = { RequestMethod.GET })
	public String signUpPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "SignUp";

	}

	@RequestMapping(value = "/addUser", method = { RequestMethod.POST })
	public String addUser(@ModelAttribute("user") User user, Model model) {
		userService.saveUser(user);
		return "redirect:/user/signInPage";

	}

	@RequestMapping("/signInPage")
	public String signInPage(Model model) {

		User user = new User();
		model.addAttribute("user", user);
		return "SignIn";
	}

	@RequestMapping("/signingIn")
	public String signingIn(@ModelAttribute("user") User user, Model model) {

		User result = userService.login(user);
		if (result != null) {
			model.addAttribute("user", result);
			return "redirect:/user/userDataPage";
		} else {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/user/signInPage";
		}

	}

	@RequestMapping(value = "/userDataPage", method = { RequestMethod.GET })
	public String userDataPage(Model model) {

		List<User> datalist = userService.getAll();
		model.addAttribute("datalist", datalist);
		return "UserData";

	}

}
