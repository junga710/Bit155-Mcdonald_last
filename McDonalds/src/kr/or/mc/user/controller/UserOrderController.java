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
import kr.or.mc.user.service.mypage.JoinFormEditPageService;
import kr.or.mc.user.service.mypage.RegisterService;
import kr.or.mc.user.service.order.OrderPaymentService;
import kr.or.mc.user.service.order.OrderSuccessService;
import kr.or.mc.user.service.order.OrderPaymentService;
import kr.or.mc.user.service.order.OrderCancleService;
import kr.or.mc.user.service.order.OrderCartService;
import kr.or.mc.user.service.order.OrderHistoryPageService;
import kr.or.mc.user.service.order.OrderMenuService;

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

		if (url_Command.equals("/OrderHistory.uo")) { // 메뉴 - 주문조회 페이지로 이동
			action = new OrderHistoryPageService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/Order1.uo")) { // 메뉴 - 주문 첫페이지로 이동
			action = new OrderMenuService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/Order2.uo")) { // 메뉴 - 주문 두번째로 이동(선택 최종 확인)
			action = new OrderCartService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/Order3.uo")) { // 메뉴 - 주문 세번째로 이동(결제수단 페이지)
			action = new OrderPaymentService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/Order4.uo")) { // 메뉴 - 주문 끝
			action = new OrderSuccessService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/PaymentCancel.uo")) { // 결제취소
			action = new OrderCancleService();
			forward = action.execute(request, response);
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
