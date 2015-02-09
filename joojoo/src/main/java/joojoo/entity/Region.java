package joojoo.entity;



public class Region  {
	
	
	public Region(){}
	public Region(int regionCode, String regionName) {
		super();
		this.regionCode = regionCode;
		this.regionName = regionName;
	}
	private int regionCode;
	private String regionName;
	public int getRegionCode() {
		return regionCode;
	}
	public void setRegionCode(int regionCode) {
		this.regionCode = regionCode;
	}
	public String getRegionName() {
		return regionName;
	}
	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}
	@Override
	public String toString() {
		return "Region [regionCode=" + regionCode + ", regionName="
				+ regionName + "]";
	}
	
	
	

	
}
