package kr.or.mc.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.user.service.board.NoticeDetailService;
import kr.or.mc.user.service.board.NoticeListService;
import kr.or.mc.user.service.menu.MenuDetailService;

@WebServlet("*.um")
public class UserMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserMenuController() {
        super();
    }

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;

		if (url_Command.equals("/MenuBurger.um")) { // 메뉴 - 버거페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_hamburger.jsp");
		} else if (url_Command.equals("/MenuBurgerSet.um")) { // 메뉴 - 버거페이지에서 세트페이지로 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_hamburger_set.jsp");
		} else if (url_Command.equals("/MenuMacMorning.um")) { // 메뉴 - 맥모닝 페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_mcmorning.jsp");
		} else if (url_Command.equals("/MenuMacMorningSet.um")) { // 메뉴 - 맥모닝 페이지 에서 맥모닝 세트 페이지로 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_mcmorning_set.jsp");
		} else if (url_Command.equals("/MenuSideDesert.um")) { // 메뉴 - 디저트 페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_sidemenu.jsp");
		} else if (url_Command.equals("/MenuSideDesertSet.um")) { // 메뉴 - 디저트 페이지에서 디서트 세트 페이지로 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_sidemenu_set.jsp");
		} else if (url_Command.equals("/MenuMacBeverage.um")) { // 메뉴 - 음료 페이지 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_mcCafe.jsp");
		} else if (url_Command.equals("/MenuMacBeverageSet.um")) { // 메뉴 - 음료 페이지 에서 음료세트 페이지로 이동
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/menu/Mcdonald_menu_mcCafe_set.jsp");
		} else if (url_Command.equals("/BurgerDetail.um")) { // 메뉴 - 우철 디테일
			action = new MenuDetailService();
			forward = action.execute(request, response);
		}
		
		
		

		if (forward != null) {
			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
			dis.forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
