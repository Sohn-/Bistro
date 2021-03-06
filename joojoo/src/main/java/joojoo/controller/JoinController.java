package joojoo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import joojoo.entity.All;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;


@Controller
@SessionAttributes({"joinUser","joinOwner","joinStore","loginUser","loginOwner"})

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
   public String showSelectJoinType(HttpSession session,Model model){
	   
	   
	   
	   
	   
	  if(session.getAttribute("loginUser") == null && session.getAttribute("loginOwner")==null ){
		  model.addAttribute("joinStore",new Stores());
		   
		   List<String> regionNames = new ArrayList<String>();
		   
		   regionNames.add("강남");
		   regionNames.add("건대");
		   regionNames.add("신촌");
		   regionNames.add("신림");
		   regionNames.add("이태원");
		   regionNames.add("종로");
		   
		   model.addAttribute("regionNames",regionNames);
		   
		   List<String> typeNames = new ArrayList<String>();
		   typeNames.add("바");
		   typeNames.add("룸");
		   typeNames.add("고깃집");
		   typeNames.add("횟집");
		   typeNames.add("포차");
		   typeNames.add("호프");
		   model.addAttribute("typeNames",typeNames);
		   
		   
		  model.addAttribute("joinUser", new Users());
		  model.addAttribute("joinOwner", new Owners());
		  return "join/join";
	  }
	  else return "redirect:/";//일단 메인으로 가도록..
   }
   
   
   @RequestMapping(value="/join/result/user", method=RequestMethod.POST)
   public String showUserSuccessPage(@ModelAttribute Users joinUser,Model model,
		   							SessionStatus sessionStatus,HttpSession session) {
	   if(userService.addUser(joinUser)>0){
		   LOG.trace("수업 : 회원 가입 성공");
	   }
	   else{
		   LOG.trace("수업 : 회원 가입 실패..");
	   }
	   
	   
	  All joinUser2 = new All();
	  joinUser2.setUserId(joinUser.getUserId());
	  joinUser2.setUserPassword(joinUser.getUserPassword());
	  joinUser2.setUserMail(joinUser.getUserMail());
	  joinUser2.setUserPhone(joinUser.getUserPhone());
	  joinUser2.setUserName(joinUser.getUserName());
	  joinUser2.setChance(joinUser.getChance());
	   LOG.error(""+joinUser2);
	   
	   session.setAttribute("loginUser", joinUser2);
	   //sessionStatus.setComplete();
      return "redirect:/join/user/success";
   
   }
   
   @RequestMapping(value="/join/user/success", method=RequestMethod.GET)
   public String showUserSuccessPage2(){
	  
      return "join/success";
   
   }
   
   
   

   @RequestMapping(value="/join/idCheck", method=RequestMethod.GET)
   public String showIdCheckPage(@RequestParam String joinId, Model model){
	   All result = new All();
	   result = userService.idDuplicateCheck(joinId);
	   model.addAttribute("result",result);
	   model.addAttribute("joinId",joinId);
	   return "join/idConfirm";
	   
   
   }
   
   @RequestMapping(value="/join/mailCheck", method=RequestMethod.GET)
   public String showMailCheckPage(@RequestParam String joinMail, Model model){
	   All result = new All();
	   result = userService.mailDuplicateCheck(joinMail);
	   model.addAttribute("result",result);
	   model.addAttribute("joinMail",joinMail);
	   return "join/mailConfirm";
	   
   
   }
   ///////////////////// 여기서부터는 owner ///////////////////////
   
  
   @RequestMapping(value="/join/join_o2", method=RequestMethod.POST)
   public String showRegistStorePage(@ModelAttribute("joinOwner") Owners joinOwner,Model model){
	   return "redirect:/join/store";
   
   }
   @RequestMapping(value="/join/store", method=RequestMethod.GET)
   public String showRegistStorePageUpdate(Model model){
	  
	   model.addAttribute("joinStore",new Stores());
	   
	   List<String> regionNames = new ArrayList<String>();
	   regionNames.add("홍대");
	   regionNames.add("신촌");
	   regionNames.add("강남");
	   model.addAttribute("regionNames",regionNames);
	   
	   List<String> typeNames = new ArrayList<String>();
	   typeNames.add("바");
	   typeNames.add("고깃집");
	   typeNames.add("룸");
	   model.addAttribute("typeNames",typeNames);
	   
	   
	   return "join/join_o2";
   
   }
   
  
 
  
   @RequestMapping(value="/join/result/owner", method=RequestMethod.POST)
   public String showOwnerSuccessPage(@ModelAttribute("joinStore") Stores joinStore
		   							,HttpSession session,
		   								Model model,SessionStatus sessionStatus){
	   
	   All joinOwner2 = new All();
	   Owners joinOwner =(Owners)session.getAttribute("joinOwner");
	   
	 
	   joinOwner2.setOwnerId(joinOwner.getOwnerId());
	   joinOwner2.setOwnerName(joinOwner.getOwnerName());
	   joinOwner2.setOwnerMail(joinOwner.getOwnerMail());
	   joinOwner2.setOwnerPassword(joinOwner.getOwnerPassword());
	   joinOwner2.setOwnerPhone(joinOwner.getOwnerPhone());
	   joinOwner2.setLicenseNumber(joinOwner.getLicenseNumber());
	   
	   ownerService.addOwner(joinOwner);
	   LOG.trace("수업"+joinOwner);
	   storeService.addStore(joinStore);
	  
	   session.setAttribute("loginOwner", joinOwner2);
	  
	  
      return "redirect:/join/owner/success";
   
   }
   
   @RequestMapping(value="/join/owner/success", method=RequestMethod.GET)
   public String showUserSuccessPage21(){
	  
      return "join/success";
   
   }
   
   @RequestMapping(value="/test", method=RequestMethod.GET)
   public String showRegistStorePage3(){
	   
	
	
	   
	   return "redirect:/test2";
   
   }
   
   @RequestMapping(value="/test2", method=RequestMethod.GET)
   public String showRegistStorePage32(){
	   
	
	
	   
	   return "join/test3";
   
   }
   
   @RequestMapping(value="/join/idCheck2", method=RequestMethod.GET)
   public String showIdCheckPage2(@RequestParam String joinId2, Model model){
	   All result = new All();
	   result = ownerService.idDuplicateCheck(joinId2);
	   model.addAttribute("result",result);
	   model.addAttribute("joinId2",joinId2);
	   return "join/idConfirm2";
   }
   
   @RequestMapping(value="/join/mailCheck2", method=RequestMethod.GET)
   public String showMailCheckPage2(@RequestParam String joinMail2, Model model){
	   All result = new All();
	   result = ownerService.mailDuplicateCheck(joinMail2);
	   model.addAttribute("result",result);
	   model.addAttribute("joinMail2",joinMail2);
	   return "join/mailConfirm2";
	   
   
   }
   
   @RequestMapping(value="/join/licenseCheck", method=RequestMethod.GET)
   public String showLicenseCheckPage(@RequestParam String joinLicense, Model model){
	   All result = new All();
	   result = ownerService.licensenumberDuplicateCheck(joinLicense);
	   model.addAttribute("result",result);
	   model.addAttribute("joinLicense",joinLicense);
	   return "join/licenseConfirm";
	   
   
   }
   
 
   
}
