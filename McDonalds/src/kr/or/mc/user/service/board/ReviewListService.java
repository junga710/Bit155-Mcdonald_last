package kr.or.mc.user.service.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.user.dao.UserDAO;

public class ReviewListService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//정아누나꺼~
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

