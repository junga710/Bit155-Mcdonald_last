package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.ReplyDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class TotalCommentService  implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int f_code = Integer.parseInt(request.getParameter("f_code").trim());

		ReplyDTO ReplyDTO = new ReplyDTO();
		UserDAO dao = new UserDAO();
		
		int totalComment = dao.totalReplyCount(f_code);

		JSONObject obj = new JSONObject();
		obj.put("totalComment", totalComment);

		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
