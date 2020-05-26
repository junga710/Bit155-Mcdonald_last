package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class OrderPageBurgerService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {


		UserDAO userDao = new UserDAO();
		List<ProductDTO> productDto = userDao.getProductList("버거");
		
		/* JSONObject jsonObject = JSONObject.fromObject(productDto); */
		
		JSONArray jsonArr = JSONArray.fromObject(productDto); 
		
		System.out.println("jsonArr : " + jsonArr);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		/*
		 * ActionForward forward = new ActionForward();
		 * forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_hamburger_detail.jsp");
		 */

		return null;
	}

}
