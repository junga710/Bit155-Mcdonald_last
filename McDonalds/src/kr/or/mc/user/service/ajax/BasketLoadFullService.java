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

		System.out.println("타긴탐??");

		UserDAO userDao = new UserDAO();
		String product_category = request.getParameter("product_category");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		List<BasketDTO> productDto = userDao.OrderCartList(id);
		//장바구니의 마지막 행에 있는거 하나씩 불러오기
		
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
