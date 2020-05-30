package kr.or.mc.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import kr.or.mc.admin.service.member.MemberDeleteService;
import kr.or.mc.admin.service.member.MemberDetailService;

import kr.or.mc.admin.service.member.MemberListService;
import kr.or.mc.admin.service.member.MemberRegisterPageService;
import kr.or.mc.admin.service.member.MemberRegisterService;
import kr.or.mc.admin.service.member.MemberUpdatePageService;
import kr.or.mc.admin.service.member.MemberUpdateService;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

@WebServlet("*.m")
public class FrontMemberController extends HttpServlet {

	public FrontMemberController() {
		super();

	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;

		if (url_Command.equals("/AdminPage.m")) { // admin 페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/admin/Main.jsp");
		} else if (url_Command.equals("/outAdminPage.m")) { // 관리자페이지 -> 사용자페이지
			forward = new ActionForward();
			forward.setPath("/Mcdonald_main.jsp");
		} else if (url_Command.equals("/AdminMain.m")) { // 사용자페이지서 관리자페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/admin/Main.jsp");
		} else if (url_Command.equals("/MemberList.m")) { // 회원관리 페이지 이동 + 회원 리스트 출력 로직
			action = new MemberListService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/MemberDetail.m")) { // 회원상세 페이지 이동 + 회원 리스트 출력 로직
			action = new MemberDetailService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/MemberRegisterPage.m")) { // 회원등록 페이지 이동
			action = new MemberRegisterPageService();
			forward = action.execute(request, response);

		} else if (url_Command.equals("/MemberRegister.m")) { // 회원리스트 페이지 이동 + 회원 등록 로직
			action = new MemberRegisterService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/MemberDelete.m")) { // 회원리스트 페이지 이동 + 회원 삭제 로직
			action = new MemberDeleteService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/MemberUpdatePage.m")) { // 회원수정 페이지 이동
			action = new MemberUpdatePageService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/MemberUpdate.m")) { // 회원리스트 페이지 이동 + 회원 수정 로직
			action = new MemberUpdateService();
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
