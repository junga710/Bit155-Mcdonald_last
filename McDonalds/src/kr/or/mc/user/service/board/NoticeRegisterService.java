package kr.or.mc.user.service.board;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeRegisterService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ActionForward forward = new ActionForward();
		BoardNoticeDTO boardNoticeDTO = new BoardNoticeDTO();
		UserDAO UserDAO = new UserDAO();
		String n_title = request.getParameter("n_title");
		String n_content = request.getParameter("n_content");
		
		boardNoticeDTO.setN_title(n_title);
		boardNoticeDTO.setN_content(n_content);
		
		int result = UserDAO.BoardNoticeWriter(boardNoticeDTO);
		
		request.setAttribute("result", result);
		
		forward.setPath("BoardNotice.b");
		
		return forward;
	}
}
