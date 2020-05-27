package kr.or.mc.user.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.user.dao.UserDAO;

public class FreeReRegisterPage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		int f_code = Integer.parseInt(request.getParameter("f_code"));
		String f_title = request.getParameter("f_title");
		
		
		BoardFreeDTO boardFreeDto = new BoardFreeDTO();
		boardFreeDto.setF_code(f_code);
		boardFreeDto.setF_title(f_title);
	
		request.setAttribute("boardFreeDto", boardFreeDto);
			
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_free_rewriter.jsp");

		return forward;
		}
	}
	
