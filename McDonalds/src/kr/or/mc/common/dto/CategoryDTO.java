package kr.or.mc.common.dto;

public class CategoryDTO {
	private String product_category;

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	@Override
	public String toString() {
		return "CategoryDTO [product_category=" + product_category + "]";
	}
	
	

}
