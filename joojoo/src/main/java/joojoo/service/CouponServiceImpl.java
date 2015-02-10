package joojoo.service;

import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.entity.Coupon;
import joojoo.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class CouponServiceImpl implements CouponService {

	@Autowired
	CouponDao dao;

	@Override
	public List<Coupon> getCouponsByUserId(String userId) {
		return dao.getCouponsByUserId(userId);
	}

	@Override
	public List<Coupon> getCouponsByOwnerId(String ownerId) {
		return dao.getCouponsByOwnerId(ownerId);
	}

	@Override
	public int insertCoupon(Coupon coupon) {
		return dao.insertCoupon(coupon);
	}

	@Override
	public int buyCoupon(String userId, int comment_code) {
		List<Coupon> coupons = dao.getCouponsByCommentCode(comment_code);

		for (Coupon coupon : coupons) {
			if (coupon.getUserId() == null) {
				coupon.setUserId(userId);
			}
			break;
		}
		return dao.updateCoupon();
	}

	@Override
	public int refundCoupon(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int useCoupon(String ownerId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int timeoverCoupon(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
