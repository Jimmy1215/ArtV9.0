package tw.group4._18_.buyer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.group4._18_.buyer.DAO.CourseBeanServiceFront;
import tw.group4._18_.buyer.model.ShoppingCartCo;
import tw.group4._18_.seller.model.Course;

@Controller
public class CourseControllerF {
	
	@RequestMapping(path = "/18/CoSubmit.ctrl", method= RequestMethod.GET)
	public String CoSubmit(Model m, HttpSession session, HttpServletRequest request,
			@RequestParam(name = "cartSize", required = false)Integer cartSize,
			@RequestParam(name = "query", required = false)String query,
			@RequestParam(name = "pageNo", required = false)Integer pageNo,
			@RequestParam(name = "coId")String coId,
			@RequestParam(name = "orderpic")String orderpic,
			@RequestParam(name = "ordertitle")String ordertitle) {
		
		ShoppingCartCo scco = (ShoppingCartCo) session.getAttribute("scco");
		
		if(scco == null) {
			scco = new ShoppingCartCo();
			session.setAttribute("scco", scco);
		}
		
		Course co = new Course();
		
		co.setCoId(coId);
		
	}

}
