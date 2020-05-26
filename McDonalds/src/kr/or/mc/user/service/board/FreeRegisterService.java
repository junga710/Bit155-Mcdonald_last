package kr.or.mc.user.service.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;

public class FreeRegisterService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String uploadpath = request.getSession().getServletContext().getRealPath("upload");
		
		
String type = request.getParameter("type");
		
		
		int size = 1024*1024*10; //10M 네이버 계산기
		ActionForward forward = new ActionForward();
		String context = request.getContextPath();
		//output, input을 만들지 않아도됨, 좋음!!
		MultipartRequest multi = new MultipartRequest(
				request, //기존에 있는  request 객체의 주소값 
				uploadpath, //실 저장 경로 (배포경로)
				size, //10M
				"UTF-8",
				new DefaultFileRenamePolicy() //파일 중복(upload 폴더 안에:a.jpg -> a_1.jpg(업로드 파일 변경) )
		);
		try {
		  
		  ActionForward forward = new ActionForward();
		  forward.setPath("/WEB-INF/user/comm/Mcdonald_board_notice.jsp");
		  System.out.println("셋패스"); return forward;
		 
	}
}
