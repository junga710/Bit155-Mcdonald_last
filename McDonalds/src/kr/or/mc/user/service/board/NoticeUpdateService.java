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

public class NoticeUpdateService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ActionForward forward = new ActionForward();
		UserDAO userDAO = new UserDAO();
		BoardNoticeDTO BoardNoticeDTO = new BoardNoticeDTO();
	
		
		System.out.println("수정 진행되는지 확인 service");
		
		int n_code = Integer.parseInt(request.getParameter("n_code").trim()); 
		
		System.out.println("n_code : " + n_code);
		
		String n_title = request.getParameter("n_title").trim();
		String n_content = request.getParameter("n_content").trim();
		
		System.out.println("n_title 나옴?"+ n_title);
		System.out.println("n_content 나옴?" + n_content);
		/* System.out.println("n_code" + n_code); */

		BoardNoticeDTO.setN_title(n_title);
		BoardNoticeDTO.setN_content(n_content);
		BoardNoticeDTO.setN_code(n_code);
		
		int result = 0;
		try {
			result = userDAO.NoticeUpdate(BoardNoticeDTO);
		}catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}


		System.out.println("result : " + result);
		forward.setPath("BoardNotice.b");

		
		return forward;
}
}
