package kr.or.mc.common.dto;

 public class BoardNoticeDTO {
	private int n_code;
	private String n_title;
	private String n_content;
	private String n_writer;
	private String n_write_date;
	private int n_read_num;
	
	
	public int getN_code() {
		return n_code;
	}
	public void setN_code(int n_code) {
		this.n_code = n_code;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_writer() {
		return n_writer;
	}
	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}
	public String getN_write_date() {
		return n_write_date;
	}
	public void setN_write_date(String n_write_date) {
		this.n_write_date = n_write_date;
	}
	public int getN_read_num() {
		return n_read_num;
	}
	public void setN_read_num(int n_read_num) {
		this.n_read_num = n_read_num;
	}
	@Override
	public String toString() {
		return "BoardNoticeDTO [n_code=" + n_code + ", n_title=" + n_title + ", n_content=" + n_content + ", n_writer="
				+ n_writer + ", n_write_date=" + n_write_date + ", n_read_num=" + n_read_num + "]";
	}
	
}
