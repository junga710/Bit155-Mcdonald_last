package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class FreeListSearchService implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

	UserDAO userDao = new UserDAO();
	List<BoardFreeDTO> list = new ArrayList<BoardFreeDTO>();
	String ftitle = request.getParameter("f_title");
	String fwriter = request.getParameter("f_writer");
	String keyword = request.getParameter("keyword");
	
	System.out.println("ftitle" + ftitle);
	System.out.println("fwriter" + fwriter);
	System.out.println("keyword" + keyword);
	
	if(ftitle != null && fwriter == null) {
		list = userDao.SearchFtitle(ftitle); 
	}else {
		list = userDao.SearchFwriter(fwriter);
	}
	
	/* JSONObject jsonObject = JSONObject.fromObject(productDto); */
	
	JSONArray jsonArr = JSONArray.fromObject(list); 
	
	
	System.out.println("jsonArrsss : " + jsonArr);
	
	try {
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jsonArr);
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	/*
	 * ActionForward forward = new ActionForward();
	 * forward.setPath("/WEB-INF/user/menu/Mcdonald_order1.jsp");
	 */

	return null;
}
}
