package kr.or.mc.user.service.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.user.dao.UserDAO;

public class OrderSuccessService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 장바구니에서 추출 후 비우기 -> 주문, 주문상세 테이블에 삽입
		UserDAO userDao = new UserDAO();
		OrdersDTO ordersDto = new OrdersDTO();

		String payment_method = request.getParameter("payment_method");

		int payment_price = Integer.parseInt(request.getParameter("payment_price"));

		HttpSession session = request.getSession();
		String o_id = (String) session.getAttribute("id"); // b_id : 사용자 아이디
		String s_name = (String) session.getAttribute("s_name");

		ordersDto.setO_id(o_id);
		ordersDto.setPayment_method(payment_method);
		ordersDto.setPayment_price(payment_price);
		ordersDto.setS_name(s_name);

		int result = userDao.OrdersTableInsert(ordersDto);

		// 주문상세 테이블
		int order_code = userDao.getMaxOrderCode();

		List<BasketDTO> basketList = userDao.selectBasket(o_id);

		for (BasketDTO list : basketList) {
			int product_code = list.getProduct_code();
			int order_amount = list.getAmount();

			int result2 = userDao.OrdersDetailTableInsert(product_code, order_code, order_amount);
		}

		// 장바구니 초기화, 매장 세션 삭제
		int result3 = userDao.OrderCartTotalDelete(o_id);
		session.removeAttribute("s_name");
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order4.jsp");

		return forward;
	}

}
