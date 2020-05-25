package kr.or.mc.admin.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.admin.dao.AjaxDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.CategoryDTO;
import kr.or.mc.common.dto.MemberDTO;
import net.sf.json.JSONArray;

public class CategoryListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		AjaxDAO ajaxDao = new AjaxDAO();

		List<CategoryDTO> cList = ajaxDao.jobList();

		JSONArray jsonArr = JSONArray.fromObject(cList); 

    	response.setContentType("application/x-json; charset=UTF-8");
		try {
			response.getWriter().print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
}