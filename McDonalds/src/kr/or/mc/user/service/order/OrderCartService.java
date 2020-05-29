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

		/* String basketstr = request.getParameter("basket_code"); */
		UserDAO userdao = new UserDAO();
		/* int basket_code = Integer.parseInt(basketstr); */

		HttpSession session = request.getSession();
		String b_id = (String) session.getAttribute("id"); // b_id : 사용자 아이디

		int totalOrderSum = 0; // 주문한 상품 총 가격

		List<BasketDTO> basketlist = userdao.OrderCartList(b_id);

		for (BasketDTO basketDto : basketlist) {
			totalOrderSum += basketDto.getTotal_product_price();
		}

		request.setAttribute("basketlist", basketlist);
		request.setAttribute("totalOrderSum", totalOrderSum);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order2.jsp");

		return forward;
	}

}
