package kr.or.mc.user.service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

public class LogoutService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("로그아웃 메서드 타러왔어요");
		HttpSession session = request.getSession();
		session.invalidate();
		
		
		System.out.println("로그아웃 메서드 탔어요");
		
		String msg = "로그아웃";
		String url = "Main.do";
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("/Mcdonald_main.jsp");

		return forward;
	}

}
