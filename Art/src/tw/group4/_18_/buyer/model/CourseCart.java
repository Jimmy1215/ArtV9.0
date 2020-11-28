package tw.group4._18_.buyer.model;

import java.util.LinkedHashMap;
import java.util.Map;

public class CourseCart {

	public CourseCart() {

	}

//	public Collection<CourseCartItem> getCourseCartItems() {
//		return map.values();
//	}
	
	
	//購物總計
	private double total;

	public double getTotal() {
		return total;
	}

	
	// 購物車屬性
	// 購物項集合:Map<K,V>的Key=商品coId，Value=購物項
	
	// 1. 將購物項目添加到購物車
	private Map<String, CourseCartItem> map = new LinkedHashMap<String, CourseCartItem>();


	public void addCart(String courseID, CourseCartItem courseCartItem) {
		// 顧客未點選購買的商品，顧客的購物車是空的
		if (map.get(courseID) == null) {
			map.put(courseID, courseCartItem);
		} else {
			CourseCartItem courseCartItem1 = map.get(courseID);
			courseCartItem1.setCocnum(courseCartItem1.getCocnum()+courseCartItem.getCocnum());
		}
	}

	
	// 2.將購物項目刪除
	public int deleteCart(String courseID) {

		if (map.get(courseID) != null) {

			map.remove(courseID);
			return 1;
		} else {

			return 0;
		}
	}

	
	// 3.清空購物車
	public void clearCart() {
		map.clear();
		total = 0;
	}

}
