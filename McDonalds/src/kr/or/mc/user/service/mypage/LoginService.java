package kr.or.mc.user.service.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.user.dao.UserDAO;

public class LoginService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("서비스 타러 왔어욜");
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");

		UserDAO boarddao = new UserDAO();
		int loginResult = boarddao.login(id, password);
		
		System.out.println(loginResult);
		ActionForward forward = new ActionForward();
		
		
		/*
		 * if(loginResult > 0){
		 * 
		 * boarddao.MemDetail(id); HttpSession session = request.getSession();
		 * session.setAttribute("id", id); forward.setPath("/Mcdonald_main.jsp");
		 * 
		 * }else {
		 * 
		 * forward.setPath("/WEB-INF/user/Mcdonald_login.jsp"); }
		 */
		if(loginResult == 0 || loginResult == -1){
            System.out.println("로그인안됨");
            request.setAttribute("loginResult", loginResult);
            forward.setPath("/WEB-INF/user/Mcdonald_login.jsp");
			/*
			 * try { response.setContentType("application/x-json; charset=UTF-8");
			 * response.getWriter().write("loginFail"); } catch (IOException e) {
			 * e.printStackTrace(); }
			 */
        }else {
        	boarddao.MemDetail(id); 
        	HttpSession session = request.getSession();
   		    session.setAttribute("id", id);
   		  request.setAttribute("loginResult", loginResult);
   		    forward.setPath("/Mcdonald_main.jsp");
        }
//		forward.setPath("/WEB-INF/user/Mcdonald_login.jsp");
		return forward;
	}

}
