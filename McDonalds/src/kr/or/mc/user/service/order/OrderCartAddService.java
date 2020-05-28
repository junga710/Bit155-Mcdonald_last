package kr.or.mc.user.service.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.user.dao.UserDAO;

public class OrderCartAddService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		

		
		String basketstr = request.getParameter("basket_code");
		UserDAO userdao = new UserDAO();
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		//상품번호
		String product_code = request.getParameter("");
		
		//String id = (String)session.getAttribute("id"); //지점명 받기..
		
		//수량
		
		//총상품금액?

		

		

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order3.jsp");

		return forward;
	}

}
