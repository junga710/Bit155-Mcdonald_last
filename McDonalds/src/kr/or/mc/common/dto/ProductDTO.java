package kr.or.mc.common.dto;

public class ProductDTO {
	private int product_code;
	private int nutrition_code;
	private String product_category;
	private String product_name;
	private int product_price;
	private String product_kind;
	private String product_image;
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getNutrition_code() {
		return nutrition_code;
	}
	public void setNutrition_code(int nutrition_code) {
		this.nutrition_code = nutrition_code;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_kind() {
		return product_kind;
	}
	public void setProduct_kind(String product_kind) {
		this.product_kind = product_kind;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	@Override
	public String toString() {
		return "ProductDTO [product_code=" + product_code + ", nutrition_code=" + nutrition_code + ", product_category="
				+ product_category + ", product_name=" + product_name + ", product_price=" + product_price
				+ ", product_kind=" + product_kind + ", product_image=" + product_image + "]";
	}
	
	
	

}
