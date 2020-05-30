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
import kr.or.mc.user.service.ajax.DeleteCommentService;
import kr.or.mc.user.service.ajax.BasketAddService;
import kr.or.mc.user.service.ajax.BasketDeleteService;
import kr.or.mc.user.service.ajax.BasketLoadFullService;
import kr.or.mc.user.service.ajax.BasketLoadService;
import kr.or.mc.user.service.ajax.FreeListSearchService;
import kr.or.mc.user.service.ajax.InsertCommentService;
import kr.or.mc.user.service.ajax.OrderPageBurgerService;
import kr.or.mc.user.service.ajax.PaymentInfoService;
import kr.or.mc.user.service.ajax.SelectCommentService;
import kr.or.mc.user.service.ajax.SelectBurgerModalService;
import kr.or.mc.user.service.ajax.SelectShopService;
import kr.or.mc.user.service.ajax.UpdateCommentService;
import kr.or.mc.user.service.ajax.UserMenuDetailService;
import kr.or.mc.user.service.board.FreeDeleteService;
import kr.or.mc.user.service.board.FreeDetailService;
import kr.or.mc.user.service.board.FreeListService;
import kr.or.mc.user.service.board.FreeRegisterService;
import kr.or.mc.user.service.board.FreeUpdatePageService;
import kr.or.mc.user.service.board.FreeUpdateService;
import kr.or.mc.user.service.board.NoticeDeleteService;
import kr.or.mc.user.service.board.NoticeDetailService;
import kr.or.mc.user.service.board.NoticeListService;
import kr.or.mc.user.service.board.NoticeRegisterService;
import kr.or.mc.user.service.board.NoticeUpdatePageService;
import kr.or.mc.user.service.board.NoticeUpdateService;

@WebServlet("*.ua")
public class UserAjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserAjaxController() {
		super();
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url_Command = requestURI.substring(contextPath.length());

		Action action = null;
		ActionForward forward = null;
		if (url_Command.equals("/UserMenuDetail.ua")) { // 공지사항 목록 뿌려주는 로직
			action = new UserMenuDetailService();
			forward = action.execute(request, response);
		} else if (url_Command.equals("/OrderPageBurger.ua")) {
			action = new OrderPageBurgerService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/SelectShop.ua")) { // 지도 화면 보여주는 로직
			forward = new ActionForward();
			forward.setPath("/WEB-INF/user/order/Mcdonald_selectStore.jsp");

		} else if (url_Command.contentEquals("/SelectShopok.ua")) { // 매장마커 클릭 순간에 로직 컨트롤러
			action = new SelectShopService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/search.ua")) {
			action = new FreeListSearchService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/basketAdd.ua")) { // 장바구니 추가
			action = new BasketAddService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/basketLoad.ua")) { // 장바구니 단품 or 세트 or 단품&&세트 로드
			action = new BasketLoadService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/basketLoadFull.ua")) { // 장바구니에 담긴 모든것 로드
			action = new BasketLoadFullService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/basketDelete.ua")) { // 장바구니 하나씩 삭제
			action = new BasketDeleteService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/SelectCommentList.ua")) {
			System.out.println("selectcomment ajax 시작 ok");
			action = new SelectCommentService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/InsertComment.ua")) {
			System.out.println("insertcomment ajax 시작 ok");
			action = new InsertCommentService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/DeleteComment.ua")) {
			System.out.println("ajax타나ssssscomaet");
			action = new DeleteCommentService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/UpdateComment.ua")) {
			System.out.println("ajax타나updatesscomaet");
			action = new UpdateCommentService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/SelectBurgerModal.ua")) {
			action = new SelectBurgerModalService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/search.ua")) {
			action = new FreeListSearchService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/basketAdd.ua")) {
			action = new BasketAddService();
			forward = action.execute(request, response);
		} else if (url_Command.contentEquals("/paymentInfo.ua")) {
			action = new PaymentInfoService();
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
