package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.user.dao.UserDAO;

public class FreeDetailService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		BoardFreeDTO boardFreeDto = new BoardFreeDTO();

		int f_code = Integer.parseInt(request.getParameter("f_code").trim());
		String cpage = request.getParameter("cp");
		String pagesize = request.getParameter("ps");

		if (cpage == null || cpage.trim().equals("")) {
			// default 값 설정
			cpage = "1"; // 1번째 페이지를 보겠다.
		}

		if (pagesize == null || pagesize.trim().equals("")) {
			// default 값 설정
			pagesize = "5"; // 5개씩 묶음을 잡겠다
		}

		dao.getReadNum(f_code);
		boardFreeDto = dao.FreeDetail(f_code);
		
		int totalComment = dao.totalReplyCount(f_code);

		/* List<Reply> replyList = dao.replylist(idx); */

		request.setAttribute("totalComment", totalComment);
		request.setAttribute("boardFreeDto", boardFreeDto);
		request.setAttribute("f_code", f_code);
		/* request.setAttribute("replyList", replyList); */

		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_free_detail.jsp");

		return forward;

	}
}
