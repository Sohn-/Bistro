package joojoo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorConroller {
	static final Logger logger = LoggerFactory.getLogger(EventDetailController.class);	
				
		@RequestMapping(value="/error")
		public String showLogin(Model model){
			
			return "error";
		}

}
