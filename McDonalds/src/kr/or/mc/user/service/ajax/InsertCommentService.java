package kr.or.mc.user.service.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.ReplyDTO;
import kr.or.mc.user.dao.UserDAO;
import net.sf.json.JSONArray;

public class InsertCommentService implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)throws IOException {
		
		ReplyDTO Replydto = new ReplyDTO();
		
		Replydto.setF_code(Integer.parseInt(request.getParameter("f_code")));
		Replydto.setR_writer(request.getParameter("r_writer"));
		Replydto.setR_content(request.getParameter("content"));
    	System.out.println("여기에 찍히는지 보자");
    	System.out.println("replydto"+Replydto);
    	UserDAO dao = new UserDAO();
    	//댓글등록
    	dao.insertComment(Replydto);
    	
    	//댓글 select
    	List<ReplyDTO> commentResult = dao.selectCommentList(Integer.parseInt(request.getParameter("f_code")));
			
    	JSONArray obj = JSONArray.fromObject(commentResult);
    	System.out.println("obj 이 글에 달린 댓글정보" + obj);
		
		try {
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;

}
}

