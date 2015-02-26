package joojoo.entity;


public class Stores  {
	
	private int storeCode;
	private String storeName;
	private String storeAdress;
	private String storePhone;
	private String ownerId;
	private String regionName;
	private String typeName;
	private int starPoint;

	
	public Stores(){}


	public Stores(int storeCode, String storeName, String storeAdress,
			String storePhone, String ownerId, String regionName,
			String typeName, int starPoint) {
		super();
		this.storeCode = storeCode;
		this.storeName = storeName;
		this.storeAdress = storeAdress;
		this.storePhone = storePhone;
		this.ownerId = ownerId;
		this.regionName = regionName;
		this.typeName = typeName;
		this.starPoint = starPoint;
	}


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


	public String getStorePhone() {
		return storePhone;
	}


	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}


	public String getOwnerId() {
		return ownerId;
	}


	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}


	public String getRegionName() {
		return regionName;
	}


	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}


	public String getTypeName() {
		return typeName;
	}


	public void setTypeName(String typeName) {
		this.typeName = typeName;
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
				+ ", ownerId=" + ownerId + ", regionName=" + regionName
				+ ", typeName=" + typeName + ", starPoint=" + starPoint + "]";
	}	
	
	

	
	
	


	

}
