package kr.or.mc.user.service.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.user.dao.UserDAO;

public class FreeListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		UserDAO userDao = new UserDAO();
		int totalboardcount = userDao.totalBoardCount();

		String ps = request.getParameter("ps"); // pagesize
		String cp = request.getParameter("cp"); // current page

		if (ps == null || ps.trim().equals("")) {
			ps = "10";
		}

		if (cp == null || cp.trim().equals("")) {
			cp = "1";
		}

		int pagesize = Integer.parseInt(ps);
		int cpage = Integer.parseInt(cp);
		int pagecount = 0;

		if (totalboardcount % pagesize == 0) {
			pagecount = totalboardcount / pagesize;
		} else {
			pagecount = (totalboardcount / pagesize) + 1;
		}

		List<BoardFreeDTO> list = userDao.FreeList(cpage, pagesize);

		request.setAttribute("list", list);
		request.setAttribute("pagesize", pagesize);
		request.setAttribute("cpage", cpage);
		request.setAttribute("pagecount", pagecount);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/comm/Mcdonald_board_free_list.jsp");
		return forward;

	}
}
