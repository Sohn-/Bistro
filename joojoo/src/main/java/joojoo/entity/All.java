package joojoo.entity;

import java.util.Date;

public class All {
	
	////////////////////////////Category
	int regionCode;
	int typeCode;
	int personsCode;
	int serviceTypeCode;
	String keyword;

	/////////////////////////////coupon
	private String couponCode;
	private String ownerId;
	private String userId;
	private int commentCode;
	private int couponStatusCode;
	
	///////////////////////////////coupon status
	//private Integer couponStatusCode;
	private String couponStatus;
	
	////////////////////////////eventComment
	//private Integer commentCode;
	private String title;
	private String content;
	private Date regDate;
	private Date startDate;
	private Date endDate;
	private int storeCode;
	//private int personsCode;
	//private int serviceTypeCode;
	private String deleteRequest;
	
	///////////////////////////Owners
	//private String ownerId;
	private String ownerPassword;
	private String ownerName;
	private String ownerMail;
	private String ownerPhone;
	private String licenseNumber;
	
	//////////////////////////Persons
	//private Integer personsCode;
	private String personsLevel;
	
	
	/////////////////////////Region
	//private int regionCode;
	private String regionName;
	
	//////////////////////////RviewComment
	//private Integer commentCode;
	//private String userId;
	//private String title;
	//private String content;
	//private Date regDate;
	private Integer starPoint;
	//private Integer storeCode;
	
	
	///////////////////////////ServiceType
	//private Integer serviceTypeCode;
	private String serviceTypeName;
	
	/////////////////////////////Stores
	//private int storeCode;
	private String storeName;
	private String storeAdress;
	private String storePhone;
	//private String ownerId;
	//private int regionCode;
	//private int typeCode;
	//private int starPoint;
	
	/////////////////////////////StoreType
	//private int typeCode;
	private String typeName;
	
	/////////////////////////////Users
	//private String userId;
	private String userPassword;
	private String userName;
	private String userMail;
	private String userPhone;
	private Integer chance;
	
	/////////////////////////////WishList
	private int wishListCode;
	//private String userId;
	//private int commentCode;

	public int getRegionCode() {
		return regionCode;
	}

	public void setRegionCode(int regionCode) {
		this.regionCode = regionCode;
	}

	public int getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(int typeCode) {
		this.typeCode = typeCode;
	}

	public int getPersonsCode() {
		return personsCode;
	}

	public void setPersonsCode(int personsCode) {
		this.personsCode = personsCode;
	}

	public int getServiceTypeCode() {
		return serviceTypeCode;
	}

	public void setServiceTypeCode(int serviceTypeCode) {
		this.serviceTypeCode = serviceTypeCode;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getCommentCode() {
		return commentCode;
	}

	public void setCommentCode(int commentCode) {
		this.commentCode = commentCode;
	}

	public int getCouponStatusCode() {
		return couponStatusCode;
	}

	public void setCouponStatusCode(int couponStatusCode) {
		this.couponStatusCode = couponStatusCode;
	}

	public String getCouponStatus() {
		return couponStatus;
	}

	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(int storeCode) {
		this.storeCode = storeCode;
	}

	public String getDeleteRequest() {
		return deleteRequest;
	}

	public void setDeleteRequest(String deleteRequest) {
		this.deleteRequest = deleteRequest;
	}

	public String getOwnerPassword() {
		return ownerPassword;
	}

	public void setOwnerPassword(String ownerPassword) {
		this.ownerPassword = ownerPassword;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getOwnerMail() {
		return ownerMail;
	}

	public void setOwnerMail(String ownerMail) {
		this.ownerMail = ownerMail;
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}

	public String getLicenseNumber() {
		return licenseNumber;
	}

	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	public String getPersonsLevel() {
		return personsLevel;
	}

	public void setPersonsLevel(String personsLevel) {
		this.personsLevel = personsLevel;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public Integer getStarPoint() {
		return starPoint;
	}

	public void setStarPoint(Integer starPoint) {
		this.starPoint = starPoint;
	}

	public String getServiceTypeName() {
		return serviceTypeName;
	}

	public void setServiceTypeName(String serviceTypeName) {
		this.serviceTypeName = serviceTypeName;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreAdress() {
		return storeAdress;
	}

	public void setStoreAdress(String storeAdress) {
		this.storeAdress = storeAdress;
	}

	public String getStorePhone() {
		return storePhone;
	}

	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Integer getChance() {
		return chance;
	}

	public void setChance(Integer chance) {
		this.chance = chance;
	}

	public int getWishListCode() {
		return wishListCode;
	}

	public void setWishListCode(int wishListCode) {
		this.wishListCode = wishListCode;
	}

	@Override
	public String toString() {
		return "All [regionCode=" + regionCode + ", typeCode=" + typeCode
				+ ", personsCode=" + personsCode + ", serviceTypeCode="
				+ serviceTypeCode + ", keyword=" + keyword + ", couponCode="
				+ couponCode + ", ownerId=" + ownerId + ", userId=" + userId
				+"\n"+ ", commentCode=" + commentCode + ", couponStatusCode="
				+ couponStatusCode + ", couponStatus=" + couponStatus
				+ ", title=" + title + ", content=" + content + ", regDate="
				+ regDate + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", storeCode=" + storeCode + ", deleteRequest="
				+"\n"+ deleteRequest + ", ownerPassword=" + ownerPassword
				+ ", ownerName=" + ownerName + ", ownerMail=" + ownerMail
				+ ", ownerPhone=" + ownerPhone + ", licenseNumber="
				+ licenseNumber + ", personsLevel=" + personsLevel
				+ ", regionName=" + regionName + ", starPoint=" + starPoint
				+"\n"+ ", serviceTypeName=" + serviceTypeName + ", storeName="
				+ storeName + ", storeAdress=" + storeAdress + ", storePhone="
				+ storePhone + ", typeName=" + typeName + ", userPassword="
				+ userPassword + ", userName=" + userName + ", userMail="
				+"\n"+ userMail + ", userPhone=" + userPhone + ", chance=" + chance
				+ ", wishListCode=" + wishListCode + "]";
	}
	
	

}
