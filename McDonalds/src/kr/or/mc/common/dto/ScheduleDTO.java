package kr.or.mc.common.dto;

public class ScheduleDTO {
	private int schedule_code;
	private String title;
	private String description;
	private String begin;
	private String end;
	private String background_color;
	private String text_color;
	private char all_day;
	
	public int getSchedule_code() {
		return schedule_code;
	}
	public void setSchedule_code(int schedule_code) {
		this.schedule_code = schedule_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBegin() {
		return begin;
	}
	public void setBegin(String begin) {
		this.begin = begin;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getBackground_color() {
		return background_color;
	}
	public void setBackground_color(String background_color) {
		this.background_color = background_color;
	}
	public String getText_color() {
		return text_color;
	}
	public void setText_color(String text_color) {
		this.text_color = text_color;
	}
	public char getAll_day() {
		return all_day;
	}
	public void setAll_day(char all_day) {
		this.all_day = all_day;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [schedule_code=" + schedule_code + ", title=" + title + ", description=" + description
				+ ", begin=" + begin + ", end=" + end + ", background_color=" + background_color + ", text_color="
				+ text_color + ", all_day=" + all_day + "]";
	}
	
	

}
