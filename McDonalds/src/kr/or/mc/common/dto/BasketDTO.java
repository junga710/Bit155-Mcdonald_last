package kr.or.mc.common.dto;

public class BasketDTO {
	private int basket_code;
	private String b_id;
	private int product_code;
	private String s_name;
	private int amount;
	private int total_product_price;
	private String store_name;
	
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
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	@Override
	public String toString() {
		return "BasketDTO [basket_code=" + basket_code + ", b_id=" + b_id + ", product_code=" + product_code
				+ ", s_name=" + s_name + ", amount=" + amount + ", total_product_price=" + total_product_price
				+ ", store_name=" + store_name + "]";
	}
	
	

}
