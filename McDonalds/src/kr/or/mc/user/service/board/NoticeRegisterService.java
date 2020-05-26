package kr.or.mc.user.service.board;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;

public class NoticeRegisterService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ActionForward forward = new ActionForward();
		BoardNoticeDTO boardNoticeDTO = new BoardNoticeDTO();
		UserDAO UserDAO = new UserDAO();
		
		System.out.println("입력받은 값 있나요");
		
		/* String n_codestr = request.getParameter("n_code"); */
			/* int n_code =Integer.parseInt(n_codestr.trim()); */
		
		
		String n_title = request.getParameter("n_title");
		String n_content = request.getParameter("n_content");
		/*
		 * String n_writer = request.getParameter("n_writer"); String n_write_date =
		 * request.getParameter("n_write_date");
		 */
		
		/*
		 * String n_read_numstr = request.getParameter("n_read_num"); int n_read_num =
		 * Integer.parseInt(n_read_numstr);
		 */
		
		boardNoticeDTO.setN_title(n_title);
		boardNoticeDTO.setN_content(n_content);
		
		
		System.out.println(n_title);
		System.out.println(n_content);
		
		
		int result = UserDAO.BoardNoticeWriter(boardNoticeDTO);
		
		request.setAttribute("result", result);
		
		System.out.println("result : " + result);
		forward.setPath("BoardNotice.b");
		
		return forward;
	}
}
