package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		int n_code = Integer.parseInt(request.getParameter("n_code"));

		UserDAO userDAO = new UserDAO();
		int result = userDAO.ProductDelete(n_code);
		
		
		System.out.println("result : " + result);
		ActionForward forward = new ActionForward();
		forward.setPath("BoardNotice.b");

	return forward;
	}

}
