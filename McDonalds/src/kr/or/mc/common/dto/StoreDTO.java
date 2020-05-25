package kr.or.mc.common.dto;

public class StoreDTO {
	private String s_name;
	private String a_id;
	private String s_address;
	private String s_phone_number;
	private String s_business_hour;
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_phone_number() {
		return s_phone_number;
	}
	public void setS_phone_number(String s_phone_number) {
		this.s_phone_number = s_phone_number;
	}
	public String getS_business_hour() {
		return s_business_hour;
	}
	public void setS_business_hour(String s_business_hour) {
		this.s_business_hour = s_business_hour;
	}
	@Override
	public String toString() {
		return "StoreDTO [s_name=" + s_name + ", a_id=" + a_id + ", s_address=" + s_address + ", s_phone_number="
				+ s_phone_number + ", s_business_hour=" + s_business_hour + "]";
	}


	
	
}
