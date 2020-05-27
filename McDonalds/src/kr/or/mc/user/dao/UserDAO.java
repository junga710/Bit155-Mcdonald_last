package kr.or.mc.user.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import kr.or.mc.common.dto.BoardFreeDTO;
import kr.or.mc.common.dto.BoardNoticeDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.common.utils.DB_Close;

public class UserDAO {

	public static UserDAO userDao;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	DataSource ds = null;

	// DB연결
	public UserDAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");// java:comp/env/ + name
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	// 싱글톤
	public static synchronized UserDAO getInstance() {
		if (userDao == null) {
			userDao = new UserDAO();
		}
		return userDao;
	}

	// 공지게시판 목록 뿌리기
	public List<BoardNoticeDTO> NoticeList() {
		System.out.println("노티스리스트");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardNoticeDTO> list = null;

		try {
			conn = ds.getConnection();
			String sql = "select * from board_notice"; // while
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<BoardNoticeDTO>();

			while (rs.next()) {
				BoardNoticeDTO BoardNotice = new BoardNoticeDTO();
				BoardNotice.setN_code(rs.getInt("n_code"));
				BoardNotice.setN_title(rs.getString("n_title"));
				BoardNotice.setN_content(rs.getString("n_content"));
				BoardNotice.setN_writer(rs.getString("n_writer"));
				BoardNotice.setN_write_date(rs.getString("n_write_date"));
				BoardNotice.setN_read_num(rs.getInt("n_read_num"));
				System.out.println("ㄴㄴㄴ" + BoardNotice);
				list.add(BoardNotice);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return list;

	}

	// 로그인
	// 회원가입
	public int MemRegister(MemberDTO memberdto) {
		Connection conn = null;// 추가
		try {
			conn = ds.getConnection();
			// System.out.println(m_id+"/"+password+"/"+name+"/"+email+"/"+post_code+"/"+address+"/"+phone);
			System.out.println(memberdto.toString() + "투스트링1");
			String sql = "insert into member(m_id,password,name,email,post_code,address,phone) values(?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			/*
			 * pstmt.setString(1, m_id); pstmt.setString(2, password); pstmt.setString(3,
			 * name); pstmt.setString(4, email); pstmt.setString(5, post_code);
			 * pstmt.setString(6, address); pstmt.setString(7, phone);
			 */
			pstmt.setString(1, memberdto.getM_id());
			pstmt.setString(2, memberdto.getPassword());
			pstmt.setString(3, memberdto.getName());
			pstmt.setString(4, memberdto.getEmail());
			pstmt.setString(5, memberdto.getPost_code());
			pstmt.setString(6, memberdto.getAddress());
			pstmt.setString(7, memberdto.getPhone());

			System.out.println(memberdto.toString() + "투스트링2");
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Insert : " + e.getMessage());
			System.out.println("오류나는거야 왜..오류나는 거양..");
		} finally {
			DB_Close.close(pstmt);
			try {
				DB_Close.close(conn); // 반환하기
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	// 로그인 아이디 비밀번호 확인
	public int login(String userId, String userPw) {
		System.out.println("여기오나?");
		System.out.println(userId + userPw);

		Connection conn = null;
		try {
			conn = ds.getConnection();
			String sql = "";
			System.out.println("아이디 : " + userId);
			if (!userId.equals("admin")) {
				sql = "select password from member where m_id = ?";
			} else {
				System.out.println("여ㅑ기티라고우철");
				sql = "select password from admin where a_id = ?";
			}
			// String sql = "select password from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			System.out.println("여기까지 오긴하냐고!!!");

			if (rs.next()) {
				if (rs.getString("password").equals(userPw)) {
					System.out.println("1 반환");
					return 1;
				} else {
					System.out.println("0 반환");
					return 0;
				}
			}
			conn.close(); //
		} catch (Exception e) {
			System.err.println(e);
			System.err.println("login SQLException error");
		} finally {
			DB_Close.close(rs);
			DB_Close.close(pstmt);

		}
		return -1;
	}

	// 공지사항 상세보기
	public BoardNoticeDTO BoardNoticeDetail(int n_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardNoticeDTO boardNoticeDTO = new BoardNoticeDTO();
		System.out.println("상세보기 탔나?");
		try {
			conn = ds.getConnection();
			String sql = "select * from board_notice where n_code = ? ";
			// n_code, n_title, to_char(n_write_date, 'YYYY-MM-DD') as n_write_date,
			// n_read_num, n_content, from board_notice where n_code = ?
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, n_code);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				boardNoticeDTO.setN_code(rs.getInt("n_code"));
				boardNoticeDTO.setN_title(rs.getString("n_title"));
				boardNoticeDTO.setN_write_date(rs.getString("n_write_date"));
				boardNoticeDTO.setN_read_num(rs.getInt("n_read_num"));
				boardNoticeDTO.setN_content(rs.getString("n_content"));
				System.out.println("상세보기 데이터 가져왔는지 보기:" + boardNoticeDTO);
			}

		} catch (Exception e) {
			System.out.println(" boardNoticeDto : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return boardNoticeDTO;
	}

	// 회원정보 수정
	public int MemEdit(MemberDTO memberdto) {
		Connection conn = null;// 추가
		try {
			conn = ds.getConnection();

			System.out.println(memberdto.toString() + "투스트링1");
			String sql = "update member set password = ?, name =?, email = ?, post_code = ?, address = ?, phone = ? WHERE m_id = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memberdto.getPassword());
			pstmt.setString(2, memberdto.getName());
			pstmt.setString(3, memberdto.getEmail());
			pstmt.setString(4, memberdto.getPost_code());
			pstmt.setString(5, memberdto.getAddress());
			pstmt.setString(6, memberdto.getPhone());
			pstmt.setString(7, memberdto.getM_id());

			System.out.println(memberdto.toString() + "투스트링2");
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Insert : " + e.getMessage());
			System.out.println("오류나는거야 왜..오류나는 거양..");
		} finally {
			DB_Close.close(pstmt);
			try {
				DB_Close.close(conn); // 반환하기
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	// 회원정보 목록 뿌려주기위한...
	public MemberDTO MemDetail(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDTO memberDTO = new MemberDTO();
		try {
			conn = ds.getConnection();
			String sql = "select * from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				memberDTO.setM_id(rs.getString("m_id"));
				memberDTO.setPassword(rs.getString("password"));
				memberDTO.setName(rs.getString("name"));
				memberDTO.setEmail(rs.getString("email"));
				memberDTO.setPost_code(rs.getString("post_code"));
				String[] temp = rs.getString("address").split("/");
				memberDTO.setAddress(temp[0]);
				memberDTO.setAddress_detail(temp[1]);
				memberDTO.setPhone(rs.getString("phone"));
			}

		} catch (Exception e) {
			System.out.println("오류 :" + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return memberDTO;
	}

	// 공지사항 작성하기
	public int BoardNoticeWriter(BoardNoticeDTO noticedto) {
		Connection conn = null;// 추가

		try {
			conn = ds.getConnection();

			String sql = "insert into board_notice(n_code,n_title,n_content,n_writer,n_write_date,n_read_num) values(board_notice_sq.nextval,?,?,'admin',sysdate,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, noticedto.getN_title());
			pstmt.setString(2, noticedto.getN_content());
			/*
			 * pstmt.setString(3, noticedto.getN_writer()); pstmt.setString(4,
			 * noticedto.getN_write_date()); pstmt.setInt(5, noticedto.getN_read_num());
			 */

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Insert : " + e.getMessage());
		} finally {
			DB_Close.close(pstmt);
			try {
				DB_Close.close(conn); // 반환하기
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	// 메뉴디테일 - 상세보기(상품)
	public ProductDTO MenuDetail(int product_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO productDto = new ProductDTO();
		try {
			conn = ds.getConnection();
			String sql = "select * from product where product_code = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, product_code);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				productDto.setProduct_code(rs.getInt("product_code"));
				productDto.setProduct_category(rs.getString("product_category"));
				productDto.setProduct_name(rs.getString("product_name"));
				productDto.setProduct_price(rs.getInt("product_price"));
				productDto.setProduct_kind(rs.getString("product_kind"));
				productDto.setProduct_stock(rs.getInt("product_stock"));
				productDto.setProduct_image(rs.getString("product_image"));
			}

		} catch (Exception e) {
			System.out.println(" PrductDetail : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return productDto;
	}

	// 메뉴디테일 - 상세보기(영양)
	public NutritionDTO MenuDetailNut(int product_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NutritionDTO nutritionDto = new NutritionDTO();
		try {
			conn = ds.getConnection();
			String sql = "select n.nutrition_code, n.weight, n.calorie, n.sugar, n.protein, n.fat, n.natrium, n.caffeine\r\n"
					+ "from product p join nutrition n on p.nutrition_code = n.nutrition_code\r\n"
					+ "where p.product_code = ?\r\n" + "";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, product_code);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				nutritionDto.setNutrition_code(rs.getInt("nutrition_code"));
				nutritionDto.setWeight(rs.getInt("weight"));
				nutritionDto.setCalorie(rs.getInt("calorie"));
				nutritionDto.setSugar(rs.getInt("sugar"));
				nutritionDto.setProtein(rs.getInt("protein"));
				nutritionDto.setFat(rs.getInt("fat"));
				nutritionDto.setNatrium(rs.getInt("natrium"));
				nutritionDto.setCaffeine(rs.getInt("caffeine"));
			}

		} catch (Exception e) {
			System.out.println(" PrductDetailNut : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return nutritionDto;
	}

	// 자유게시판 목록 뿌리기
	public List<BoardFreeDTO> FreeList(int cpage, int pagesize) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardFreeDTO> list = null;

		try {
			conn = ds.getConnection();

			String sql = "select * from \r\n"
					+ "(select rownum rn , f_code , f_title , f_content, f_writer, to_char(f_date, 'YYYY-MM-DD') as f_date , f_readnum , f_like, f_file_upload,\r\n"
					+ "f_refer , f_depth , f_step\r\n"
					+ "from ( SELECT * FROM board_free ORDER BY f_refer DESC , f_step ASC)\r\n"
					+ "where rownum <= ?)\r\n" + "where rn >= ?\r\n" + "";

			pstmt = conn.prepareStatement(sql);

			int start = cpage * pagesize - (pagesize - 1); // 1*5 -(5-1) = 1
			int end = cpage * pagesize; // 1 * 5 = 5

			pstmt.setInt(1, end);
			pstmt.setInt(2, start);

			rs = pstmt.executeQuery();
			list = new ArrayList<BoardFreeDTO>();

			while (rs.next()) {
				BoardFreeDTO BoardFree = new BoardFreeDTO();
				BoardFree.setF_code(rs.getInt("f_code"));
				BoardFree.setF_title(rs.getString("f_title"));
				BoardFree.setF_writer(rs.getString("f_writer"));
				BoardFree.setF_date(rs.getString("f_date"));
				BoardFree.setF_readnum(rs.getInt("f_readnum"));
				BoardFree.setF_like(rs.getInt("f_like"));

				BoardFree.setF_refer(rs.getInt("f_refer"));
				BoardFree.setF_depth(rs.getInt("f_depth"));
				BoardFree.setF_step(rs.getInt("f_step"));
				list.add(BoardFree);
			}

		} catch (Exception e) {
			System.out.println("FreeList 오류 " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	// 공지사항 삭제

	public int ProductDelete(int n_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			String sql = "delete from board_notice where n_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, n_code);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("ProductDelete 오류 :" + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(conn);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	// 공지사항 수정
	public int NoticeUpdate(BoardNoticeDTO noticedto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			System.out.println("아아아아아noticedto:" + noticedto);
			String sql = "update board_notice set n_title = ?, n_content =? where n_code = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, noticedto.getN_title());
			pstmt.setString(2, noticedto.getN_content());
			pstmt.setInt(3, noticedto.getN_code());

			System.out.println("noticedto.getN_title()" + noticedto.getN_title());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Update : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(conn); // 반환하기
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	//자유게시판 전체 게시글 개수
	public int totalBoardCount() {
		Connection conn = null;
		PreparedStatement pstmt = null; //
		ResultSet rs = null;
		int totalcount = 0;
		try {
			conn = ds.getConnection();
			String sql = "select count(*) cnt from board_free"; //
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalcount = rs.getInt("cnt"); //
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close(); //
			} catch (Exception e2) {
				System.out.println(e2.getMessage());
			}
		}
		return totalcount;
	}

	// 자유게시판 등록
	public int FreeRegister(BoardFreeDTO boardFreeDto) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = 0;
		try {
			conn = ds.getConnection();
			String sql = "insert into board_free(f_code,f_title,f_content,f_writer,f_date,f_readnum,f_like,f_file_upload,f_refer)"
					+ "values(?,?,?,?,sysdate,0,0,?,?)";
			// refer까지.. step, depth는 XX

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, boardFreeDto.getF_code());
			pstmt.setString(2, boardFreeDto.getF_title());
			pstmt.setString(3, boardFreeDto.getF_content());
			pstmt.setString(4, boardFreeDto.getF_writer());
			pstmt.setString(5, boardFreeDto.getF_file_upload());

			// refer
			int refermax = getMaxRefer();
			int refer = refermax + 1;

			pstmt.setInt(6, refer);

			row = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("FreeRegister : " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				conn.close(); //
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return row;
	}

	// 자유게시판(계층형)서 refer 최대값 추출
	public int getMaxRefer() {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int refer_max = 0;
		try {
			conn = ds.getConnection(); //
			String sql = "select nvl(max(f_refer),0) from board_free";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				refer_max = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getMaxRefer : " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close(); // �
			} catch (Exception e) {

			}
		}
		return refer_max;

	}

	// 자유게시판(계층형) 상세 페이지
	public BoardFreeDTO FreeDetail(int f_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardFreeDTO boardFreeDto = null;

		try {
			conn = ds.getConnection();
			String sql = "select f_code, f_title, f_content, f_writer, to_char(f_date, 'YYYY-MM-DD') as f_date, f_readnum, f_like, f_file_upload, f_refer, f_depth, f_step\r\n"
					+ "from board_free\r\n" + "where f_code = ?\r\n" + "";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, f_code);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				String f_title = rs.getString("f_title");
				String f_content = rs.getString("f_content");
				String f_writer = rs.getString("f_writer");
				String f_date = rs.getString("f_date");
				int f_readnum = rs.getInt("f_readnum");
				int f_like = rs.getInt("f_like");
				String f_file_upload = rs.getString("f_file_upload");

				int f_refer = rs.getInt("f_refer");
				int f_step = rs.getInt("f_depth");
				int f_depth = rs.getInt("f_step");

				boardFreeDto = new BoardFreeDTO();
				boardFreeDto.setF_code(f_code);
				boardFreeDto.setF_title(f_title);
				boardFreeDto.setF_content(f_content);
				boardFreeDto.setF_writer(f_writer);
				boardFreeDto.setF_date(f_date);
				boardFreeDto.setF_readnum(f_readnum);
				boardFreeDto.setF_like(f_like);
				boardFreeDto.setF_file_upload(f_file_upload);
				boardFreeDto.setF_refer(f_refer);
				boardFreeDto.setF_step(f_step);
				boardFreeDto.setF_depth(f_depth);
			}

		} catch (Exception e) {
			System.out.println("FreeDetail: " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();//
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return boardFreeDto;
	}

	// 자유게시판 조회수 증가
	public boolean getReadNum(int f_code) {
		// update jspboard set readnum = readnum + 1 where idx=?
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			conn = ds.getConnection();
			String sql = "update board_free set f_readnum = f_readnum + 1 where f_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, f_code);

			int row = pstmt.executeUpdate();
			if (row > 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {

			}
		}
		return result;
	}
	
	//자유게시판 - 수정
	public int FreeUpdate(BoardFreeDTO boardFreeDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();

			String sql = "update board_free set f_title  = ?, f_content =?, f_writer = ?, f_file_upload = ? WHERE f_code = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, boardFreeDto.getF_title());
			pstmt.setString(2, boardFreeDto.getF_content());
			pstmt.setString(3, boardFreeDto.getF_writer());
			pstmt.setString(4, boardFreeDto.getF_file_upload());
			pstmt.setInt(5, boardFreeDto.getF_code());			
			
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("FreeUpdate : " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				conn.close(); // 받환하기
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
		
	}

	// 자유게시판 - 삭제
	public int FreeDelete(int f_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete from board_free where f_code=?";
		int row = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, f_code);
			row = pstmt.executeUpdate();
			System.out.println("row : " + row);
		} catch (Exception e) {
			System.out.println("FreeDelete : " + e.getMessage());
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return row;
	}

	// 아이디 중복 체크
	public int checkId(String id) {
		System.out.println("여기오나?");
		System.out.println(id);

		Connection conn = null;
		try {
			conn = ds.getConnection();

			System.out.println("아이디 : " + id);
			String sql = "select m_id from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("여기까지 오긴하냐고!!!");

			if (rs.next()) {
				if (rs.getString("m_id").equals(id)) {

					System.out.println("아이디 있어");
					return 1;
				} else {
					System.out.println("아이디 없어");
					return 0;
				}
			}
			conn.close(); //
		} catch (Exception e) {
			System.err.println(e);
			System.err.println("idcheck SQLException error");
		} finally {
			DB_Close.close(rs);
			DB_Close.close(pstmt);

		}
		return -1;
	}

	// orderHistroy 에서 주문조회하기위한 함수
	public List<OrdersDTO> OrderHistoryView(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<OrdersDTO> list = new ArrayList<OrdersDTO>();
		try {
			conn = ds.getConnection();
			String sql = "select o.order_code, o.o_id, o.s_name, o.payment_method, o.payment_price, to_char(payment_date, 'YYYY-MM-DD HH24:MM:SS') as payment_date, m.address\r\n"
					+ "from orders o join member m on o.o_id = m.m_id\r\n" + "where m.m_id = ?                \r\n"
					+ "";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			// set 할수있게 dto 를 만들어봅시다.
			rs = pstmt.executeQuery();
			while (rs.next()) {

				OrdersDTO ordersDTO = new OrdersDTO();

				ordersDTO.setOrder_code(rs.getInt("order_code"));
				ordersDTO.setO_id(rs.getString("o_id"));
				ordersDTO.setS_name(rs.getString("s_name"));

				ordersDTO.setPayment_method(rs.getString("payment_method"));
				ordersDTO.setPayment_price(rs.getInt("payment_price"));
				ordersDTO.setPayment_date(rs.getString("payment_date"));
				String[] temp = rs.getString("address").split("/");
				ordersDTO.setAddress(temp[0]);
				ordersDTO.setAddress_detail(temp[1]);

				list.add(ordersDTO);

			}

		} catch (Exception e) {
			System.out.println("오류 :" + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	// 주문관리 - 상세보기(주문 상세 + 상품)
		public List<OrderDetailDTO> OrderDetailProductView(int order_code) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();
			try {
				conn = ds.getConnection();
				String sql = "select p.product_image, p.product_name, od.order_amount \r\n"
						+ "from order_detail od join product p on od.product_code = p.product_code\r\n"
						+ "where order_code = ?\r\n" + "";
				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, order_code);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					OrderDetailDTO orderDetailDto = new OrderDetailDTO();
					orderDetailDto.setOrder_code(order_code);
					orderDetailDto.setProduct_image(rs.getString("product_image"));
					orderDetailDto.setProduct_name(rs.getString("product_name"));
					orderDetailDto.setOrder_amount(rs.getInt("order_amount"));

					list.add(orderDetailDto);
				}

			pstmt.setInt(1, order_code);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				OrderDetailDTO orderDetailDto = new OrderDetailDTO();
				orderDetailDto.setProduct_image(rs.getString("product_image"));
				orderDetailDto.setProduct_name(rs.getString("product_name"));
				orderDetailDto.setOrder_amount(rs.getInt("order_amount"));

				list.add(orderDetailDto);
			}

		} catch (Exception e) {
			System.out.println(" OrderDetailProduct : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	// 주문 페이지 리스트 띄우기(버거 & 세트)
	public List<ProductDTO> getProductList(String product_category) {
		// 리넡할 객체 선언
		List<ProductDTO> productList = new ArrayList<ProductDTO>();
		Connection conn = null;

		try {
			conn = ds.getConnection();
			String sql = "select product_code, product_name, product_price, product_kind, product_image  from product where product_category = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product_category);
			rs = pstmt.executeQuery();

			System.out.println(product_category);

			while (rs.next()) {
				ProductDTO productDto = new ProductDTO();
				productDto.setProduct_code(rs.getInt("product_code"));
				productDto.setProduct_name(rs.getString("product_name"));
				productDto.setProduct_price(rs.getInt("product_price"));
				productDto.setProduct_kind(rs.getString("product_kind"));
				productDto.setProduct_image(rs.getString("product_image"));

				productList.add(productDto);

			}

		} catch (Exception e) {
			e.printStackTrace();
			productList = null;
		} finally {
			// 자원 반납
			DB_Close.close(rs);
			DB_Close.close(pstmt);
			DB_Close.close(conn);

		}
		return productList;
	}
	//공지게시판 조회수
	public boolean getNoticeReadNum(int n_code) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			conn = ds.getConnection();
			String sql = "update board_notice set n_read_num = n_read_num+1 where n_code=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, n_code);
			int row = pstmt.executeUpdate();
			if (row > 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {

			}
			
		}return result;
		
	}
}
