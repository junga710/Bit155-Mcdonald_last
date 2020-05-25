package kr.or.mc.admin.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AjaxDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.ChartDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class MainChartService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AjaxDAO ajaxDao = new AjaxDAO();
		
		List<ChartDTO> list = ajaxDao.MainChart(); //월 매출 평균
    	
    	System.out.println("list : " + list);

    	JSONArray jsonArr = JSONArray.fromObject(list); 
    
		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
}
