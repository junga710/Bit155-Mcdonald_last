package kr.or.mc.user.service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class IdCheckService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("서비스 타러 왔어욜");
		String id = request.getParameter("id");
		
		System.out.println("id : "  + id);
		
		UserDAO userdao = new UserDAO();
		int checkResult = userdao.checkId(id);
		
		System.out.println("checkResult : " + checkResult);
		
		//JSONArray jsonArr = new JSONArray();

		JSONObject obj = new JSONObject();
		obj.put("checkResult", checkResult);
		
		System.out.println("obj : " + obj);

		//jsonArr.add(obj);
		
		/*
		 * String msg = ""; if(checkResult > 0){ msg = "성공"; }else { msg = "실패"; }
		 */
		//글자 반환해주까?
		//request.setAttribute("msg", msg);
		
		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

}
