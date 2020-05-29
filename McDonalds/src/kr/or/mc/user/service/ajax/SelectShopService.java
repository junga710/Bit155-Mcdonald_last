package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.common.dto.StoreDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SelectShopService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String s_name = request.getParameter("s_name");
		UserDAO userDao = new UserDAO();
		HttpSession session = request.getSession();
		session.removeAttribute("s_name");
		session.setAttribute("s_name", s_name);

		List<StoreDTO> InfoShop = userDao.getSelectShop(s_name);

		JSONArray jsonArr = JSONArray.fromObject(InfoShop);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);

		} catch (IOException e) {
			e.printStackTrace();
		}

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/order/Mcdonald_selectStore.jsp");

		return null;

	}
}
