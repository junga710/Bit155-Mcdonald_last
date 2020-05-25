package kr.or.mc.user.service.board;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeDetailService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("상세페이지 서블릿 타나요");
		String n_codestr = request.getParameter("n_code");
		int n_code = Integer.parseInt(n_codestr.trim());
		
		UserDAO userDao = new UserDAO();
		BoardNoticeDTO boardNoticeDTO = userDao.BoardNoticeDetail(n_code);
		
		request.setAttribute("boardNoticeDTO", boardNoticeDTO);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/board_notice_detail.jsp");
	

	return forward;
	}

}
