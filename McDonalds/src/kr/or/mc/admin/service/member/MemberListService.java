package kr.or.mc.admin.service.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;

public class MemberListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AdminDAO adminDao = new AdminDAO();

		List<MemberDTO> mList = adminDao.MemberList();

		request.setAttribute("mList", mList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/Member.jsp");

		return forward;
	}
}