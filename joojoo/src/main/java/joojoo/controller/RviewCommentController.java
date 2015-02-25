package joojoo.controller;

import java.util.Date;
import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Paging;
import joojoo.entity.RviewComment;
import joojoo.service.RviewCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class RviewCommentController {
	
	static final Logger LOG = LoggerFactory
			.getLogger(RviewCommentController.class);
	@Autowired
	RviewCommentService rviewCommentService;
	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String showRviewCommentList(Model model){
		//글 넘겨주기
		List<All> rviews = rviewCommentService.SearchAll();
		
		model.addAttribute("rviews",rviews);
		LOG.error(""+rviews);
		
		int totalCount = rviews.size();
		
		/*Paging paging = new Paging();
        paging.setPageNo(1);
        paging.setPageSize(2);
        paging.setTotalCount(totalCount);*/

		
		return "review/list";
	}
	
	@RequestMapping(value="/review/write", method=RequestMethod.GET)
	public String writeRviewComment(String storeName,int storeCode, Model model){
		LOG.error(storeName);
		LOG.error(""+storeCode);
		model.addAttribute("storeName", storeName);
		model.addAttribute("storeCode", storeCode);
		
		return "review/write";
	}
	
	@RequestMapping(value="/review/written", method=RequestMethod.POST)
	public String writeComplete( 
			Model model,String title, String content, int starPoint, int storeCode, String userId) {
		
		LOG.error(title);
		RviewComment addRviewComment = new RviewComment();
		addRviewComment.setContent(content);
		Date d = new Date();
		addRviewComment.setRegDate(d);
		addRviewComment.setStarPoint(starPoint);
		addRviewComment.setStoreCode(storeCode);
		addRviewComment.setTitle(title);
		addRviewComment.setUserId(userId);
		
		rviewCommentService.registRview(addRviewComment);
		
		
		/*File newfile = new File("c:\\db\\uploaded\\"+file.getOriginalFilename());
		
		try {
			file.transferTo(newfile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("file",file.getOriginalFilename());
		*/
		
		return "redirect:/review";
	}
	
	@RequestMapping(value = "/review", method=RequestMethod.GET,params={"commentCode"})
	public String getDepartmentDetail(@RequestParam int commentCode,Model model){
		LOG.trace(""+commentCode);
	    All rviewComment = rviewCommentService.SearchByCommentCode(commentCode);
	    model.addAttribute("rviewComment",rviewComment);
	      return "review/review";
	 }
	
	@RequestMapping(value = "/review/modify", method=RequestMethod.GET)
	public String goModifyPage(@RequestParam int commentCode,Model model){
		LOG.trace(""+commentCode);
	    All modifyComment = rviewCommentService.SearchByCommentCode(commentCode);
	    model.addAttribute("modifyComment",modifyComment);
	      return "review/modify";
	 }
	
	@RequestMapping(value = "/review/modified", method=RequestMethod.POST)
	public String goModifiedPage(String title, String content, int starPoint
			,String userId, int commentCode,Model model){
		
		
		RviewComment modifiedRviewComment = new RviewComment();
		modifiedRviewComment.setContent(content);
		Date d = new Date();
		modifiedRviewComment.setRegDate(d);
		modifiedRviewComment.setStarPoint(starPoint);
		
		modifiedRviewComment.setTitle(title);
		modifiedRviewComment.setUserId(userId);
		modifiedRviewComment.setCommentCode(commentCode);
		
		rviewCommentService.modifyRview(modifiedRviewComment);
		return "redirect:/review";
	 }
	
	
}
