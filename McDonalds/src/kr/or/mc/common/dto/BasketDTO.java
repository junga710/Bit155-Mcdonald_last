package kr.or.mc.common.dto;

public class BasketDTO {
	private int basket_code;
	private String b_id;
	private int product_code;
	private String s_name;
	private int amount;
	private int total_product_price;

	// 회원 테이블
	private String address;

	// 상품테이블
	private String product_name;
	private String product_kind;
	private String product_image;
	
	
	public String getProduct_kind() {
		return product_kind;
	}

	public void setProduct_kind(String product_kind) {
		this.product_kind = product_kind;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}



	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public int getBasket_code() {
		return basket_code;
	}

	public void setBasket_code(int basket_code) {
		this.basket_code = basket_code;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public int getProduct_code() {
		return product_code;
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getTotal_product_price() {
		return total_product_price;
	}

	public void setTotal_product_price(int total_product_price) {
		this.total_product_price = total_product_price;
	}

	@Override
	public String toString() {
		return "BasketDTO [basket_code=" + basket_code + ", b_id=" + b_id + ", product_code=" + product_code
				+ ", s_name=" + s_name + ", amount=" + amount + ", total_product_price=" + total_product_price
				+ ", address=" + address + ", product_name=" + product_name + ", product_kind=" + product_kind
				+ ", product_image=" + product_image + "]";
	}



}
