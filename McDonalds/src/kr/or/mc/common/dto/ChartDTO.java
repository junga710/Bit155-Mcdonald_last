package kr.or.mc.common.dto;

public class ChartDTO {
	private String s_name;
	private int order_count;
	
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public int getOrder_count() {
		return order_count;
	}
	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}
	@Override
	public String toString() {
		return "ChartDTO [s_name=" + s_name + ", order_count=" + order_count + "]";
	}
	
}
