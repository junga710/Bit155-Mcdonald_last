package kr.or.mc.user.service.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.user.dao.UserDAO;

public class OrderHistoryPageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		UserDAO userdao = new UserDAO();
		List<OrdersDTO> listod = userdao.OrderHistoryView(id);
		List<Integer> listint = new ArrayList<Integer>();

		// 뽑아온 리스트에서 코드분리해서 listint에 넣기

		for (int i = 0; i < listod.size(); i++) {

			listint.add(listod.get(i).getOrder_code());
		}

		List<OrderDetailDTO> listdetail = new ArrayList<OrderDetailDTO>();
		
		
		
		
		for (int i = 0; i < listint.size(); i++) {
			listdetail.addAll((userdao.OrderDetailProductView(listint.get(i))));
		}

		request.setAttribute("listod", listod); // ordersDTO list 넣음
		request.setAttribute("listdetail", listdetail);// OrderDetailDTO list 넣음
		System.out.println("dddddddd" +listdetail);
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_orderhistory.jsp");

		return forward;
	}

}
