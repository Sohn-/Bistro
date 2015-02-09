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
public class CouponStatus implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** coupon_status_code. */
	private Integer couponStatusCode;

	/** coupon_status. */
	private String couponStatus;

	/** 새 테이블 목록. */
	private Set<Coupon> couponSet;

	/**
	 * 생성자.
	 */
	public CouponStatus() {
		this.couponSet = new HashSet<Coupon>();
	}

	/**
	 * coupon_status_code을 설정합니다..
	 * 
	 * @param couponStatusCode
	 *            coupon_status_code
	 */
	public void setCouponStatusCode(Integer couponStatusCode) {
		this.couponStatusCode = couponStatusCode;
	}

	/**
	 * coupon_status_code을 가져옵니다..
	 * 
	 * @return coupon_status_code
	 */
	public Integer getCouponStatusCode() {
		return this.couponStatusCode;
	}

	/**
	 * coupon_status을 설정합니다..
	 * 
	 * @param couponStatus
	 *            coupon_status
	 */
	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}

	/**
	 * coupon_status을 가져옵니다..
	 * 
	 * @return coupon_status
	 */
	public String getCouponStatus() {
		return this.couponStatus;
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
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((couponStatusCode == null) ? 0 : couponStatusCode.hashCode());
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
		CouponStatus other = (CouponStatus) obj;
		if (couponStatusCode == null) {
			if (other.couponStatusCode != null) {
				return false;
			}
		} else if (!couponStatusCode.equals(other.couponStatusCode)) {
			return false;
		}
		return true;
	}

}
