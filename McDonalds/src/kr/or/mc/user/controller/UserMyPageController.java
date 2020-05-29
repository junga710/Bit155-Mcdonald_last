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
import kr.or.mc.user.service.mypage.IdCheckService;
import kr.or.mc.user.service.mypage.JoinFormEditPageService;
import kr.or.mc.user.service.mypage.JoinFormEditService;

import kr.or.mc.user.service.mypage.LoginService;
import kr.or.mc.user.service.mypage.LogoutService;
import kr.or.mc.user.service.mypage.RegisterService;

@WebServlet("*.ump")
public class UserMyPageController extends HttpServlet {

	public UserMyPageController() {
		super();
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;

		if (url_Command.equals("/login.ump")) { // 로그인
			action = new LoginService();
			forward = action.execute(request, response);

		} else if (url_Command.equals("/joinformOk.ump")) { // 회원리스트 페이지 이동 + 회원 등록 로직
			action = new RegisterService();
			forward = action.execute(request, response);

		} else if (url_Command.equals("/logout.ump")) { // 로그아웃
			action = new LogoutService();
			forward = action.execute(request, response);

		} else if (url_Command.equals("/Mcdonald_joinform.ump")) { // 회원가입화면 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/Mcdonald_joinform.jsp");

		} else if (url_Command.contentEquals("/Mcdonald_login.ump")) { // 로그인화면 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/Mcdonald_login.jsp");

		} else if (url_Command.contentEquals("/Mcdonald_joinform_edit.ump")) { // 회원정보수정화면 에 정보 넣어주고 이동
			action = new JoinFormEditPageService();
			forward = action.execute(request, response);

		} else if (url_Command.equals("/Mcdonald_joinform_editOk.ump")) { // 회원정보수정 로직
			action = new JoinFormEditService();
			forward = action.execute(request, response);
		}

		else if (url_Command.equals("/idcheck.ump")) { // 아이디 중복체크
			action = new IdCheckService();
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
