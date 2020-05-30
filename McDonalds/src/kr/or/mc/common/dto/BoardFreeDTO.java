package kr.or.mc.common.dto;

public class BoardFreeDTO {
	private int f_code;
	private String f_title;
	private String f_content;
	private String f_writer;
	private String f_date;
	private int f_readnum;
	private String f_file_upload;
	private int f_refer;
	private int f_depth;
	private int f_step;
	public int getF_code() {
		return f_code;
	}
	public void setF_code(int f_code) {
		this.f_code = f_code;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_writer() {
		return f_writer;
	}
	public void setF_writer(String f_writer) {
		this.f_writer = f_writer;
	}
	public String getF_date() {
		return f_date;
	}
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	public int getF_readnum() {
		return f_readnum;
	}
	public void setF_readnum(int f_readnum) {
		this.f_readnum = f_readnum;
	}
	public String getF_file_upload() {
		return f_file_upload;
	}
	public void setF_file_upload(String f_file_upload) {
		this.f_file_upload = f_file_upload;
	}
	public int getF_refer() {
		return f_refer;
	}
	public void setF_refer(int f_refer) {
		this.f_refer = f_refer;
	}
	public int getF_depth() {
		return f_depth;
	}
	public void setF_depth(int f_depth) {
		this.f_depth = f_depth;
	}
	public int getF_step() {
		return f_step;
	}
	public void setF_step(int f_step) {
		this.f_step = f_step;
	}
	@Override
	public String toString() {
		return "BoardFreeDTO [f_code=" + f_code + ", f_title=" + f_title + ", f_content=" + f_content + ", f_writer="
				+ f_writer + ", f_date=" + f_date + ", f_readnum=" + f_readnum + ", f_file_upload=" + f_file_upload
				+ ", f_refer=" + f_refer + ", f_depth=" + f_depth + ", f_step=" + f_step + "]";
	}
	
	
	
}

