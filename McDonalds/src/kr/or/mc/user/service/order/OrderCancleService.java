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

public class OrderCancleService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		//세션갑 가져와서 장바구니에 담긴 거 비우고 메뉴선택 페이지로 이동
		UserDAO userdao = new UserDAO();

		HttpSession session = request.getSession();
		String b_id = (String) session.getAttribute("id"); // b_id : 사용자 아이디

		int result = userdao.OrderCartTotalDelete(b_id);

		ActionForward forward = new ActionForward();
		forward.setPath("Order1.uo");

		return forward;
	}

}
