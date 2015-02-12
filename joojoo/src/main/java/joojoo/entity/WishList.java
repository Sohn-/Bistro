package joojoo.entity;


public class WishList{
	private int wishListCode;
	private String userId;
	private int commentCode;
	
	public WishList(){}
	public WishList(int wishListCode, String userId, int commentCode) {
		super();
		this.wishListCode = wishListCode;
		this.userId = userId;
		this.commentCode = commentCode;
	}
	
	public int getWishListCode() {
		return wishListCode;
	}
	public void setWishListCode(int wishListCode) {
		this.wishListCode = wishListCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCommentCode() {
		return commentCode;
	}
	public void setCommentCode(int commentCode) {
		this.commentCode = commentCode;
	}
	@Override
	public String toString() {
		return "WishList [wishListCode=" + wishListCode + ", userId=" + userId
				+ ", commentCode=" + commentCode + "]";
	}
	
	

}
