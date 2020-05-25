package kr.or.mc.admin.service.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;

public class OrderDetailService  implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		int order_code = Integer.parseInt(request.getParameter("order_code"));
		
		AdminDAO adminDao = new AdminDAO();
		OrdersDTO ordersDTO = adminDao.OrderDetailAddress(order_code);
		List<OrderDetailDTO> odList = adminDao.OrderDetailProduct(order_code);
		
		System.out.println("odList : " + odList);
		
		request.setAttribute("ordersDTO", ordersDTO);
		request.setAttribute("odList", odList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/OrderDetail.jsp");
	

	return forward;
	}

}
