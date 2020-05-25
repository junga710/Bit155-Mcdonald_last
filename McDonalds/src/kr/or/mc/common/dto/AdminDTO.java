package kr.or.mc.common.dto;

public class AdminDTO {
	private String a_id;
	private String password;
	
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "AdminDTO [a_id=" + a_id + ", password=" + password + "]";
	}
}
