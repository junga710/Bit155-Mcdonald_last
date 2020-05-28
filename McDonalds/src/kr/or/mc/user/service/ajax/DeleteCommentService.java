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

public class DeleteCommentService implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

    	int f_code = Integer.parseInt(request.getParameter("f_code"));
    	int r_code = Integer.parseInt(request.getParameter("r_code"));
    	
    	ReplyDTO ReplyDTO = new ReplyDTO();
    	ReplyDTO.setF_code(f_code);
    	ReplyDTO.setR_code(r_code);
    	
    	UserDAO dao = new UserDAO();
    	//댓글삭제
    	dao.deleteComment(ReplyDTO);
    	//댓글 select
    	List<ReplyDTO> commentResult = dao.selectCommentList(f_code);
    	JSONArray obj = JSONArray.fromObject(commentResult);
    	
    	try {		
    	response.setContentType("application/x-json; charset=UTF-8");
    	response.getWriter().print(obj);
    	}catch(IOException e) {
    		e.printStackTrace();
    	}
return null;
}
}
