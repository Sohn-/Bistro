package joojoo.service;

import java.util.Calendar;
import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.dao.EventCommentDao;
import joojoo.entity.All;
import joojoo.entity.Coupon;
import joojoo.test.StoreDaoTest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class CouponServiceImpl implements CouponService {
	static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	@Autowired
	CouponDao dao;

	@Autowired
	EventCommentDao eventDao;

	@Override
	public List<All> getCouponsByUserId(String userId) {
		return dao.getCouponsByUserId(userId);
	}

	@Override
	public List<All> getCouponsByOwnerId(String ownerId) {
		return dao.getCouponsByOwnerId(ownerId);
	}

	@Override
	public int insertCoupon(Coupon coupon) {
		return dao.insertCoupon(coupon);
	}

	@Override
	public int buyCoupon(String userId, int comment_code) {
		List<All> coupons = dao.getCouponsByCommentCode(comment_code);
		All coupon = null;
		for (All coupon2 : coupons) {
			if (coupon2.getUserId() == null) {
				
				coupon2.setUserId(userId);
				
				coupon = coupon2;
				break;
			}
			LOG.trace("수업:" + coupon2);
		}

		return dao.updateCoupon(coupon);
	}

	@Override
	public int refundCoupon(String couponCode) {

		All coupon = dao.getCouponsByCouponCode(couponCode);

		coupon.setCouponStatusCode(2);

		return dao.updateCoupon(coupon);
	}

	@Override
	public int checkCoupon(String couponCode) {
		All coupon = dao.getCouponsByCouponCode(couponCode);
		if (coupon.getCouponCode() == couponCode) {
			coupon.setCouponStatusCode(1);
		}
		return dao.updateCoupon(coupon);
	}

	@Override
	public int timeoverCoupon(String userId) {

		Calendar calendar = Calendar.getInstance();
		java.util.Date date = calendar.getTime();

		List<All> eventComment = eventDao.getAllEventComments();
		List<All> coupon = null;
		int result = 0;

		for (All eventComment2 : eventComment) {
			if (eventComment2.getEndDate().after(date)) {
				coupon = dao.getCouponsByCommentCode(eventComment2
						.getCommentCode());
				for (All coupon2 : coupon) {
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
