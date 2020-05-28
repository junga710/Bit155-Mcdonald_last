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
import kr.or.mc.user.dao.UserDAO;

public class OrderMenuService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		UserDAO userdao = new UserDAO();

		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberDTO memberDto = userdao.MemDetail(id);
		String address = memberDto.getAddress();
		String address_detail = memberDto.getAddress_detail();
		
		request.setAttribute("address", address);
		request.setAttribute("address_detail", address_detail);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_order1.jsp");

		return forward;
	}

}
