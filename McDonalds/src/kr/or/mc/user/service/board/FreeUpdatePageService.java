package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.user.dao.UserDAO;

public class FreeUpdatePageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		int f_code = Integer.parseInt(request.getParameter("f_code"));
		
		UserDAO userDAO = new UserDAO();
		BoardFreeDTO boardFreeDto = userDAO.FreeDetail(f_code);
		
		request.setAttribute("boardFreeDto", boardFreeDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_free_edit.jsp");
		
		return forward;
	}
}
