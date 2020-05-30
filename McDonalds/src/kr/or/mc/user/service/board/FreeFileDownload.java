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

		try {
			byte[] b = new byte[4096]; // 4kb //요기는 필요에 따라 조정 가능
			FileInputStream in = new FileInputStream(FilePath); // 실 저장 경로에서

			ServletContext context = request.getSession().getServletContext();

			String sMimeType = context.getMimeType(FilePath); // 파일의 타입 정보(sMimeType = jar,war,zip 등등)
			if (sMimeType == null) {
				sMimeType = "application/octet-stream";
			}
			response.setContentType(sMimeType);
			response.setHeader("Content-Disposition",
					"attachment;filename=" + new String(f_file_upload.getBytes(), "ISO8859_1")); // filename.getBytes(),"ISO8859_1")
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
