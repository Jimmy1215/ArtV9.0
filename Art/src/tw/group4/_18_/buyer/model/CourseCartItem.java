package tw.group4._18_.buyer.model;

import tw.group4._18_.seller.model.Course;

public class CourseCartItem {
	private Course course; // 商品訊息
	private String courseID;
	private int cocnum; // 購買數量
	private double total; // 小計
	
	
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public int getCocnum() {
		return cocnum;
	}
	public void setCocnum(int cocnum) {
		this.cocnum = cocnum;
	}
	
	
	
	public String getCourseID() {
		return courseID;
	}
	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}
	public double getTotal() {
		return cocnum * course.getCoPrice();
	}

	



}
