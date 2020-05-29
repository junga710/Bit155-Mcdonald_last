package kr.or.mc.user.service.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;

public class BasketDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		// 장바구니에서 제거

		UserDAO userdao = new UserDAO();
		int product_code = Integer.parseInt(request.getParameter("product_code"));
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		int result = userdao.OrderCartDelete(id, product_code);
		
		System.out.println("장바구니 삭제 : " + result);
		 
		 
		 
		return null;

		/*
		 * ActionForward forward = new ActionForward();
		 * forward.setPath("/WEB-INF/user/order/Mcdonald_order3.jsp");
		 * 
		 * return forward;
		 */
	}

}
