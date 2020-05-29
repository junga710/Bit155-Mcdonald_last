package kr.or.mc.user.service.ajax;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class UserMenuDetailService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		int product_code = Integer.parseInt(request.getParameter("product_code"));

		System.out.println("product_code : " + product_code);

		UserDAO userDao = new UserDAO();
		ProductDTO productDto = userDao.MenuDetail(product_code);
		NutritionDTO nutritionDto = userDao.MenuDetailNut(product_code);

		JSONArray jsonArr = new JSONArray();

		JSONObject obj = new JSONObject();
		obj.put("productDto", productDto);
		obj.put("nutritionDto", nutritionDto);

		jsonArr.add(obj);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
