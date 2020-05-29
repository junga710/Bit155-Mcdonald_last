package kr.or.mc.admin.service.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.common.dto.ProductDTO;

public class ProductListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		
		AdminDAO adminDao = new AdminDAO();

		List<ProductDTO> pList = adminDao.ProductList();
		
		request.setAttribute("pList", pList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/admin/Product.jsp");

		return forward;
		
	}

}