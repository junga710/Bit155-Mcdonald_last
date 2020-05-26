package kr.or.mc.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.user.service.menu.MenuDetailService;


 @WebServlet("*.uo")
public class UserOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;
		System.out.println(" url_Command : " + url_Command);

		if (url_Command.equals("/OrderHistory.uo")) { // 메뉴 - 주문조회 페이지로 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/order/Mcdonald_orderhistory.jsp");
		} else if (url_Command.equals("")) { // 

		
		} 
		
		
		

		if (forward != null) {
			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
			dis.forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
