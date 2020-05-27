package kr.or.mc.user.service.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.user.dao.UserDAO;

public class OrderCartService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String basketstr = request.getParameter("basket_code");
		UserDAO userdao = new UserDAO();
		int basket_code = Integer.parseInt(basketstr);
		
		HttpSession session = request.getSession();
		//session.removeAttribute("s_name");
		session.setAttribute("basketlist", basket_code);
		
		System.out.println(basket_code);
		List<BasketDTO> basketlist = userdao.OrderCartList(basket_code);
		
		session.setAttribute("basketlist", basketlist);
		System.out.println("basketlist" + basketlist);
		

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order2.jsp");

		return forward;
	}

}
