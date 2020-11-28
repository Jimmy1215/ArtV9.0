package tw.group4._18_.buyer.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class CourseOrderItems {
	
	@Id @Column(name = "COORDERID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int coOrderId;
	
	@Transient
	private int coOrderNo;
	
	@Column(name = "COURSETITLECO")
	private String courseTitle;
	
	@Column(name = "COURSENUMCO")
	private int courseNum;
	
	@Column(name = "COURSEPRICECO")
	private String coursePrice;
	
	@ManyToOne
	@JoinColumn(name = "COORDERNO")
	private CourseOrderItems courseOrderItems;
	
	
	public CourseOrderItems() {
		
	}


	public CourseOrderItems(int coOrderId, int coOrderNo, String courseTitle, int courseNum, String coursePrice,
			CourseOrderItems courseOrderItems) {
		super();
		this.coOrderId = coOrderId;
		this.coOrderNo = coOrderNo;
		this.courseTitle = courseTitle;
		this.courseNum = courseNum;
		this.coursePrice = coursePrice;
		this.courseOrderItems = courseOrderItems;
	}


	public int getCoOrderId() {
		return coOrderId;
	}


	public void setCoOrderId(int coOrderId) {
		this.coOrderId = coOrderId;
	}


	public int getCoOrderNo() {
		return coOrderNo;
	}


	public void setCoOrderNo(int coOrderNo) {
		this.coOrderNo = coOrderNo;
	}


	public String getCourseTitle() {
		return courseTitle;
	}


	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}


	public int getCourseNum() {
		return courseNum;
	}


	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}


	public String getCoursePrice() {
		return coursePrice;
	}


	public void setCoursePrice(String coursePrice) {
		this.coursePrice = coursePrice;
	}


	public CourseOrderItems getCourseOrderItems() {
		return courseOrderItems;
	}


	public void setCourseOrderItems(CourseOrderItems courseOrderItems) {
		this.courseOrderItems = courseOrderItems;
	}
	
	
	
	

}
