package joojoo.controller;

import joojoo.entity.Owners;
import joojoo.entity.Stores;
import joojoo.entity.Users;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
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
import org.springframework.web.bind.support.SessionStatus;


@Controller
@SessionAttributes({"joinUser","joinOwner","joinStore"})

public class JoinController {
	static final Logger LOG = LoggerFactory
			.getLogger(JoinController.class);
	
   @Autowired
   private UserService userService;
   
   @Autowired
   private OwnerService ownerService;
   
   @Autowired
   private StoreService storeService;
  
  
   @RequestMapping(value="/join", method=RequestMethod.GET)
   public String showSelectJoinType(){
      return "join/join";
   
   }
   
   @RequestMapping(value="/join/join_u", method=RequestMethod.GET)
   public String showUserJoinPage(Model model){
	   //Users users = new Users();
	   model.addAttribute("joinUser", new Users());
	   return "join/join_u";
   
   }
   
   @RequestMapping(value="/join/join_o", method=RequestMethod.GET)
   public String showOwnerJoinPage(Model model){
	   //Users users = new Users();
	   model.addAttribute("joinOwner", new Owners());
	   return "join/join_o";
   
   }
   
   @RequestMapping(value="/join/join_o2", method=RequestMethod.POST)
   public String showRegistStorePage(@ModelAttribute Owners joinOwner,Model model){
	   return "redirect:/join/userSuccess";
   
   }
   
   @RequestMapping(value="/join/userSuccess", method=RequestMethod.POST)
   public String showUserSuccessPage(@ModelAttribute Users joinUser,Model model,SessionStatus sessionStatus){
	   userService.addUser(joinUser);
	   sessionStatus.setComplete();
      return "join/success";
   
   }
   
   @RequestMapping(value="/join/ownerSuccess", method=RequestMethod.POST)
   public String showOwnerSuccessPage(@ModelAttribute Owners joinOwner, @ModelAttribute Stores joinStore,
		   								Model model,SessionStatus sessionStatus){
	   ownerService.addOwner(joinOwner);
	   storeService.addStore(joinStore);
	   sessionStatus.setComplete();
      return "join/success";
   
   }
   

}
