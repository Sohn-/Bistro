package joojoo.controller;

import javax.servlet.http.HttpServletRequest;

import joojoo.entity.Owners;
import joojoo.entity.Users;
import joojoo.service.OwnerService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	@RequestMapping(value="login/login")
	public String showLogin(Model model){
		Users user = new Users();
		model.addAttribute("user", user);
		Owners owner = new Owners();
		model.addAttribute("owner", owner);
		return "login/login";
	}
	
	@RequestMapping(value="login/check_user", method=RequestMethod.POST)
	public String loginCheckUser(@ModelAttribute("user") Users user, Model model){
		Users loginUser;
		String path = "redirect:/main";
		
		logger.error(""+user);
		loginUser = userService.UsersLogin(user);
		
		if(loginUser != null){
			model.addAttribute("loginUser", loginUser);
		}
		else{
			path = "redirect:/login/loginfail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="login/check_owner", method=RequestMethod.POST)
	public String loginCheckOwner(@ModelAttribute("owner") Owners owner, Model model){
		Owners loginOwner;
		String path = "redirect:/main";
		
		loginOwner = ownerService.OwnersLogin(owner);
		
		if(loginOwner != null){
			model.addAttribute("loginOwner", loginOwner);
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
	
	@RequestMapping(value="/login/find")
	public String showFind(Model model){
		Users user = new Users();
		model.addAttribute("user", user);
		Owners owner = new Owners();
		model.addAttribute("owner", owner);
		
		return "login/find";
	}
	
	@RequestMapping(value="/login/findprocess", method=RequestMethod.POST)
	public String findController(@ModelAttribute("user") Users user, @ModelAttribute("owner") Owners owner,
									HttpServletRequest request,  Model model){
		Users findUser;
		Owners findOwner;
		String path = null;
		String command = request.getParameter("command");
		
		if (command.equals("findUserId")) {
			findUser = userService.findId(user);

			if (findUser != null) {
				model.addAttribute("findUserId", findUser.getUserId());
				 path = "redirect:/login/idsuccess";
			} else {
				path = "redirect:/login/idfail";
			}
		}
		else if(command.equals("findUserPassword")){
			findUser = userService.findPassword(user);
			
			if(findUser != null){
				model.addAttribute("findUserPassword", findUser.getUserPassword());
				 path = "redirect:/login/passwordsuccess";
			}
			else{
				path = "redirect:/login/passwordfail";
			}
		}
		else if(command.equals("findOwnerId")){
			findOwner = ownerService.findId(owner);
			
			if(findOwner != null){
				model.addAttribute("findOwnerId", findOwner.getOwnerId());
				 path = "redirect:/login/idsuccess";
			}
			else{
				path = "redirect:/login/idfail";
			}
		}
		else if(command.equals("findOwnerPassword")){
			findOwner = ownerService.findPassword(owner);
			
			if(findOwner != null){
				model.addAttribute("findOwnerPassword", findOwner.getOwnerPassword());
				 path = "redirect:/login/passwordsuccess";
			}
			else{
				path = "redirect:/login/passwordfail";
			}
		}
		
		return path;	
	}
	
/*	@RequestMapping(value="/login/passwordfind_user", method=RequestMethod.POST)
	public String findUserPassword(@ModelAttribute("user") Users user,  Model model){
		Users findUser;
		String path = "redirect:/login/passwordsuccess";
		
		findUser = userService.findPassword(user);
		
		if(findUser != null){
			model.addAttribute("findUserPassword", findUser.getUserPassword());
		}
		else{
			path = "redirect:/login/passwordfail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="/login/idfind_owner", method=RequestMethod.POST)
	public String findOwnerId(@ModelAttribute("owner") Owners owner,  Model model){
		Owners findOwner;
		String path = "redirect:/login/idsuccess";
		
		findOwner = ownerService.findId(owner);
		
		if(findOwner != null){
			model.addAttribute("findOwnerId", findOwner.getOwnerId());
		}
		else{
			path = "redirect:/login/idfail";
		}
		
		return path;	
	}
	
	@RequestMapping(value="/login/passwordfind_owner", method=RequestMethod.POST)
	public String findOwnerPassword(@ModelAttribute("owner") Owners owner,  Model model){
		Owners findOwner;
		String path = "redirect:/login/idsuccess";
		
		findOwner = ownerService.findPassword(owner);
		
		if(findOwner != null){
			model.addAttribute("findOwnerPassword", findOwner.getOwnerPassword());
		}
		else{
			path = "redirect:/login/passwordfail";
		}
		
		return path;	
	}*/
	
	@RequestMapping(value="/login/idfail", method=RequestMethod.GET)
	public String findIdFail(){
		
		return "login/idfail";
	}
	
	@RequestMapping(value="/login/passwordfail", method=RequestMethod.GET)
	public String findPasswordloginFail(){
		
		return "login/passwordfail";
	}
	
	@RequestMapping(value="/login/idsuccess", method=RequestMethod.GET)
	public String findIdSuccess(){
		
		return "login/idsuccess";
	}
	
	@RequestMapping(value="/login/passwordsuccess", method=RequestMethod.GET)
	public String findPasswordSuccess(){
		
		return "login/passwordsuccess";
	}
}
