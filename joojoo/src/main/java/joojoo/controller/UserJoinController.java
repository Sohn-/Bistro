/*package joojoo.controller;

import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("users")
public class UserJoinController {
	static final Logger LOG = LoggerFactory
			.getLogger(UserJoinController.class);
	
   @Autowired
   private UserService userService;
   
  
   @RequestMapping(value="/join", method=RequestMethod.GET)
   public String showSelectJoinType(@RequestParam Model model){
      return "join/join";
   
   }
   
   @RequestMapping(value="/join/join_u", method=RequestMethod.GET)
   public String showUserJoinPage(@RequestParam Model model){
      return "join/join_u";
   
   }
   
   
   
   
   @RequestMapping(value="/join/join_u", method=RequestMethod.GET)
   public String showUserJoinPage(){
      return "join/join_u";
   }
}
*/