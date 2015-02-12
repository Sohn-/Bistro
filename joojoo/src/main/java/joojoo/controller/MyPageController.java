package joojoo.controller;

import java.util.List;

import joojoo.entity.RviewComment;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class MyPageController {
	static final Logger LOG = LoggerFactory
			.getLogger(JoinController.class);
	
		@Autowired
	    private UserService userService;
	   
	    @Autowired
	    private OwnerService ownerService;
	   
	    @Autowired
	    private StoreService storeService;
	    
	    @RequestMapping(value="/info/member", method=RequestMethod.GET)
		public String showRviewCommentList(Model model){
			
			return "info/member";
		}
	
	
}
