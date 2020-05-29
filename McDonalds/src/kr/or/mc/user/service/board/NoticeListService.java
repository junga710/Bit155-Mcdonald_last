package kr.or.mc.user.service.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		UserDAO boarddao = new UserDAO();
		List<BoardNoticeDTO> blist = boarddao.NoticeList();
		request.setAttribute("blist", blist);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_notice.jsp");
		return forward;
	}
}
