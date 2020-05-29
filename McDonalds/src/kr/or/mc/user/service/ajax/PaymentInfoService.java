package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BasketDTO;
import kr.or.mc.common.dto.ReplyDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class PaymentInfoService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO userDao = new UserDAO();

		HttpSession session = request.getSession();
		String b_id = (String) session.getAttribute("id"); // b_id : 사용자 아이디

		int totalOrderSum = 0; // 주문한 상품 총 가격

		List<BasketDTO> basketlist = userDao.OrderCartList(b_id);

		for (BasketDTO basketDto : basketlist) {
			totalOrderSum += basketDto.getTotal_product_price();
		}

		JSONArray obj = JSONArray.fromObject(basketlist);
		obj.add(totalOrderSum);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;

	}

}
