package joojoo.controller;

import joojoo.entity.All;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes({"loginUser","loginOwner"})
//@RequestMapping("/login")
public class LoginController {
	static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);
	@Autowired
	UserService userService;
	@Autowired
	OwnerService ownerService;
	
	@RequestMapping(value="/login")
	public String showLogin(Model model){
		Users user = new Users();
		model.addAttribute("user", user);
		Owners owner = new Owners();
		model.addAttribute("owner", owner);
		return "login/login";
	}
	
	@RequestMapping(value="login/check_user", method=RequestMethod.POST)
	public String loginCheckUser(@ModelAttribute("user") Users user, Model model){
		All loginUser;
		String path = "redirect:/";
		logger.error("user = "+user);

		loginUser = userService.UsersLogin(user);
		
		if(loginUser != null){
			model.addAttribute("loginUser", loginUser);
		}
		else{
			path = "redirect:/login_fail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="login/check_owner", method=RequestMethod.POST)
	public String loginCheckOwner(@ModelAttribute("owner") Owners owner, Model model){
		All loginOwner;

		String path = "redirect:/";
		
		loginOwner = ownerService.OwnersLogin(owner);
		
		if(loginOwner != null){
			model.addAttribute("loginOwner", loginOwner);
		}
		else{
			path = "redirect:/login_fail";
		}
		
		return path;	
	}
	
/*	@RequestMapping(value="/login_fail", method=RequestMethod.GET)
	public String loginFail(){
		
		return "login/login_fail";
	}*/
	@RequestMapping(value="/login_success", method=RequestMethod.GET)
	public String go(){
		return "redirect:/";
	}
	
	/*@RequestMapping(value="/login_fail", method=RequestMethod.GET)
	public String ajaxPageCall(){
		return "/login";
	}*/
	
	/*@RequestMapping(value="/login_fail", method=RequestMethod.POST, 
			produces="text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive(@RequestParam String msg){
		logger.trace("흠 이게 되나");
		return "아이디와 비밀번호가 정확하지 않습니다.";
	}*/
	
	@RequestMapping(value="/login_fail", method=RequestMethod.GET)
	public String loginFail(Model model){
		Users user = new Users();
		model.addAttribute("user", user);
		Owners owner = new Owners();
		model.addAttribute("owner", owner);
		
		return "login/login_fail";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(SessionStatus status){
		status.setComplete();
		return "redirect:/";
	}
	
}
