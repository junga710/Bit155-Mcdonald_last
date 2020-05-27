package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.user.dao.UserDAO;

public class FreeDeleteService implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		int f_code = Integer.parseInt(request.getParameter("f_code"));
		
		UserDAO userDao = new UserDAO();
		int result = userDao.FreeDelete(f_code);
		
		forward.setPath("BoardFree.b");

		return forward;
		}
	}
	
