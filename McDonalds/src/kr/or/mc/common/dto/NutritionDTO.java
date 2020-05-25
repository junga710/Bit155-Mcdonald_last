package kr.or.mc.common.dto;

public class NutritionDTO {
	private int nutrition_code;
	private int weight;
	private int calorie;
	private int sugar;
	private int protein;
	private int fat;
	private int natrium;
	private int caffeine;
	public int getNutrition_code() {
		return nutrition_code;
	}
	public void setNutrition_code(int nutrition_code) {
		this.nutrition_code = nutrition_code;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getCalorie() {
		return calorie;
	}
	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}
	public int getSugar() {
		return sugar;
	}
	public void setSugar(int sugar) {
		this.sugar = sugar;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	public int getFat() {
		return fat;
	}
	public void setFat(int fat) {
		this.fat = fat;
	}
	public int getNatrium() {
		return natrium;
	}
	public void setNatrium(int natrium) {
		this.natrium = natrium;
	}
	public int getCaffeine() {
		return caffeine;
	}
	public void setCaffeine(int caffeine) {
		this.caffeine = caffeine;
	}
	@Override
	public String toString() {
		return "NutritionDTO [nutrition_code=" + nutrition_code + ", weight=" + weight + ", calorie=" + calorie
				+ ", sugar=" + sugar + ", protein=" + protein + ", fat=" + fat + ", natrium=" + natrium + ", caffeine="
				+ caffeine + "]";
	}
	
	

}
