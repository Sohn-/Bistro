package joojoo.entity;


public class Stores  {

	
	public Stores(){}	
	
	public Stores(int storeCode, String storeName, String storeAdress,
			int storePhone, String ownerId, int regionCode, int typeCode,
			int starPoint) {
		super();
		this.storeCode = storeCode;
		this.storeName = storeName;
		this.storeAdress = storeAdress;
		this.storePhone = storePhone;
		this.ownerId = ownerId;
		this.regionCode = regionCode;
		this.typeCode = typeCode;
		this.starPoint = starPoint;
	}


	private int storeCode;
	private String storeName;
	private String storeAdress;
	private int storePhone;
	private String ownerId;
	private int regionCode;
	private int typeCode;
	private int starPoint;
	
	public int getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(int storeCode) {
		this.storeCode = storeCode;
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
	public int getStorePhone() {
		return storePhone;
	}
	public void setStorePhone(int storePhone) {
		this.storePhone = storePhone;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
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
	public int getStarPoint() {
		return starPoint;
	}
	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}
	
	
	@Override
	public String toString() {
		return "Stores [storeCode=" + storeCode + ", storeName=" + storeName
				+ ", storeAdress=" + storeAdress + ", storePhone=" + storePhone
				+ ", ownerId=" + ownerId + ", regionCode=" + regionCode
				+ ", typeCode=" + typeCode + ", starPoint=" + starPoint + "]";
	}
	
	
	


	

}
