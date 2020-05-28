package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class SelectBurgerModalService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		UserDAO userDao = new UserDAO();
		String product_name = request.getParameter("product_name");
		System.out.println(product_name);

		List<ProductDTO> productDto = userDao.selectProductByName(product_name);
		
		System.out.println("ssssdwqqwd : " + productDto);
		JSONArray jsonArr = JSONArray.fromObject(productDto);

		try {
			response.setContentType("application/json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

}
