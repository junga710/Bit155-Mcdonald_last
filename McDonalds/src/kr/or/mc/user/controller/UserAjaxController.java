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
import kr.or.mc.user.service.ajax.UserMenuDetailService;
import kr.or.mc.user.service.board.FreeDeleteService;
import kr.or.mc.user.service.board.FreeDetailService;
import kr.or.mc.user.service.board.FreeListService;
import kr.or.mc.user.service.board.FreeRegisterService;
import kr.or.mc.user.service.board.FreeUpdatePageService;
import kr.or.mc.user.service.board.FreeUpdateService;
import kr.or.mc.user.service.board.NoticeDeleteService;
import kr.or.mc.user.service.board.NoticeDetailService;
import kr.or.mc.user.service.board.NoticeListService;
import kr.or.mc.user.service.board.NoticeRegisterService;
import kr.or.mc.user.service.board.NoticeUpdatePageService;
import kr.or.mc.user.service.board.NoticeUpdateService;
import kr.or.mc.user.service.board.ReviewDetailService;
import kr.or.mc.user.service.board.ReviewListService;
import kr.or.mc.user.service.board.ReviewRegisterService;


@WebServlet("*.ua")
public class UserAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UserAjaxController() {
        super();
    }

	
    private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;
		System.out.println(" url_Command : " + url_Command);

		if (url_Command.equals("/UserMenuDetail.ua")) { // 공지사항 목록 뿌려주는 로직
			System.out.println("아임 옵티머스 프라임");
			action = new UserMenuDetailService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/BoardNoticeDetail.b")) { // 공지사항 상세 뿌려주는 로직
			System.out.println("상세페이지 점두점두");
			action = new NoticeDetailService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/BoardNoticeRegisterPage.b")) { // 공지사항 등록 페이지로 가는거
			forward = new ActionForward();
			forward.setPath("");
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