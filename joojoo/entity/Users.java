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
public class Users implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** id. */
	private String id;

	/** password. */
	private String password;

	/** name. */
	private String name;

	/** mail. */
	private String mail;

	/** phone. */
	private Integer phone;

	/** chance. */
	private Integer chance;

	/** license_number. */
	private Integer licenseNumber;

	/** 새 테이블. */
	private Grade grade;

	/** 새 테이블 목록. */
	private Set<Stores> storesSet;

	/** 새 테이블 목록. */
	private Set<Coupon> couponSet;

	/** 새 테이블 목록. */
	private Set<WishList> wishListSet;

	/**
	 * 생성자.
	 */
	public Users() {
		this.couponSet = new HashSet<Coupon>();
		this.storesSet = new HashSet<Stores>();
		this.wishListSet = new HashSet<WishList>();
	}

	/**
	 * id을 설정합니다..
	 * 
	 * @param id
	 *            id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * id을 가져옵니다..
	 * 
	 * @return id
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * password을 설정합니다..
	 * 
	 * @param password
	 *            password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * password을 가져옵니다..
	 * 
	 * @return password
	 */
	public String getPassword() {
		return this.password;
	}

	/**
	 * name을 설정합니다..
	 * 
	 * @param name
	 *            name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * name을 가져옵니다..
	 * 
	 * @return name
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * mail을 설정합니다..
	 * 
	 * @param mail
	 *            mail
	 */
	public void setMail(String mail) {
		this.mail = mail;
	}

	/**
	 * mail을 가져옵니다..
	 * 
	 * @return mail
	 */
	public String getMail() {
		return this.mail;
	}

	/**
	 * phone을 설정합니다..
	 * 
	 * @param phone
	 *            phone
	 */
	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	/**
	 * phone을 가져옵니다..
	 * 
	 * @return phone
	 */
	public Integer getPhone() {
		return this.phone;
	}

	/**
	 * chance을 설정합니다..
	 * 
	 * @param chance
	 *            chance
	 */
	public void setChance(Integer chance) {
		this.chance = chance;
	}

	/**
	 * chance을 가져옵니다..
	 * 
	 * @return chance
	 */
	public Integer getChance() {
		return this.chance;
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
	 * 새 테이블을 설정합니다..
	 * 
	 * @param grade
	 *            새 테이블
	 */
	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public Grade getGrade() {
		return this.grade;
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
	 * @param wishListSet
	 *            새 테이블 목록
	 */
	public void setWishListSet(Set<WishList> wishListSet) {
		this.wishListSet = wishListSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param wishList
	 *            새 테이블
	 */
	public void addWishList(WishList wishList) {
		this.wishListSet.add(wishList);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<WishList> getWishListSet() {
		return this.wishListSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		Users other = (Users) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
	}

}
