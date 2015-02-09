package joojoo.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 새 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Owners implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** owner_id. */
	private String ownerId;

	/** owner_password. */
	private String ownerPassword;

	/** owner_name. */
	private String ownerName;

	/** ownr_mail. */
	private String ownrMail;

	/** owner_phone. */
	private Integer ownerPhone;

	/** license_number. */
	private Integer licenseNumber;

	/** 새 테이블 목록. */
	private Set<Coupon> couponSet;

	/** 새 테이블 목록. */
	private Set<Stores> storesSet;

	/**
	 * 생성자.
	 */
	public Owners() {
		this.couponSet = new HashSet<Coupon>();
		this.storesSet = new HashSet<Stores>();
	}

	/**
	 * owner_id을 설정합니다..
	 * 
	 * @param ownerId
	 *            owner_id
	 */
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	/**
	 * owner_id을 가져옵니다..
	 * 
	 * @return owner_id
	 */
	public String getOwnerId() {
		return this.ownerId;
	}

	/**
	 * owner_password을 설정합니다..
	 * 
	 * @param ownerPassword
	 *            owner_password
	 */
	public void setOwnerPassword(String ownerPassword) {
		this.ownerPassword = ownerPassword;
	}

	/**
	 * owner_password을 가져옵니다..
	 * 
	 * @return owner_password
	 */
	public String getOwnerPassword() {
		return this.ownerPassword;
	}

	/**
	 * owner_name을 설정합니다..
	 * 
	 * @param ownerName
	 *            owner_name
	 */
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	/**
	 * owner_name을 가져옵니다..
	 * 
	 * @return owner_name
	 */
	public String getOwnerName() {
		return this.ownerName;
	}

	/**
	 * ownr_mail을 설정합니다..
	 * 
	 * @param ownrMail
	 *            ownr_mail
	 */
	public void setOwnrMail(String ownrMail) {
		this.ownrMail = ownrMail;
	}

	/**
	 * ownr_mail을 가져옵니다..
	 * 
	 * @return ownr_mail
	 */
	public String getOwnrMail() {
		return this.ownrMail;
	}

	/**
	 * owner_phone을 설정합니다..
	 * 
	 * @param ownerPhone
	 *            owner_phone
	 */
	public void setOwnerPhone(Integer ownerPhone) {
		this.ownerPhone = ownerPhone;
	}

	/**
	 * owner_phone을 가져옵니다..
	 * 
	 * @return owner_phone
	 */
	public Integer getOwnerPhone() {
		return this.ownerPhone;
	}

	/**
	 * license_number을 설정합니다..
	 * 
	 * @param licenseNumber
	 *            license_number
	 */
	public void setLicenseNumber(Integer licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	/**
	 * license_number을 가져옵니다..
	 * 
	 * @return license_number
	 */
	public Integer getLicenseNumber() {
		return this.licenseNumber;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param couponSet
	 *            새 테이블 목록
	 */
	public void setCouponSet(Set<Coupon> couponSet) {
		this.couponSet = couponSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param coupon
	 *            새 테이블
	 */
	public void addCoupon(Coupon coupon) {
		this.couponSet.add(coupon);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<Coupon> getCouponSet() {
		return this.couponSet;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param storesSet
	 *            새 테이블 목록
	 */
	public void setStoresSet(Set<Stores> storesSet) {
		this.storesSet = storesSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param stores
	 *            새 테이블
	 */
	public void addStores(Stores stores) {
		this.storesSet.add(stores);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<Stores> getStoresSet() {
		return this.storesSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ownerId == null) ? 0 : ownerId.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Owners other = (Owners) obj;
		if (ownerId == null) {
			if (other.ownerId != null) {
				return false;
			}
		} else if (!ownerId.equals(other.ownerId)) {
			return false;
		}
		return true;
	}

}
