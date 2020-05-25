package kr.or.mc.common.dto;

public class OrdersDTO {
	private int order_code;
	private String o_id;
	private String s_name;
	private String payment_method;
	private int payment_price;
	private String payment_date;
	
	//회원 테이블
	private String address;
	private String address_detail;

	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getOrder_code() {
		return order_code;
	}
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public int getPayment_price() {
		return payment_price;
	}
	public void setPayment_price(int payment_price) {
		this.payment_price = payment_price;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	
	@Override
	public String toString() {
		return "OrdersDTO [order_code=" + order_code + ", o_id=" + o_id + ", s_name=" + s_name + ", payment_method="
				+ payment_method + ", payment_price=" + payment_price + ", payment_date=" + payment_date + ", address="
				+ address + "]";
	}
	
	

}
