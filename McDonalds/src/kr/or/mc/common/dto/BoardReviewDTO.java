package kr.or.mc.common.dto;

public class BoardReviewDTO {
	private int r_code;
	private String r_title;
	private String r_content;
	private String r_writer;
	private String r_file_upload;
	private int r_grade;
	private String r_store_name;
	public int getR_code() {
		return r_code;
	}
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public String getR_file_upload() {
		return r_file_upload;
	}
	public void setR_file_upload(String r_file_upload) {
		this.r_file_upload = r_file_upload;
	}
	public int getR_grade() {
		return r_grade;
	}
	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}
	public String getR_store_name() {
		return r_store_name;
	}
	public void setR_store_name(String r_store_name) {
		this.r_store_name = r_store_name;
	}
	
	@Override
	public String toString() {
		return "BoardReviewDTO [r_code=" + r_code + ", r_title=" + r_title + ", r_content=" + r_content + ", r_writer="
				+ r_writer + ", r_file_upload=" + r_file_upload + ", r_grade=" + r_grade + ", r_store_name="
				+ r_store_name + "]";
	}
	
}
