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
import kr.or.mc.user.service.LoginService;
import kr.or.mc.user.service.LogoutService;
import kr.or.mc.user.service.NoticeListService;
import kr.or.mc.user.service.RegisterService;

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
			
		} else if (url_Command.equals("/BoardReview.b")) { // 리뷰게시판 목록 뿌려주는 로직
			forward = new ActionForward();
			forward.setPath("/WEB-INF/admin/Main.jsp");
			
		}else if (url_Command.equals("/login.b")) { // 회원리스트 페이지 이동 + 회원 수정 로직
	         System.out.println("여기는 타는거구나?");
	          action = new LoginService();
	          forward = action.execute(request, response);
	          
	      }else if(url_Command.equals("/joinformOk.b")){ // 회원리스트 페이지 이동 + 회원 등록 로직
	    	  System.out.println("JOINOK여기는 타는거구나?");
	         action = new RegisterService();
	         forward = action.execute(request, response);
	         
	      }else if(url_Command.equals("/logout.b")) { // 
	         System.out.println("여기는 타는거구나?");
	         action = new LogoutService();
	         forward = action.execute(request, response);
	      }else if(url_Command.equals("/Mcdonald_joinform.b")) { //회원가입화면 이동
	    	  System.out.println("JoinJOIN");
	    	  forward = new ActionForward();
	    	  forward.setPath("/WEB-INF/user/Mcdonald_joinform.jsp");
	      }else if(url_Command.contentEquals("/Mcdonald_login.b")){ //로그인화면 이동
	    	  forward = new ActionForward();
	    	  forward.setPath("/WEB-INF/user/Mcdonald_login.jsp");
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
