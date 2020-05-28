package kr.or.mc.user.service.order;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;

public class OrderSuccessService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//장바구니에서 추출 후 주문, 주문상세 테이블에 삽입
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order4.jsp");

		return forward;
	}

}
