package joojoo.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;

public class GetSessionId {
	private static GetSessionId instance = new GetSessionId();

	private GetSessionId() {
	}

	public static GetSessionId getInstance() {
		return instance;
	}
	
	 public String getSessionId(HttpSession session){
	    	Object loginOwnerObj = session.getAttribute("loginOwner");
	    	Object loginUserObj = session.getAttribute("loginUser");
	    	String result = null;
	    	
	    	if(loginOwnerObj != null){
	    		All loginOwner = (All)loginOwnerObj;
	    		String ownerId = loginOwner.getOwnerId();
	    		result = ownerId;
	    	}
	    	else if(loginUserObj != null){
	    		All loginUser = (All)loginUserObj;
	    		String userId = loginUser.getUserId();
	    		result = userId;
	    	}
	    	return result;
	    }
	 
	 public List<String> getRegionNames(){
		 List<String> regionNames = new ArrayList<String>();
			regionNames.add("강남");
			regionNames.add("건대");
			regionNames.add("신림");
			regionNames.add("신촌");
			regionNames.add("이태원");
			regionNames.add("종로");
			
			/*Map<String, String> regionNames = new HashMap<String, String>();
			regionNames.put("regionName", "강남");
			regionNames.put("regionName", "건대");
			regionNames.put("regionName", "신림");
			regionNames.put("regionName", "신촌");
			regionNames.put("regionName", "이태원");
			regionNames.put("regionName", "종로");*/
			
			return regionNames;
	 }
	 public List<String> getTypeNames(){
		 List<String> typeNames = new ArrayList<String>();
			typeNames.add("바");
			typeNames.add("룸");
			typeNames.add("고깃집");
			typeNames.add("횟집");
			typeNames.add("포차");
			typeNames.add("호프");
			
			/*Map<String, String> typeNames = new HashMap();
			typeNames.put("typeName", "바");
			typeNames.put("typeName", "룸");
			typeNames.put("typeName", "고깃집");
			typeNames.put("typeName", "횟집");
			typeNames.put("typeName", "포차");
			typeNames.put("typeName", "호프");*/
			return typeNames;
	 }
	 public List<String> getServiceTypeNames(){
		 List<String> serviceTypeNames = new ArrayList<String>();
			serviceTypeNames.add("금액 할인");
			serviceTypeNames.add("서비스 메뉴 제공");
			
			/*Map<String, String> serviceTypeNames = new HashMap();
			serviceTypeNames.put("serviceTypeName", "금액 할인");
			serviceTypeNames.put("serviceTypeName", "서비스 메뉴 제공");*/
			
			return serviceTypeNames;
	 }
	 public List<String> getPersonsLevels(){
		 List<String> personsLevels = new ArrayList<String>();
			personsLevels.add("4명이하");
			personsLevels.add("5~10명");
			personsLevels.add("10명이상");
			/*Map<String, String> personsLevels = new HashMap();
			personsLevels.put("personsLevel", "4명이하");
			personsLevels.put("personsLevel", "5~10명");
			personsLevels.put("personsLevel", "10명이상");*/
			
			return personsLevels;
	 }
}
