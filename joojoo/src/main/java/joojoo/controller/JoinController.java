package joojoo.controller;

import javax.servlet.http.HttpSession;



import joojoo.entity.Owners;
import joojoo.entity.Stores;
import joojoo.entity.Users;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.junit.runner.Request;
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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.method.annotation.SessionAttributesHandler;


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
   
   @RequestMapping(value="/join/user", method=RequestMethod.GET)
   public String showUserJoinPage(Model model){
	   //Users users = new Users();
	   model.addAttribute("joinUser", new Users());
	   return "join/join_u";
   
   }
   
   @RequestMapping(value="/join/result/user", method=RequestMethod.POST)
   public String showUserSuccessPage(@ModelAttribute Users joinUser,Model model,SessionStatus sessionStatus){
	   if(userService.addUser(joinUser)>0){
		   LOG.trace("수업 : 회원 가입 성공");
	   }
	   else{
		   LOG.trace("수업 : 회원 가입 실패..");
	   }
	   sessionStatus.setComplete();
      return "join/success";
   
   }
   

   @RequestMapping(value="/join/idCheck", method=RequestMethod.GET)
   public String showIdCheckPage(@RequestParam String joinId, Model model){
	   Users result = new Users();
	   result = userService.idDuplicateCheck(joinId);
	   model.addAttribute("result",result);
	   model.addAttribute("joinId",joinId);
	   return "join/idConfirm";
	   
   
   }
   
   @RequestMapping(value="/join/mailCheck", method=RequestMethod.GET)
   public String showMailCheckPage(@RequestParam String joinMail, Model model){
	   Users result = new Users();
	   result = userService.mailDuplicateCheck(joinMail);
	   model.addAttribute("result",result);
	   model.addAttribute("joinMail",joinMail);
	   return "join/mailConfirm";
	   
   
   }
   ///////////////////// 여기서부터는 owner ///////////////////////
   
   @RequestMapping(value="/join/owner", method=RequestMethod.GET)
   public String showOwnerJoinPage(Model model){
	   model.addAttribute("joinOwner", new Owners());
	   return "join/join_o";
   
   }
   
   @RequestMapping(value="/join/join_o2", method=RequestMethod.POST)
   public String showRegistStorePage(@ModelAttribute("joinOwner") Owners joinOwner,Model model){
	   return "redirect:/join/result/owner";
   
   }
   @RequestMapping(value="/join/result/owner", method=RequestMethod.GET)
   public String showRegistStorePageUpdate(Model model){
	   model.addAttribute("joinStore",new Stores());
	   return "/join/join_o2";
   
   }
  
   
   @RequestMapping(value="/join/result/owner", method=RequestMethod.POST)
   public String showOwnerSuccessPage(@ModelAttribute("joinStore") Stores joinStore
		   							,HttpSession session,
		   								Model model,SessionStatus sessionStatus){
	   
	   Owners owner = new Owners();
	   owner =(Owners)session.getAttribute("joinOwner");
	   
	   ownerService.addOwner(owner);
	   LOG.trace("수업"+owner);
	   storeService.addStore(joinStore);
	   sessionStatus.setComplete();
      return "join/success";
   
   }
   
   @RequestMapping(value="/join/idCheck2", method=RequestMethod.GET)
   public String showIdCheckPage2(@RequestParam String joinId2, Model model){
	   Owners result = new Owners();
	   result = ownerService.idDuplicateCheck(joinId2);
	   model.addAttribute("result",result);
	   model.addAttribute("joinId2",joinId2);
	   return "join/idConfirm2";
   }
   
   @RequestMapping(value="/join/mailCheck2", method=RequestMethod.GET)
   public String showMailCheckPage2(@RequestParam String joinMail2, Model model){
	   Owners result = new Owners();
	   result = ownerService.mailDuplicateCheck(joinMail2);
	   model.addAttribute("result",result);
	   model.addAttribute("joinMail2",joinMail2);
	   return "join/mailConfirm2";
	   
   
   }
   
   @RequestMapping(value="/join/licenseCheck", method=RequestMethod.GET)
   public String showLicenseCheckPage(@RequestParam String joinLicense, Model model){
	   Owners result = new Owners();
	   result = ownerService.licensenumberDuplicateCheck(joinLicense);
	   model.addAttribute("result",result);
	   model.addAttribute("joinLicense",joinLicense);
	   return "join/licenseConfirm";
	   
   
   }
   
   
}
