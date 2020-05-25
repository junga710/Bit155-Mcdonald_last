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

public class MainBestService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AjaxDAO ajaxDao = new AjaxDAO();

		String burgerBest = ajaxDao.MenuBest("버거");
		String macMorningBest = ajaxDao.MenuBest("맥모닝");
		String sideBest = ajaxDao.MenuBest("사이드");
		String desertBest = ajaxDao.MenuBest("디저트");
		String macCaffeeBest = ajaxDao.MenuBest("맥카페");
		String beverageBest = ajaxDao.MenuBest("음료");

		JSONArray jsonArr = new JSONArray();

		JSONObject obj = new JSONObject();
		obj.put("burgerBest", burgerBest);
		obj.put("macMorningBest", macMorningBest);
		obj.put("sideBest", sideBest);
		obj.put("desertBest", desertBest);
		obj.put("macCaffeeBest", macCaffeeBest);
		obj.put("beverageBest", beverageBest);

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