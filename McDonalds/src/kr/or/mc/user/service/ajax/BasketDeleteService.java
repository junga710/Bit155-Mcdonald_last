package kr.or.mc.user.service.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;

public class BasketDeleteService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		// 장바구니에서 제거

		UserDAO userdao = new UserDAO();

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		// 상품번호
		int product_code_one = Integer.parseInt(request.getParameter("product_code_one"));
		int product_code_set = Integer.parseInt(request.getParameter("product_code_set"));
		int amount_one = Integer.parseInt(request.getParameter("amount_one"));
		int amount_set = Integer.parseInt(request.getParameter("amount_set"));

		String select_store = request.getParameter("select_store");

		 if (amount_one > 0) {
			ProductDTO productDto = userdao.PrductDetail(product_code_one);
			int price_one = productDto.getProduct_price();
			BasketDTO basketDto = new BasketDTO();

			basketDto.setB_id(id);
			basketDto.setProduct_code(product_code_one);
			basketDto.setS_name(select_store);
			basketDto.setAmount(amount_one);
			basketDto.setTotal_product_price(price_one * amount_one);

			int result = userdao.OrderCartRegistger(basketDto);
			System.out.println(result);
		}
		 if (amount_set > 0) {
			ProductDTO productDto = userdao.PrductDetail(product_code_set);
			int price_set = productDto.getProduct_price();
			BasketDTO basketDto = new BasketDTO();

			basketDto.setB_id(id);
			basketDto.setProduct_code(product_code_set);
			basketDto.setS_name(select_store);
			basketDto.setAmount(amount_set);
			basketDto.setTotal_product_price(price_set * amount_set);

			int result = userdao.OrderCartRegistger(basketDto);
			System.out.println(result);
		}
		 
		 
		 
		return null;

		/*
		 * ActionForward forward = new ActionForward();
		 * forward.setPath("/WEB-INF/user/order/Mcdonald_order3.jsp");
		 * 
		 * return forward;
		 */
	}

}
