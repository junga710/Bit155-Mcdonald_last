package kr.or.mc.user.service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.user.dao.UserDAO;
import kr.or.mc.user.service.RegisterService;
public class RegisterService implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      ActionForward forward = new ActionForward();
      MemberDTO memberdto = new MemberDTO();
      UserDAO boarddao = new UserDAO();

      /*
       * String m_id = request.getParameter("id"); 
       * String password = request.getParameter("pwd"); 
       * String name = request.getParameter("mname");
       * String email = request.getParameter("email"); 
       * String post_code = request.getParameter("sample6_postcode"); 
       * String address = request.getParameter("sample6_address"); 
       * String address_detail = request.getParameter("sample6_detailAddress"); 
       * String addressSum = address + "/" + address_detail; 
       * String phone = request.getParameter("pnum");
       
       * System.out.println(m_id+"/"+password+"/"+name+"/"+email+"/"+post_code+"/"+ address+"/"+phone);
       */
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
      
      //result = boarddao.MemRegister(m_id, password, name, email, post_code, addressSum, phone);
      result = boarddao.MemRegister(memberdto);
      System.out.println("result : " + result);
      forward.setPath("/Mcdonald_main.jsp");

      return forward;
   }

   

}