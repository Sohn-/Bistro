package joojoo.controller;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"findUserId","findUserPassword","findOwnerId","findOwnerPassword"})
public class FindController {
	static final Logger logger = LoggerFactory
			.getLogger(FindController.class);
	@Autowired
	UserService userService;
	@Autowired
	OwnerService ownerService;
	
	@RequestMapping(value="/find")
	public String showFind(Model model){
		Users user = new Users();
		model.addAttribute("user", user);
		Owners owner = new Owners();
		model.addAttribute("owner", owner);
		
		return "login/find";
	}
	
	@RequestMapping(value="/findform", method=RequestMethod.GET)
	public String findForm(@RequestParam("who") String who, Model model){
		String path = "login/find_u";
		if (who.equals("user")) {
			Users user = new Users();
			model.addAttribute("user", user);
		} else if (who.equals("owner")) {
			Owners owner = new Owners();
			model.addAttribute("owner", owner);
			path = "login/find_o";
		}

		return path;
	}
	
	
	@RequestMapping(value="/findprocess", method=RequestMethod.POST)
	public String findController(@ModelAttribute("user") Users user, @ModelAttribute("owner") Owners owner,
									HttpServletRequest request,  Model model){
		All findUser;
		All findOwner;
		String path = null;
		String command = request.getParameter("command");
		if(command == null){
			logger.error("command NULL");
		}
		
		if (command.equals("findUserId")) {
			findUser = userService.findId(user);

			if (findUser != null) {
				model.addAttribute("findUserId", findUser.getUserId());
				 path = "forward:/id_success";
			} else {
				path = "redirect:/id_fail";
			}
		}
		else if(command.equals("findUserPassword")){
			findUser = userService.findPassword(user);
			
			if(findUser != null){
				model.addAttribute("findUserPassword", findUser.getUserPassword());
				 path = "forward:/password_success";
			}
			else{
				path = "redirect:/password_fail";
			}
		}
		else if(command.equals("findOwnerId")){
			findOwner = ownerService.findId(owner);
			
			if(findOwner != null){
				model.addAttribute("findOwnerId", findOwner.getOwnerId());
				 path = "forward:/id_success";
			}
			else{
				path = "redirect:/id_fail";
			}
		}
		else if(command.equals("findOwnerPassword")){
			findOwner = ownerService.findPassword(owner);
			
			if(findOwner != null){
				model.addAttribute("findOwnerPassword", findOwner.getOwnerPassword());
				 path = "forward:/password_success";
			}
			else{
				path = "redirect:/password_fail";
			}
		}
		else{
			logger.error("그런 command가 없습니다.");
		}
		
		return path;	
	}
	
	
	@RequestMapping(value="/id_fail", method=RequestMethod.GET)
	public String findIdFail(){
		
		return "login/id_fail";
	}
	
	@RequestMapping(value="/password_fail", method=RequestMethod.GET)
	public String findPasswordloginFail(){
		
		return "login/password_fail";
	}
	
	@RequestMapping(value="/id_success", method=RequestMethod.POST)
	public String findIdSuccess(Model model){

		return "login/id_success";
	}
	
	@RequestMapping(value="/password_success", method=RequestMethod.POST)
	public String findPasswordSuccess(){
		
		return "login/password_success";
	}
}
