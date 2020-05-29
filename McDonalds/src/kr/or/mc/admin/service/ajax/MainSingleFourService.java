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

public class MainSingleFourService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AjaxDAO ajaxDao = new AjaxDAO();
		
		int monthAvg = ajaxDao.MonthAvg(); //월 매출 평균
    	int dayAvg = ajaxDao.DayAvg(); //일 매출 평균
    	String merberTopOrder = ajaxDao.MerberTopOrder(); //최다주문 회원
    	int memberTotal = ajaxDao.MemberTotal(); //총 회원

    	JSONArray jsonArr = new JSONArray();
    	
    	JSONObject obj = new JSONObject();
		obj.put("monthAvg", monthAvg);
		obj.put("dayAvg", dayAvg);
		obj.put("merberTopOrder", merberTopOrder);
		obj.put("memberTotal", memberTotal);

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
