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
		ActionForward forward = new ActionForward();
		UserDAO userDao = new UserDAO();
		BoardNoticeDTO boardNoticeDTO = new BoardNoticeDTO();
		String n_codestr = request.getParameter("n_code");
		int n_code = Integer.parseInt(n_codestr.trim());
		
	
		try {
			userDao.getNoticeReadNum(n_code);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		boardNoticeDTO = userDao.BoardNoticeDetail(n_code);
		
		request.setAttribute("boardNoticeDTO", boardNoticeDTO);
		request.setAttribute("n_code", n_code);
	
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_notice_detail.jsp");
	

	return forward;
	}

}
