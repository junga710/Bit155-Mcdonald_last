package kr.or.mc.admin.service.product;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import kr.or.mc.admin.dao.AdminDAO;
import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.MemberDTO;

public class ProductRegisterService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		MemberDTO memberDto = new MemberDTO();
		AdminDAO adminDao = new AdminDAO();
		
		String uploadpath = request.getSession().getServletContext().getRealPath("vendors/images/DB_images");

		int size = 1024*1024*10; //10M 네이버 계산기
		
		try {
			
			MultipartRequest multi = new MultipartRequest(
					request, //기존에 있는  request 객체의 주소값 
					uploadpath, //실 저장 경로 (배포경로)
					size, //10M
					"UTF-8",
					new DefaultFileRenamePolicy() //파일 중복(upload 폴더 안에:a.jpg -> a_1.jpg(업로드 파일 변경) )
			);

			int product_code = Integer.parseInt(multi.getParameter("product_code").trim());
			int nutrition_code = Integer.parseInt(multi.getParameter("product_code").trim()); //상품번호 = 영양코드
			String product_name = multi.getParameter("product_name").trim();
			int product_price = Integer.parseInt(multi.getParameter("product_price").trim());
			String product_category = multi.getParameter("product_category").trim();
			String product_kind = multi.getParameter("product_kind").trim();
			
			Enumeration filenames = multi.getFileNames();
			
			String file = (String)filenames.nextElement();
			String product_image = multi.getFilesystemName(file);
			
			if(product_image == null) {
				product_image = "default.png";
			}
			
			int weight = Integer.parseInt(multi.getParameter("weight").trim());
			int calorie = Integer.parseInt(multi.getParameter("calorie").trim());
			int sugar = Integer.parseInt(multi.getParameter("sugar").trim());
			int protein = Integer.parseInt(multi.getParameter("protein").trim());
			int fat = Integer.parseInt(multi.getParameter("fat").trim());
			int natrium = Integer.parseInt(multi.getParameter("natrium").trim());
			int caffeine = Integer.parseInt(multi.getParameter("caffeine").trim());

			int result2 = 0;
			result2 = adminDao.ProductRegisterNut(nutrition_code, weight, calorie, sugar, protein, 
					fat, natrium, caffeine);

			int result = 0;
			result = adminDao.ProductRegister(product_code, nutrition_code, product_name, product_price, 
					product_kind, product_image, product_category);
			
			
			forward.setPath("Product.p");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}