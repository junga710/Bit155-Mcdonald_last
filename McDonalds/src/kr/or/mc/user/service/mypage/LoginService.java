package kr.or.mc.user.service.mypage;

import java.io.IOException;

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
		
		String msg = "";
		String url = "";
		if(loginResult > 0){
			msg = "성공";
			url = "Mcdonald_main.jsp";
			boarddao.MemDetail(id);
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}else {
			msg = "실패";
			url = "Mcdonald_joinform.jsp";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/Mcdonald_main.jsp");

		return forward;
	}

}
