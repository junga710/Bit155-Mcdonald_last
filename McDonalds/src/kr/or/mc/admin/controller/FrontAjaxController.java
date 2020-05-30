package kr.or.mc.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.service.ajax.CategoryListService;
import kr.or.mc.admin.service.ajax.MainBestService;
import kr.or.mc.admin.service.ajax.MainChartService;
import kr.or.mc.admin.service.ajax.MainSingleFourService;
import kr.or.mc.admin.service.ajax.MainWorstService;
import kr.or.mc.admin.service.member.MemberDeleteService;
import kr.or.mc.admin.service.member.MemberDetailService;
import kr.or.mc.admin.service.member.MemberListService;
import kr.or.mc.admin.service.member.MemberRegisterPageService;
import kr.or.mc.admin.service.member.MemberRegisterService;
import kr.or.mc.admin.service.member.MemberUpdatePageService;
import kr.or.mc.admin.service.member.MemberUpdateService;
import kr.or.mc.admin.service.order.OrderDetailService;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

/**
 * Servlet implementation class FrontAjaxController
 */
@WebServlet("*.ajax")
public class FrontAjaxController extends HttpServlet {
       
    public FrontAjaxController() {
        super();
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());
		
		Action action = null;
		ActionForward forward = null;
		
		if (url_Command.equals("/CategoryList.ajax")) { // 관리자 회원관리 회원등록 페이지 카테고리
			action = new CategoryListService();
			forward = action.execute(request, response);
		} else if(url_Command.equals("/MainSingleFour.ajax")) { //관리자 메인 페이지 단일값 위쪽 4개
			action = new MainSingleFourService();
			forward = action.execute(request, response);
		} else if(url_Command.equals("/MainChart.ajax")) { //관리자 메인 페이지 단일값 위쪽 4개
			action = new MainChartService();
			forward = action.execute(request, response);
		} else if(url_Command.equals("/MainBest.ajax")) { //관리자 메인 페이지 메뉴 best 4개
			action = new MainBestService();
			forward = action.execute(request, response);
		} else if(url_Command.equals("/MainWorst.ajax")) { //관리자 메인 페이지 메뉴 best 4개
			action = new MainWorstService();
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
