package kr.or.mc.common.dto;

public class ReplyDTO {
	private int r_code;
	private String r_writer;
	private String r_content;
	private String r_write_date;
	private int f_code;
	public int getR_code() {
		return r_code;
	}
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_write_date() {
		return r_write_date;
	}
	public void setR_write_date(String r_write_date) {
		this.r_write_date = r_write_date;
	}
	public int getF_code() {
		return f_code;
	}
	public void setF_code(int f_code) {
		this.f_code = f_code;
	}
	
	@Override
	public String toString() {
		return "ReplyDTO [r_code=" + r_code + ", r_writer=" + r_writer + ", r_content=" + r_content + ", r_write_date="
				+ r_write_date + ", f_code=" + f_code + "]";
	}
	
	
}
