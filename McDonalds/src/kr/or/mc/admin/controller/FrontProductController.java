package kr.or.mc.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.admin.service.order.OrderDetailService;
import kr.or.mc.admin.service.order.OrderListService;
import kr.or.mc.admin.service.product.ProductDeleteService;
import kr.or.mc.admin.service.product.ProductDetailService;
import kr.or.mc.admin.service.product.ProductListService;
import kr.or.mc.admin.service.product.ProductRegisterPageService;
import kr.or.mc.admin.service.product.ProductRegisterService;
import kr.or.mc.admin.service.product.ProductUpdatePageService;
import kr.or.mc.admin.service.product.ProductUpdateService;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

@WebServlet("*.p")
public class FrontProductController extends HttpServlet {
       
    public FrontProductController() {
        super();
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response)
 			throws ServletException, IOException {

 		String requestURI = request.getRequestURI();
 		String contextPath = request.getContextPath();
 		String url_Command = requestURI.substring(contextPath.length());

 		Action action = null;
 		ActionForward forward = null;
 		 		
 		if (url_Command.equals("/Product.p")) { // 상품관리 페이지 이동 + 상품리스트 출력 로직
 			action = new ProductListService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductRegisterPage.p")) { // 상품등록 페이지 이동 + 상품번호 추출
 			action = new ProductRegisterPageService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductRegister.p")) { // 상품등록 페이지 이동
 			action = new ProductRegisterService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductDetail.p")) { // 상품상세 페이지 이동 + 상품상세 내용 출력 로직
 			action = new ProductDetailService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductDelete.p")) { // 상품리스트 페이지 이동 + 상품삭제 로직
 			action = new ProductDeleteService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductUpdatePage.p")) { // 상품수정 페이지 이동 + 상품상세 로직
 			action = new ProductUpdatePageService();
			forward = action.execute(request, response);
 		} else if (url_Command.equals("/ProductUpdate.p")) { // 상품수정 페이지 이동 + 상품상세 로직
 			action = new ProductUpdateService();
			forward = action.execute(request, response);
 		} 
 			
 		
 		if (forward != null) {
 			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
 			dis.forward(request, response);
 		}

 	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
