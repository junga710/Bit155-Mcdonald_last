package kr.or.mc.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import kr.or.mc.admin.service.member.MemberListService;
import kr.or.mc.admin.service.member.MemberUpdateService;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

import kr.or.mc.user.service.board.NoticeListService;

@WebServlet("*.b")
public class UserBoardController extends HttpServlet {
       
    public UserBoardController() {
        super();
    }
    
    private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null; 
		System.out.println("여긴오는데 왜 다음으로 안가");
		System.out.println(" url_Command : " + url_Command);
			
		if (url_Command.equals("/BoardNotice.b")) { // 공지사항 목록 뿌려주는 로직
			System.out.println("여긴오냐232323");
			action  = new NoticeListService();
			forward = action.execute(request, response);
			
		} else if (url_Command.equals("/BoardNoticeDetail.b")) { // 리뷰게시판 목록 뿌려주는 로직
			action  = new NoticeDetailService();
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
