package joojoo.controller;

import java.util.List;



import joojoo.entity.All;
import joojoo.entity.RviewComment;
import joojoo.service.RviewCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class RviewCommentController {
	
	static final Logger LOG = LoggerFactory
			.getLogger(JoinController.class);
	@Autowired
	RviewCommentService rviewCommentService;
	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String showRviewCommentList(Model model){
		//글 넘겨주기
		List<All> rviews = rviewCommentService.SearchAll();
		model.addAttribute("rviews",rviews);
		
		
		return "review/list";
	}
	
	@RequestMapping(value="/review/write", method=RequestMethod.GET)
	public String writeRviewComment(){
		
		return "review/write";
	}
	
	@RequestMapping(value="/review/written", method=RequestMethod.GET)
	public String writeComplete(Model model,@RequestParam RviewComment writtenComment){
		
		//rviewCommentService.registRview(writtenComment, store)
		return "review/list";
	}
	
	@RequestMapping(value = "/review", method=RequestMethod.GET,params={"commentCode"})
	public String getDepartmentDetail(@RequestParam int commentCode,Model model){
		LOG.trace(""+commentCode);
	    All rviewComment = rviewCommentService.SearchByCommentCode(commentCode);
	    model.addAttribute("rviewComment",rviewComment);
	      return "review/review";
	 }
	
	
}
