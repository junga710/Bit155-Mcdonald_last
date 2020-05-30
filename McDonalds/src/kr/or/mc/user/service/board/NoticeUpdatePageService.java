package kr.or.mc.user.service.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeUpdatePageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		int n_code = Integer.parseInt(request.getParameter("n_code"));
		
		UserDAO userDAO = new UserDAO();
		BoardNoticeDTO boardNoticeDTO = userDAO.BoardNoticeDetail(n_code);
		
		request.setAttribute("boardNoticeDTO", boardNoticeDTO);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_notice_update.jsp");
		
		return forward;
	}
}
