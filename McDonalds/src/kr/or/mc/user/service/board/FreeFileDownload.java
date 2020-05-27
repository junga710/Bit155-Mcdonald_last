package kr.or.mc.user.service.board;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;

import kr.or.mc.common.action.Action;
import kr.or.mc.common.action.ActionForward;
import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.user.dao.UserDAO;

public class FreeFileDownload implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		BoardFreeDTO boardFreeDto = new BoardFreeDTO();

		String f_file_upload = request.getParameter("f_file_upload");

		// 물리적 경로 얻기
		String savepath = "freeboard";
		String downloadpath = request.getRealPath(savepath);
		String FilePath = downloadpath + "\\" + f_file_upload;

		// out.print(downloadpath +"<br>");
		// out.print(FilePath); //실경로 + 파일명

		try {
			// IO작업 하기

			// 파일을 읽어서 출력
			byte[] b = new byte[4096]; // 4kb //요기는 필요에 따라 조정 가능
			FileInputStream in = new FileInputStream(FilePath); // 실 저장 경로에서

			// 실제 인지할수 있는 타입의 파일들이면 자신의 => contentType
			// application이 인지할 수 없는 확장자 파일은 null 경우에 형식을 잡아준다
			ServletContext context = request.getSession().getServletContext();

			String sMimeType = context.getMimeType(FilePath); // 파일의 타입 정보(sMimeType = jar,war,zip 등등)
			if (sMimeType == null) {
				// 알수 없는 형식의 파일은
				// application/octet-stream 기본값으로 (알수 없는 파일 형식)
				sMimeType = "application/octet-stream";
			}

			// 2. client 전달되는 형식을 지정(Type)
			// response.setContentType("text/html;charset=UTF-8"); html 파일인 경우
			response.setContentType(sMimeType);

			// 3. 인코딩 처리(한글 : 파일이 가지고 있는 한글에 대한 처리)
			// String SEncoding = new String(filename.getBytes("utf-8"),"utf-8");
			// out.println("SEncoding : " + SEncoding);

			// 4. 다운로드(기본 설정) 구현
			// response.setCharacterEncoding("euc-kr");
			// response.setHeader("Content-Disposition","attachment;filename="+SEncoding);
			// 파일 다운로드를 위한 헤더 정보 수정 (파일이름 문자열 다시 인코딩)
			response.setHeader("Content-Disposition",
					"attachment;filename=" + new String(f_file_upload.getBytes(), "ISO8859_1")); // filename.getBytes(),"ISO8859_1")
			// 문서를 읽어 들여서 ISO8859_1 형식으로 변환 ......
			/* attachment를 붙여주면 브라우저는 반드시 다운로드 하게 되어있음 */
			/* ISO8859_1 : 이렇게 정해주면 한글이 안깨짐, 유럽방식임 */

			// 5. 파일 출력하기
			ServletOutputStream out2 = response.getOutputStream();
			int numread;
			while ((numread = in.read(b, 0, b.length)) != -1) {
				out2.write(b, 0, numread);
			}

			out2.flush();
			out2.close();
			in.close();
		} catch (Exception e) {
			System.out.println("Download Exception : " + e.getMessage());
		}

		return null;
	}
}
