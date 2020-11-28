package tw.group4._18_.buyer.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "COURSEORDERS")
public class CourseOrders {
	
	@Id @Column(name = "COORDERNO")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int coOrderNo;
	
	@Column(name = "USERID")
	private String userId;
	
	@Column(name = "ADDRESS")
	private String address;
	
	@Column(name = "TOTALAMOUNT")
	private int totalAmount;
	
	@Column(name = "ORDERDATE")
	private Date date;
	
	@OneToMany
	private List<CourseOrderItems> coitems = new ArrayList<>();
	
	public CourseOrders(){
		
	}

	public CourseOrders(int coOrderNo, String userId, String address, int totalAmount,
			Date date, List<CourseOrderItems> coitems) {
		super();
		this.coOrderNo = coOrderNo;
		this.userId = userId;
		this.address = address;
		this.totalAmount = totalAmount;
		this.date = date;
		this.coitems = coitems;
	}
	
	

	public int getcoOrderNo() {
		return coOrderNo;
	}

	public void setcoOrderNo(int coOrderNo) {
		this.coOrderNo = coOrderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public List<CourseOrderItems> getcoItems() {
		return coitems;
	}

	public void setcoItems(List<CourseOrderItems> coitems) {
		this.coitems = coitems;
	}
	
	
	
	

}
