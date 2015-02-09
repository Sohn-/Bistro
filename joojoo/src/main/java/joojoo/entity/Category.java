package joojoo.entity;

public class Category {
	int regionCode;
	int typeCode;
	int personsCode;
	int serviceTypeCode;
	String keyword;
	
	public Category(){}
	
	public Category(int regionCode, int typeCode, int personsCode,
			int serviceTypeCode, String keyword) {
		super();
		this.regionCode = regionCode;
		this.typeCode = typeCode;
		this.personsCode = personsCode;
		this.serviceTypeCode = serviceTypeCode;
		this.keyword = keyword;
	}
	
	public Category(int regionCode, int typeCode, int personsCode,
			int serviceTypeCode) {
		super();
		this.regionCode = regionCode;
		this.typeCode = typeCode;
		this.personsCode = personsCode;
		this.serviceTypeCode = serviceTypeCode;
	}
	
	public Category(String keyword) {
		super();
		this.keyword = keyword;
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

	@Override
	public String toString() {
		return "Category [regionCode=" + regionCode + ", typeCode=" + typeCode
				+ ", personsCode=" + personsCode + ", serviceTypeCode="
				+ serviceTypeCode + ", keyword=" + keyword + "]";
	}


	
	
	
	
}
