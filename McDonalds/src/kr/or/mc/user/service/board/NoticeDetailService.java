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
		String n_code = request.getParameter("n_code");
		
		UserDAO BoardDao = new UserDAO();
		BoardNoticeDTO boardDto = BoardDao.NoticeDetail(n_code);
		
		request.setAttribute("boardDTO", boardDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/board_notice_detail.jsp");
	

	return forward;
	}

}
