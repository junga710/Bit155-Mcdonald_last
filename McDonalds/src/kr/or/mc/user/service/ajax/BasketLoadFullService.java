package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class BasketLoadFullService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		UserDAO userDao = new UserDAO();
		String product_category = request.getParameter("product_category");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		List<BasketDTO> productDto = userDao.OrderCartList(id);
		
		JSONArray jsonArr = JSONArray.fromObject(productDto); 
		
		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

}
