package kr.or.mc.user.service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;

public class JoinFormEditService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ActionForward forward = new ActionForward();
		MemberDTO memberdto = new MemberDTO();
		UserDAO userdao = new UserDAO();

		memberdto.setM_id(request.getParameter("id"));
	      memberdto.setPassword(request.getParameter("pwd"));
	      memberdto.setName(request.getParameter("mname"));
	      memberdto.setEmail(request.getParameter("email"));
	      memberdto.setPost_code(request.getParameter("sample6_postcode"));
	      String address = request.getParameter("sample6_address"); 
	      String address_detail = request.getParameter("sample6_detailAddress"); 
	      String addressSum = address + "/" + address_detail; 
	      memberdto.setAddress(addressSum);
	      memberdto.setPhone(request.getParameter("pnum"));

		int result = 0;
		try {
			result = userdao.MemEdit(memberdto);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}

		System.out.println("result : " + result);
		forward.setPath("/Mcdonald_main.jsp");  //성공하면 어디갈건지 정해. 

	      return forward;
	   }

}
