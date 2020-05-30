package kr.or.mc.user.service.mypage;

import java.io.IOException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;
//import kr.or.mc.user.service.RegisterService;
public class RegisterService implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      ActionForward forward = new ActionForward();
      MemberDTO memberdto = new MemberDTO();
      UserDAO boarddao = new UserDAO();
     
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
      //addressSum
      int result = 0;
      
      result = boarddao.MemRegister(memberdto);
      forward.setPath("/Mcdonald_main.jsp");

      return forward;
   }

   

}