package model;

import java.io.Serializable;

public class Problem implements Serializable{
	private String content ;
	private String answer1 ;
	private String answer2 ;
	private String answer3 ;
	private int choices ;
	private int id;

	
	public Problem() {}
	public Problem(String con, String ans1,String ans2,String ans3, int cho){
		this.content = con;
		this.answer1 = ans1;
		this.answer2 = ans2;
		this.answer3 = ans3;
		this.choices = cho;		
	}
	public Problem(int id,String con, String ans1,String ans2,String ans3, int cho) {
		this(con,ans1,ans2,ans3,cho);
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	public String getContent() {
		return content;
	}
	public String getAnswer1() {
		return answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public int getChoices() {
		return choices;
	}
	
}
