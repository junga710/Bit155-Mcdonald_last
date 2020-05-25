package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

public class FreeUpdatePageService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//철이꺼
		/*
		 * UserDAO boarddao = new UserDAO(); System.out.println("DAO는 옵니까");
		 * List<BoardNoticeDTO> blist = boarddao.NoticeList();
		 * request.setAttribute("blist", blist); System.out.println("항아ㅗ아오 " + blist);
		 * 
		 * ActionForward forward = new ActionForward();
		 * forward.setPath("/WEB-INF/user/comm/Mcdonald_board_notice.jsp");
		 * System.out.println("셋패스"); return forward;
		 */
	}
}

