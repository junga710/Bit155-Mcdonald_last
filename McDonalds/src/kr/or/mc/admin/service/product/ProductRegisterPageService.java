package kr.or.mc.admin.service.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

public class ProductRegisterPageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AdminDAO adminDao = new AdminDAO();
		
		int product_code = adminDao.ProductCode();
		
		System.out.println("product_code : " + product_code);
		
		request.setAttribute("product_code", product_code);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/ProductRegister.jsp");

		return forward;
	}

}