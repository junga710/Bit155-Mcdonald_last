package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class FreeListSearchService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		UserDAO userDao = new UserDAO();
		List<BoardFreeDTO> list = new ArrayList<BoardFreeDTO>();
		String ftitle = request.getParameter("ftitle");
		String fwriter = request.getParameter("fwriter");

		if (fwriter != null && ftitle == null) {
			list = userDao.SearchFwriter(fwriter);
		} else {
			list = userDao.SearchFtitle(ftitle);
		}

		JSONArray jsonArr = JSONArray.fromObject(list);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
}
