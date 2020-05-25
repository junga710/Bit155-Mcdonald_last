package kr.or.mc.admin.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;

public class MemberDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		String m_id = request.getParameter("m_id");

		AdminDAO adminDao = new AdminDAO();
		int result = 0;
		
		try {
			result = adminDao.MemberDelete(m_id);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		
		System.out.println("result : " + result);
		ActionForward forward = new ActionForward();
		forward.setPath("MemberList.m");

		return forward;
	}
}
