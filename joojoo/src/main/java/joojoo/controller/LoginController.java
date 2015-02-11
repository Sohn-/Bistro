package joojoo.controller;

import joojoo.entity.Owners;
import joojoo.entity.Users;
import joojoo.service.OwnerService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"userId","ownerId"})
//@RequestMapping("/login")
public class LoginController {
	static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);
	@Autowired
	UserService userService;
	@Autowired
	OwnerService ownerService;
	
	@RequestMapping(value="login/login")
	public String showLogin(){
		return "login/login";
	}
	
	@RequestMapping(value="login/check_user", method=RequestMethod.POST)
	public String loginCheck(@ModelAttribute("user") Users user, Model model){
		Users loginUser;
		String path = "redirect:/main";
		
		loginUser = userService.UsersLogin(user);
		
		if(loginUser != null){
			model.addAttribute("userId", loginUser.getUserId());
		}
		else{
			path = "redirect:/login/loginfail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="login/check_owner", method=RequestMethod.POST)
	public String loginCheck(@ModelAttribute("owner") Owners owner, Model model){
		Owners loginOwner;
		String path = "redirect:/main";
		
		loginOwner = ownerService.OwnersLogin(owner);
		
		if(loginOwner != null){
			model.addAttribute("ownerId", loginOwner.getOwnerId());
		}
		else{
			path = "redirect:/login/loginfail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showMain(){
		
		return "main";
	}
	
	@RequestMapping(value="/login/login_fail", method=RequestMethod.GET)
	public String loginFail(){
		
		return "login/login_fail";
	}
	
	@RequestMapping(value="/login/password_find")
	public String test(){
		return "login/password_find";
	}
	
	
}
