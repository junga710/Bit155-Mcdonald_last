package kr.or.mc.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.service.member.MemberDeleteService;
import kr.or.mc.admin.service.member.MemberDetailService;
import kr.or.mc.admin.service.member.MemberListService;
import kr.or.mc.admin.service.member.MemberRegisterPageService;
import kr.or.mc.admin.service.member.MemberRegisterService;
import kr.or.mc.admin.service.member.MemberUpdatePageService;
import kr.or.mc.admin.service.member.MemberUpdateService;
import kr.or.mc.admin.service.order.OrderDetailService;
import kr.or.mc.admin.service.order.OrderListService;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

@WebServlet("*.o")
public class FrontOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontOrderController() {
        super();
    }
    
    private void doProcess(HttpServletRequest request, HttpServletResponse response)
 			throws ServletException, IOException {

 		String requestURI = request.getRequestURI();
 		String contextPath = request.getContextPath();
 		String url_Command = requestURI.substring(contextPath.length());

 		Action action = null;
 		ActionForward forward = null;
 		
 		if (url_Command.equals("/Order.o")) { // 주문관리 페이지 이동 + 리스트 출력 로직
 			action = new OrderListService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/OrderDetailPage.o")) { // 주문상세 페이지 이동 + 상세 출력 로직
 			action = new OrderDetailService();
			forward = action.execute(request, response);
 		}
 			
 		
 		if (forward != null) {
 			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
 			dis.forward(request, response);
 		}

 	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
