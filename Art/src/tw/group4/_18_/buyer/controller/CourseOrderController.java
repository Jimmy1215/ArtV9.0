//package tw.group4._18_.buyer.controller;
//
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import tw.group4._18_.buyer.DAO.CourseOrderService;
//import tw.group4._18_.buyer.model.CourseOrders;
//import tw.group4._18_.seller.model.Course;
//import tw.group4.util.IdentityFilter;
//
//@Controller
//public class CourseOrderController {
//	
//	@Autowired
//	private CourseOrderService coService;
//	
//	@RequestMapping(path = "/18/cSelectAllFront.ctrl" ,method = RequestMethod.GET)
//	public String processActionCustomerSelectAll(@ModelAttribute("Update") String update2, Model m) {
//		List<Course> customerSelectAll = coService.customerSelectAll();
//		m.addAttribute("cList", customerSelectAll);
//		return IdentityFilter.loginID+"18/18_CustomerSelectAll";
//	}
//	
//	@RequestMapping(path = "/18/corderList.ctrl" ,method = RequestMethod.GET)
//	public String processActionGetcoOrderById(Model m, @RequestParam(name = "inputId")String userId) {
//		
//		List<CourseOrders> coOrder = coService.coOrder(userId);
//		m.addAttribute("coList", coOrder);
//
//		return IdentityFilter.loginID+"18/18_getcoOrderById";
//	}
//	
//	
//	
//	@RequestMapping(path = "/18/cInsertOrder.ctrl" ,method = RequestMethod.GET)
//	public String processActionInsert(Model m, @RequestParam(name= "inputId")String coUserId, @RequestParam(name= "inputTitle")String coAddrress, @RequestParam(name= "inputPrice")Integer coTotalAmount, @RequestParam(name = "inputDate") Date coDate) {
//		
//		CourseOrders co = new CourseOrders();
//		co.setUserId(coUserId);
//		co.setAddress(coAddrress);
//		co.setTotalAmount(coTotalAmount);
//		co.setDate(coDate);
//		
//		coService.insertOrder(co);
//		m.addAttribute("successLN", "新增訂單成功");
//		return "redirect:/18/cSelectAllFront.ctrl";
//	}
//	
//	@RequestMapping(path="/18/insertOrderData.ctrl")
//	public String processActionInsert2() {
//		return IdentityFilter.loginID+"18/18_InsertOrder";
//		
//	}
//
//}
