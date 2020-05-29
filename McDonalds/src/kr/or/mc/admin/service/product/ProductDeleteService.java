package kr.or.mc.admin.service.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

public class ProductDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		int product_code = Integer.parseInt(request.getParameter("product_code"));
		int nutrition_code = Integer.parseInt(request.getParameter("nutrition_code"));

		AdminDAO adminDao = new AdminDAO();
		int result = adminDao.ProductDelete(product_code);
		int result2 = adminDao.ProductDeleteNut(nutrition_code);

		ActionForward forward = new ActionForward();
		forward.setPath("Product.p");

		return forward;
	}
}
