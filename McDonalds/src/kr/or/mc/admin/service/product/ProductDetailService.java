package kr.or.mc.admin.service.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.ProductDTO;

public class ProductDetailService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		int product_code = Integer.parseInt(request.getParameter("product_code"));

		AdminDAO adminDao = new AdminDAO();
		ProductDTO productDto = adminDao.PrductDetail(product_code);
		NutritionDTO nutritionDto = adminDao.PrductDetailNut(product_code);

		System.out.println(productDto);
		System.out.println(nutritionDto);

		request.setAttribute("productDto", productDto);
		request.setAttribute("nutritionDto", nutritionDto);

		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/ProductDetail.jsp");

		return forward;
	}

}
