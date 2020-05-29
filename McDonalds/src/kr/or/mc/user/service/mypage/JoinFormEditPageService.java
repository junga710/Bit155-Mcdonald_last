package kr.or.mc.user.service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;

public class JoinFormEditPageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		
		//id 값이 없으니 요지경 이었군
		String m_id = (String) session.getAttribute("id");
		System.out.println(m_id);
		UserDAO boarddao = new UserDAO();
		MemberDTO memberDTO = boarddao.MemDetail(m_id);

		request.setAttribute("memberDTO", memberDTO);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/mypage/Mcdonald_joinform_edit.jsp");

		return forward;
	}
}
