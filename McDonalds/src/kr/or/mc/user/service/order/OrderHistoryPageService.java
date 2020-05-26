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
		System.out.println(id);
		List<OrdersDTO> listod = userdao.OrderHistoryView(id);
		List<Integer> listint = new ArrayList<Integer>(); 
		
		
		//뽑아온 리스트에서 코드분리해서 listint에 넣기 
		
		for(int i=0; i<listod.size(); i++) {
			System.out.println("*****************");
		System.out.println("이거나와?" + listod.get(i));
		System.out.println("코드 뽑아냄  "+ listod.get(i).getOrder_code());
		
		
		listint.add(listod.get(i).getOrder_code());
		System.out.println("listint.size() : "+ listint.size() );
		System.out.println(listint.get(i));
		System.out.println(i+1+"번 돌았어요");
		
		System.out.println("*****************");
		}
		System.out.println("----for 문 의 끝----");
		
		List<OrderDetailDTO> listdetail2 = new ArrayList<OrderDetailDTO>();
		List<OrderDetailDTO> listdetail = new ArrayList<OrderDetailDTO>();
		for(int i=0; i<listint.size();i++) {
			
			//for문으로 돌려서 낭
			List<OrderDetailDTO> listdetail =(userdao.OrderDetailProductView(listint.get(1)));
		}
		
		//OrderDetailProductView() 코드 로 돌려보기 
		//List<OrderDetailDTO> listdetail =(userdao.OrderDetailProductView(listint.get(1)));
		
		//System.out.println("이거나와?" + listdetail.get(i));
		 
		
		//order_code를 id값을 통하여 뽑는 dao
		//order_code가 리스트(int)?
		
		
		//request.setAttribute("ordersDTO", ordersDTO);
		//System.out.println(ordersDTO);
		request.setAttribute("listod", listod); //ordersDTO list 넣음 

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_orderhistory.jsp");

		return forward;
	}

}
