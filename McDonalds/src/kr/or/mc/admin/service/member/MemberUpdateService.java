package kr.or.mc.admin.service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;

public class MemberUpdateService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		MemberDTO memberDto = new MemberDTO();
		AdminDAO adminDao = new AdminDAO();

		String m_id = request.getParameter("m_id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String post_code = request.getParameter("post_code");
		String address = request.getParameter("address");
		String address_detail = request.getParameter("address_detail");
		String addressSum = address + "/" + address_detail;
		String phone = request.getParameter("phone");

		int result = 0;
		try {
			result = adminDao.MemberUpdate(password, name, email, post_code, addressSum, phone, m_id);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}

		System.out.println("result : " + result);
		forward.setPath("MemberList.m");

		
		return forward;
	}

}