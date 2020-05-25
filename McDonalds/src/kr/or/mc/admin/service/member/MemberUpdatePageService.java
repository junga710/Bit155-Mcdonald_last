package kr.or.mc.admin.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;

public class MemberUpdatePageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		String m_id = request.getParameter("m_id");

		AdminDAO adminDao = new AdminDAO();
		MemberDTO memberDTO = adminDao.MemberDetail(m_id);

		request.setAttribute("memberDTO", memberDTO);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/MemberUpdate.jsp");

		return forward;
	}

}