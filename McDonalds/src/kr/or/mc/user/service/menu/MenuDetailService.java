package kr.or.mc.user.service.menu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;

public class MenuDetailService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		int product_code = Integer.parseInt(request.getParameter("product_code"));

		System.out.println("product_code : " + product_code);

		UserDAO userDao = new UserDAO();
		ProductDTO productDto = userDao.MenuDetail(product_code);
		NutritionDTO nutritionDto = userDao.MenuDetailNut(product_code);
		
		/*
		 * request.setAttribute("productDto", productDto);
		 * request.setAttribute("nutritionDto", nutritionDto);
		 */
		
		System.out.println("포워드 가즈아아");

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_hamburger_detail.jsp");

		return forward;
	}

}
