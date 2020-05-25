package kr.or.mc.common.dto;

public class MemberDTO {
	private String m_id;
	private String password;
	private String name;
	private String email;
	private String post_code;
	private String address;
	private String address_detail;
	private String phone;

	public String getM_id() {
		return m_id;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPost_code() {
		return post_code;
	}

	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MemberDTO [m_id=" + m_id + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", post_code=" + post_code + ", address=" + address + ", address_detail=" + address_detail
				+ ", phone=" + phone + "]";
	}

	
	
}
