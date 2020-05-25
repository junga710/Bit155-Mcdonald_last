package kr.or.mc.admin.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AjaxDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.CategoryDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class MainWorstService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AjaxDAO ajaxDao = new AjaxDAO();

		String burgerWorst = ajaxDao.MenuWorst("버거");
		String macMorningWorst = ajaxDao.MenuWorst("맥모닝");
		String sideWorst = ajaxDao.MenuWorst("사이드");
		String desertWorst = ajaxDao.MenuWorst("디저트");
		String macCaffeeWorst = ajaxDao.MenuWorst("맥카페");
		String beverageWorst = ajaxDao.MenuWorst("음료");

		JSONArray jsonArr = new JSONArray();

		JSONObject obj = new JSONObject();
		obj.put("burgerWorst", burgerWorst);
		obj.put("macMorningWorst", macMorningWorst);
		obj.put("sideWorst", sideWorst);
		obj.put("desertWorst", desertWorst);
		obj.put("macCaffeeWorst", macCaffeeWorst);
		obj.put("beverageWorst", beverageWorst);

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