package joojoo.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.EventComment;
import joojoo.entity.Owners;
import joojoo.entity.Stores;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;
import joojoo.util.GetSessionId;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class MyPageOwnerController {
	static final Logger logger = LoggerFactory
			.getLogger(MyPageOwnerController.class);
	
		@Autowired
	    private UserService userService;
	   
	    @Autowired
	    private OwnerService ownerService;
	   
	    @Autowired
	    private StoreService storeService;
	    
	    @Autowired
	    private CouponService couponService;
	    
	    @Autowired
	    private EventCommentService eventService;
	    
	    private GetSessionId sd = GetSessionId.getInstance();

	    @RequestMapping(value="/info", method=RequestMethod.GET)
		public String showInfoControl(Model model,HttpSession session, HttpServletRequest req) throws UnsupportedEncodingException{
	    	String path = null;
	    	GetSessionId gs = GetSessionId.getInstance();
	    		    	
	    	Object loginOwnerObj = session.getAttribute("loginOwner");
	    	Object loginUserObj = session.getAttribute("loginUser");
	    	
	    	if(loginOwnerObj != null){
	    		All loginOwner = (All)loginOwnerObj;
	    		String ownerId = loginOwner.getOwnerId();
	    		
	    		///가게등록을 위한 코드
	    		Stores insertStore = new Stores();
	    		insertStore.setOwnerId(ownerId);
	    		model.addAttribute("insertStore", insertStore);
	    		///가게등록을 위한 코드 끝
	    		
	    		///가게조회를 위한 코드
	    		List<All> allStore = storeService.showOwnerStores(ownerId);
	    		int count=1;
	    		for(All store: allStore){
	    			int storeCode = store.getStoreCode();
	    			String storeFilePath="storeImage"+storeCode;
	    			store.setStoreFilePath(storeFilePath);
	    			model.addAttribute("storeImage"+storeCode, storeFilePath);
	    			model.addAttribute("store"+count, store);
	    			count++;
	    		}
	    		logger.error("allStore...."+allStore);
	    		model.addAttribute("allStore",allStore);
	    		model.addAttribute("count", count-1);
	    		
	    		List<String> regionNames = gs.getRegionNames();	
	    		model.addAttribute("regionNames",regionNames);
	    		
	    		List<String> typeNames = gs.getTypeNames();
	    		model.addAttribute("typeNames",typeNames); 
	    		///가게조회를 위한 코드 끝
	    		
	    		///업주정보수정을 위한 코드
	    		All updateOwner = ownerService.getOwnersByOwnerId(ownerId);
	    		model.addAttribute("updateOwner", updateOwner);
	    		///업주정보수정을 위한 코드 끝
	    		
	    		///이벤트등록을 위한 코드
	    		EventComment insertEvent = new EventComment();
	    		model.addAttribute("insertEvent", insertEvent);
	    		List<All> storesbyOwnerId = storeService.showOwnerStores(ownerId);
	    		List<String> storeNames = new ArrayList<String>();
	    		for(int i=0; i<storesbyOwnerId.size(); i++){
	    			storeNames.add(i, storesbyOwnerId.get(i).getStoreName());
	    		}
	    		for(All store: storesbyOwnerId){
	    			int storeCode = store.getStoreCode();
	    			store.setStoreCodeStr(""+storeCode);
	    		}
	    		model.addAttribute("storeNames", storeNames);
	    		///이벤트등록을 위한 코드 끝
	    		
	    		///이벤트글조회를 위한 코드
	    		List<All> allEvent = eventService.SeachMyEvent(ownerId);
	    		count=1;
	    		for(All event: allEvent){
	    			int commentCode = event.getCommentCode();
	    			String eventFilePath="eventImage"+commentCode;
	    			event.setEventFilePath(eventFilePath);
	    			model.addAttribute("eventImage"+commentCode, eventFilePath);
	    			model.addAttribute("event"+count, event);
	    			count++;
	    		}
	    		model.addAttribute("allEvent",allEvent);

	    		List<String> serviceTypeNames = gs.getServiceTypeNames();
	    		model.addAttribute("serviceTypeNames",serviceTypeNames);	
	    		
	    		List<String> personsLevels = gs.getPersonsLevels();		
	    		model.addAttribute("personsLevels",personsLevels);	
	    		///이벤트글조회를 위한 코드 끝
	    		
	    		///쿠폰조회를 위한 코드
	    		/*couponService.timeoverCoupon(); //시간 지난 쿠폰을 변경
*/	    		List<All> allCoupon = couponService.getCouponsByOwnerId(ownerId);
	    		logger.error("쿠폰조회결과는.."+allCoupon);
	    		count=1;
	    		SimpleDateFormat sdf = new SimpleDateFormat("20yy년 MM월 dd일 HH시 mm분");
	    		for(All coupon: allCoupon){
	    			String startDateStr = sdf.format(coupon.getStartDate());
	    			String endDateStr = sdf.format(coupon.getEndDate());
	    			coupon.setStartDateStr(startDateStr);
	    			coupon.setEndDateStr(endDateStr);

	    			model.addAttribute("coupon"+count, coupon);
	    			count++;
	    		}
		    	model.addAttribute("allCoupon",allCoupon);
	    		///쿠폰조회를 위한 코드 끝
		    	
		    	//현재시간이 최소시간, 최대시간은 현재로부터 30일이후까지
		    	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		    	int convert = 24*60*60*1000;
		    	Date after30 = new Date();
		    	Date date = new Date();
		    	Date endDateMin = new Date();
		    	Calendar cal = Calendar.getInstance();
		    	cal.setTime(after30);
		    	cal.add(Calendar.MONTH, 1);//현재 시간을 1달 후로 변환
		    	
		    	String minTime = sdf2.format(date);
		    	String maxTime = sdf2.format(cal.getTime());
		    	
		    	cal.add(Calendar.HOUR, 1);
		    	endDateMin = cal.getTime();
		    	String endDateMinTime = sdf2.format(cal.getTime());
		    	
		    	cal.setTime(endDateMin);
		    	cal.add(Calendar.HOUR, 24);
		    	String endDateMaxTime = sdf2.format(cal.getTime());
		    	
		    	model.addAttribute("minTime", minTime);
		    	model.addAttribute("maxTime", maxTime);
		    	model.addAttribute("endDateMinTime", endDateMinTime);
		    	model.addAttribute("endDateMaxTime", endDateMaxTime);
		    	logger.error("maxTime= "+maxTime);
	    		
		    	path = "info/owner";
	    	}


	    	else if(loginUserObj != null){
	    		/*All loginUser = (All)loginUserObj;
	    		String userId = loginUser.getUserId();*/
	    		path ="redirect:/info/user";

	    	}
	    	
	    	else{	//로그인이 안된경우는 JSP에서 처리..
	    		model.addAttribute("needLogin", true);
	    		path="redirect:/login";
	    		
	    	}
	    	
			return path;
			
		}
   
	    @RequestMapping(value="/info/update_owner", method=RequestMethod.POST)
		public String updateOwner(@ModelAttribute Owners updateOwner, Model model){
	    	logger.error("updateOwner 정보.."+updateOwner);
	    	int result = ownerService.updateOwnerInfo(updateOwner);
	    	if(result >0){
	    		model.addAttribute("updateOwner", true);
	    	}
	    	else{
	    		model.addAttribute("updateOwner", false);
	    	}
	    	logger.error("업데이트 오너 종료");
			return "redirect:/info#tab2";
		}
	    
	    @RequestMapping(value="/info/delete_owner", method=RequestMethod.POST)
		public String updateOwner(Model model, HttpSession session, SessionStatus status){
	    	int result = ownerService.outOwner(sd.getSessionId(session));
	    	if(result >0){
	    		model.addAttribute("deleteOwner", true);
	    		status.setComplete();
	    	}
	    	else{
	    		model.addAttribute("deleteOwner", false);
	    	}
	    	logger.error("딜리트 오너 종료");
			return "redirect:/";
		}
	    
	    @RequestMapping(value="/info/insert_event", method=RequestMethod.POST)
		public String insertEvent(@ModelAttribute EventComment insertEvent, Model model, @RequestParam("uploadEventFile") MultipartFile file,  HttpSession session,int couponCount) throws ParseException, IllegalStateException, IOException{
	    	logger.error("insertEvent 정보.."+insertEvent);
	    	//getCommentCodeByOthers
	    	
	    	String storeCodeStr = insertEvent.getStoreCodeStr();
	    	//가게이름으로 해당 코드 찾아서 insertEvent에 셋하기
	    	All ownerStore = new All();
	    	ownerStore.setOwnerId(sd.getSessionId(session));
	    	ownerStore.setStoreName(insertEvent.getStoreCodeStr());
	    	//ownerStore.setStoreAdress(insertEvent.gets
	    	int storeCode = Integer.parseInt(storeService.showOwnerStore(ownerStore)); //어떤 오너의 가게이름에 해당하는 코드를 가져옴
	    	logger.error("storeCode가 이걸로 변환되었음 : "+storeCode);
	    	insertEvent.setStoreCode(storeCode);
	    	//2015-02-23T22:00
	    	logger.error("startDateStr은...."+insertEvent.getStartDateStr());
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
	    	insertEvent.setStartDate(sdf.parse(insertEvent.getStartDateStr()));
	    	insertEvent.setEndDate(sdf.parse(insertEvent.getEndDateStr()));
	    	

	    	int result = eventService.registEvent(insertEvent);
	    	
	    	int commentCode = 0;
	    	if(result >0){
	    		model.addAttribute("insertEvent", true);
	    		commentCode = eventService.getCommentCode(insertEvent);
	    		couponService.publishCoupons(couponCount, commentCode);
	    	}
	    	else{
	    		model.addAttribute("insertEvent", false);
	    	}
	    	
	    	String fileName = "eventImage"+commentCode+".jpg";
			logger.error("c:\\db\\upload\\"+fileName);
			file.transferTo(new File("c:\\db\\uploaded\\"+fileName));
			model.addAttribute("fileName", fileName);
	    	
	    	logger.error("인서트 이벤트 종료");
			return "redirect:/info#tab3";
		}
	    
	    /*@RequestMapping(value="/info/update_event", method=RequestMethod.POST)
		public String updateEvent(@RequestParam("eventFile") MultipartFile file, @ModelAttribute("event1") All updateEvent, Model model) throws IllegalStateException, IOException{
	    	logger.error("updateEvent 정보.."+updateEvent);
	    	
	    	SimpleDateFormat sdf = new SimpleDateFormat("20yy년 MM월 dd일 HH시 mm분");
	    	
			Date startDate = new Date();
			Date endDate = new Date();
			try {
				startDate = sdf.parse(updateEvent.getStartDateStr());
				endDate = sdf.parse(updateEvent.getEndDateStr());
				logger.error("startDate = "+startDate);
				updateEvent.setStartDate(startDate);
				updateEvent.setEndDate(endDate);
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String storeName = updateEvent.getStoreCodeStr();
			updateEvent.setStoreName(storeName);
			logger.error("storeName="+storeName);
			
			logger.error("업데이트 전 updateEvent"+updateEvent);
	    	int result = eventService.modifyEvent(updateEvent);
	    	if(result >0){
	    		model.addAttribute("updateEvent", true);
	    	}
	    	else{
	    		model.addAttribute("updateEvent", false);
	    	}
	    	int commentCode = updateEvent.getCommentCode();
	    	String fileName = "storeImage"+commentCode+".jpg";
	    	
	    	if(file != null){
			file.transferTo(new File("c:\\db\\uploaded\\"+fileName));
			model.addAttribute("fileName", fileName);
	    	}
	    	
	    	logger.error("업데이트 이벤트 종료");

			return "redirect:/info#tab3";
		}*/
	    
	    @RequestMapping(value="/info/update_event", method=RequestMethod.POST)
		public String updateEvent(@ModelAttribute("event1") All updateEvent, Model model){
	    	logger.error("updateEvent 정보.."+updateEvent);
	    	
	    	SimpleDateFormat sdf = new SimpleDateFormat("20yy년 MM월 dd일 HH시 mm분");
	    	
			Date startDate = new Date();
			Date endDate = new Date();
			try {
				startDate = sdf.parse(updateEvent.getStartDateStr());
				endDate = sdf.parse(updateEvent.getEndDateStr());
				logger.error("startDate = "+startDate);
				updateEvent.setStartDate(startDate);
				updateEvent.setEndDate(endDate);
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String storeName = updateEvent.getStoreCodeStr();
			updateEvent.setStoreName(storeName);
			logger.error("storeName="+storeName);
			
			logger.error("업데이트 전 updateEvent"+updateEvent);
	    	int result = eventService.modifyEvent(updateEvent);
	    	if(result >0){
	    		model.addAttribute("updateEvent", true);
	    	}
	    	else{
	    		model.addAttribute("updateEvent", false);
	    	}
	    	logger.error("업데이트 이벤트 종료");

			return "redirect:/info#tab3";
		}
	    
	    @RequestMapping(value="/info/insert_store", method=RequestMethod.POST)
		public String insertStore(@ModelAttribute Stores insertStore, Model model, @RequestParam("uploadStoreFile") MultipartFile file, HttpSession session) throws ParseException, IllegalStateException, IOException{
	    	logger.error("insertEvent 정보.."+insertStore);
	    	int result = storeService.addStore(insertStore);
	    	All ownerStore = new All();
	    	ownerStore.setOwnerId(sd.getSessionId(session));
	    	ownerStore.setStoreName(insertStore.getStoreName());
	    	int storeCode = Integer.parseInt(storeService.showOwnerStore(ownerStore));
	    	
	    	if(result >0){
	    		model.addAttribute("insertStore", true);
	    	}
	    	else{
	    		model.addAttribute("insertStore", false);
	    	}
	    	
	    	String fileName = "storeImage"+storeCode+".jpg";
			logger.error("c:\\db\\upload\\"+fileName);
			file.transferTo(new File("c:\\db\\uploaded\\"+fileName));
			model.addAttribute("fileName", fileName);
	
	    	logger.error("인서트 이벤트 종료");
			return "redirect:/info#tab1";
		}
	    /*@RequestMapping(value="/info/update_store", method=RequestMethod.POST)
		public String updateStore(@ModelAttribute("store1") All updateStore, @RequestParam("storeFile") MultipartFile file, Model model) throws IllegalStateException, IOException{
	    	logger.error("updateStore 정보.."+updateStore);
	    	
	    	
	    	int result = storeService.updateStore(updateStore);
	    	if(result >0){
	    		model.addAttribute("updateStore", true);
	    	}
	    	else{
	    		model.addAttribute("updateStore", false);
	    	}
	    	int storeCode = updateStore.getStoreCode();
	    	String fileName = "storeImage"+storeCode+".jpg";
	    	String filePath = "c:\\db\\uploaded\\"+"storeImage"+storeCode+".jpg";
	    	updateStore.setStoreFile(file, filePath);
	    	if(file != null){
	    		file.
	    		file.transferTo(new File(filePath));
	    		model.addAttribute("fileName", fileName);
	    	}
			
	    	logger.error("업데이트 스토어 종료");
			return "redirect:/info#tab1";
		}*/
	    
	    @RequestMapping(value="/info/update_store", method=RequestMethod.POST)
		public String updateStore(@ModelAttribute("store1") All updateStore, Model model){
	    	logger.error("updateStore 정보.."+updateStore);
	    	
	    	
	    	int result = storeService.updateStore(updateStore);
	    	if(result >0){
	    		model.addAttribute("updateStore", true);
	    	}
	    	else{
	    		model.addAttribute("updateStore", false);
	    	}
	    	logger.error("업데이트 스토어 종료");
			return "redirect:/info#tab1";
		}
	    
	    @RequestMapping(value="/info/delete_store", method=RequestMethod.POST)
		public String updateStore(Model model, @RequestParam("storeCode") String storeCodeStr){
	    	logger.error("storeCodeStr 정보.."+storeCodeStr);
	    	String str[] = storeCodeStr.split(",");
	    	storeCodeStr = str[0];
	    	int storeCode = Integer.parseInt(storeCodeStr);
	    	
	    	int result = storeService.deleteStore(storeCode);
	    	if(result >0){
	    		model.addAttribute("deleteStore", true);
	    	}
	    	else{
	    		model.addAttribute("deleteStore", false);
	    	}
	    	logger.error("딜리트 스토어 종료");
	    	
			return "redirect:/info#tab1";
		}
	    
	    @RequestMapping(value="/info/use_coupon", method=RequestMethod.POST)
		public String useCoupon(@RequestParam String couponCode, Model model){
	    	logger.error("couponCode 정보.."+couponCode);
	    	String couponStatus = "사용";
	    	
	    	All coupon = couponService.getCouponByCouponCode(couponCode);
	    	coupon.setCouponStatus(couponStatus);
	    	int result = couponService.useCoupon(coupon);//쿠폰상태를 사용으로 변경
	    	if(result >0){
	    		model.addAttribute("useCoupon", true);
	    	}
	    	else{
	    		model.addAttribute("useCoupon", false);
	    	}
	    	logger.error("유즈 쿠폰 종료");
			return "redirect:/info#tab4";
		}   
	    
	    
	    @RequestMapping(value="/info/storeNameCheck", method=RequestMethod.GET)
	    public String showStoreNameCheckPage(@RequestParam String storeName, @RequestParam("storeCode") String storeCodeStr, Model model, HttpSession session, HttpServletRequest req){
	 	   String result = null;
	 	   All ownerStore = new All();
	 	  boolean change = false;
	 	   //result = userService.mailDuplicateCheck(storeName);
	 	   ownerStore.setStoreName(storeName);
	 	   logger.error("storename....."+storeName);
	 	   ownerStore.setOwnerId(sd.getSessionId(session));
	 	   result = storeService.showOwnerStore(ownerStore);
	 	   
	 	   int storeCode = Integer.parseInt(storeCodeStr);
	 	   All store = storeService.showStoresByStoreCode(storeCode);
	 	   if(store.getStoreName().equals(storeName)){
	 		   change = false;
	 	   }
	 	   else{
	 		   change = true;
	 	   }
	 	   
	 	   if(change == false){
	 		  model.addAttribute("storeNameResult", "");
	 		  model.addAttribute("change", false);
	 	   }
	 	   else{
	 		  model.addAttribute("storeNameResult", result);
	 		  model.addAttribute("change", true);
	 	   }
	 	  logger.error("change는........."+change);

	 	  model.addAttribute("storeName", storeName);
	 	  model.addAttribute("storeCode", storeCodeStr);
	 	  
	 	   
	 	   return "info/storeNameConfirm";
	 	   
	    }
	    
	    @RequestMapping(value="/info/insertStoreNameCheck", method=RequestMethod.GET)
	    public String showInsertStoreNameCheckPage(@RequestParam String insertStoreName, Model model, HttpSession session, HttpServletRequest req){
	 	   String result = null;
	 	   All ownerStore = new All();
	 	  boolean change = false;
	 	   //result = userService.mailDuplicateCheck(storeName);
	 	   ownerStore.setStoreName(insertStoreName);
	 	   logger.error("insertStoreName....."+insertStoreName);
	 	   ownerStore.setOwnerId(sd.getSessionId(session));
	 	   result = storeService.showOwnerStore(ownerStore);
	 	   
	 	   model.addAttribute("result", result);
	 
	 	   model.addAttribute("insertStoreName", insertStoreName);

	 	   return "info/insertStoreNameConfirm";
	 	   
	    
	    }
	    
}
