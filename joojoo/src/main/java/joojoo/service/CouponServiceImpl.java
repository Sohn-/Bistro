package joojoo.service;

import java.util.Calendar;
import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.dao.EventCommentDao;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class CouponServiceImpl implements CouponService {

	@Autowired
	CouponDao dao;

	@Autowired
	EventCommentDao eventDao;

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
		Coupon coupon = null;
		for (Coupon coupon2 : coupons) {
			if (coupon2.getUserId() == null) {
				coupon2.setUserId(userId);
				coupon = coupon2;
				break;
			}
		}
		return dao.updateCoupon(coupon);
	}

	@Override
	public int refundCoupon(String userId, String couponCode) {
		List<Coupon> coupons = dao.getCouponsByUserId(userId);
		Coupon coupon = null;

		for (Coupon coupon2 : coupons) {
			if (coupon2.getCouponCode() == couponCode) {
				coupon2.setCouponStatusCode(2);
				coupon = coupon2;
				break;
			}
		}
		return dao.updateCoupon(coupon);
	}

	@Override
	public int checkCoupon(String couponCode) {
		Coupon coupon = dao.getCouponsByCouponCode(couponCode);
		if (coupon.getCouponCode() == couponCode) {
			coupon.setCouponStatusCode(1);
		}
		return dao.updateCoupon(coupon);
	}

	@Override
	public int timeoverCoupon(String userId) {

		Calendar calendar = Calendar.getInstance();
		java.util.Date date = calendar.getTime();

		List<EventComment> eventComment = eventDao.getAllEventComments();
		List<Coupon> coupon = null;
		int result = 0;

		for (EventComment eventComment2 : eventComment) {
			if (eventComment2.getEndDate().after(date)) {
				coupon = dao.getCouponsByCommentCode(eventComment2
						.getCommentCode());
				for (Coupon coupon2 : coupon) {
					if (coupon2.getCouponStatusCode() == 0) {
						coupon2.setCouponStatusCode(3);
						dao.updateCoupon(coupon2);
						result++;
					}

				}

			}

		}
		return result;
	}
}
