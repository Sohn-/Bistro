package joojoo.entity;

public class Category {
	String regionName;
	String typeName;
	String personsLevel;
	String serviceTypeName;
	String keyword;
	
	public Category(){}
	public Category(String regionName, String typeName, String personsLevel,
			String serviceTypeName, String keyword) {
		super();
		this.regionName = regionName;
		this.typeName = typeName;
		this.personsLevel = personsLevel;
		this.serviceTypeName = serviceTypeName;
		this.keyword = keyword;
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

	public String getPersonsLevel() {
		return personsLevel;
	}

	public void setPersonsLevel(String personsLevel) {
		this.personsLevel = personsLevel;
	}

	public String getServiceTypeName() {
		return serviceTypeName;
	}

	public void setServiceTypeName(String serviceTypeName) {
		this.serviceTypeName = serviceTypeName;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "Category [regionName=" + regionName + ", typeName=" + typeName
				+ ", personsLevel=" + personsLevel + ", serviceTypeName="
				+ serviceTypeName + ", keyword=" + keyword + "]";
	}

	
	
	
	
	
}
