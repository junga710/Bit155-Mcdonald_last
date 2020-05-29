package kr.or.mc.admin.service.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.OrdersDTO;

public class OrderListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		
		AdminDAO adminDao = new AdminDAO();

		List<OrdersDTO> oList = adminDao.OrderList();

		request.setAttribute("oList", oList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/Order.jsp");

		return forward;
		
	}

}