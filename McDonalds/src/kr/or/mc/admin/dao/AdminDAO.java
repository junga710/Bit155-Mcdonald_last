package kr.or.mc.admin.dao;

/*
  회원관리 
  1. 리스트 출력 : MemberList()
  2. 상세보기 : MemberDetail(String m_id) 
  3. 등록하기 : MemberRegister
  4. 수정하기 : MemberUpdate
  5. 삭제하기 : MemberDelete
  
  주문관리
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.common.utils.DB_Close;

public class AdminDAO {
	private static AdminDAO adminDao;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	DataSource ds = null;

	// DB연결
	public AdminDAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");// java:comp/env/ + name
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 싱글톤
	public static synchronized AdminDAO getInstance() {
		if (adminDao == null) {
			adminDao = new AdminDAO();
		}
		return adminDao;
	}

	// 회원관리 - 리스트 출력
	public List<MemberDTO> MemberList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<MemberDTO> list = null;
		try {
			conn = ds.getConnection();
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<MemberDTO>();
			while (rs.next()) {
				MemberDTO membetDto = new MemberDTO();
				membetDto.setM_id(rs.getString("m_id"));
				membetDto.setName(rs.getString("name"));
				membetDto.setEmail(rs.getString("email"));
				membetDto.setPhone(rs.getString("phone"));
				list.add(membetDto);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return list;
	}

	// 회원관리 - 상세보기
	public MemberDTO MemberDetail(String m_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDTO memberDTO = new MemberDTO();
		try {
			conn = ds.getConnection();
			String sql = "select * from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m_id);

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

	// 회원관리 - 등록하기
	public int MemberRegister(String m_id, String password, String name, String email, String post_code, String address,
			String phone) {
		Connection conn = null;// 추가

		try {
			conn = ds.getConnection();

			String sql = "insert into member(m_id,password,name,email,post_code,address,phone) values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, post_code);
			pstmt.setString(6, address);
			pstmt.setString(7, phone);

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

	// 회원관리 - 수정하기
	public int MemberUpdate(String password, String name, String email, String post_code, String address, String phone,
			String m_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();

			String sql = "update member set password = ?, name =?, email = ?, post_code = ?, address = ?, phone = ? WHERE m_id = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, password);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, post_code);
			pstmt.setString(5, address);
			pstmt.setString(6, phone);
			pstmt.setString(7, m_id);

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

	// 회원관리 - 삭제하기
	public int MemberDelete(String m_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			String sql = "delete from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("오류 :" + e.getMessage());
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

//------------------ 회원관리 끝 ------------------

	// 주문관리 - 리스트 출력
	public List<OrdersDTO> OrderList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<OrdersDTO> list = null;
		try {
			conn = ds.getConnection();
			String sql = "select order_code, o_id, s_name, payment_method, payment_price, to_char(payment_date, 'YYYY-MM-DD') as payment_date from orders";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<OrdersDTO>();
			while (rs.next()) {
				OrdersDTO ordersDto = new OrdersDTO();
				ordersDto.setOrder_code(rs.getInt("order_code"));
				ordersDto.setO_id(rs.getString("o_id"));
				ordersDto.setS_name(rs.getString("s_name"));
				ordersDto.setPayment_method(rs.getString("payment_method"));
				ordersDto.setPayment_price(rs.getInt("payment_price"));
				ordersDto.setPayment_date(rs.getString("payment_date"));
				list.add(ordersDto);
			}

		} catch (Exception e) {
			System.out.println("OrderList : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return list;
	}

	// 주문관리 - 상세보기(주문 테이블 + 주소)
	public OrdersDTO OrderDetailAddress(int order_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrdersDTO ordersDto = new OrdersDTO();
		try {
			conn = ds.getConnection();
			String sql = "select o.order_code, o.o_id, o.s_name, o.payment_method, o.payment_price, to_char(payment_date, 'YYYY-MM-DD HH24:MM:SS') as payment_date, m.address\r\n"
					+ "from orders o join member m on o.o_id = m.m_id\r\n"
					+ "where o.order_code = ?                \r\n" + "";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, order_code);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				ordersDto.setOrder_code(rs.getInt("order_code"));
				ordersDto.setO_id(rs.getString("o_id"));
				ordersDto.setS_name(rs.getString("s_name"));

				ordersDto.setPayment_method(rs.getString("payment_method"));
				ordersDto.setPayment_price(rs.getInt("payment_price"));
				ordersDto.setPayment_date(rs.getString("payment_date"));
				String[] temp = rs.getString("address").split("/");
				ordersDto.setAddress(temp[0]);
				ordersDto.setAddress_detail(temp[1]);
			}

		} catch (Exception e) {
			System.out.println("오류 OrderDetailAddress :" + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ordersDto;
	}

	// 주문관리 - 상세보기(주문 상세 + 상품)
	public List<OrderDetailDTO> OrderDetailProduct(int order_code) {
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

	// 주문관리 하는중 ---------------------------------

	// 상품관리 - 리스트 출력
	public List<ProductDTO> ProductList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<ProductDTO> list = null;
		try {
			conn = ds.getConnection();
			String sql = "select product_image, product_code, product_name, product_price, product_kind from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<ProductDTO>();
			while (rs.next()) {
				ProductDTO productDto = new ProductDTO();
				productDto.setProduct_image(rs.getString("product_image"));
				productDto.setProduct_code(rs.getInt("product_code"));
				productDto.setProduct_name(rs.getString("product_name"));
				productDto.setProduct_price(rs.getInt("product_price"));
				productDto.setProduct_kind(rs.getString("product_kind"));
				list.add(productDto);
			}
		} catch (Exception e) {
			System.out.println("ProductList : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return list;
	}

	// 상품관리 - 상세보기(상품)
	public ProductDTO PrductDetail(int product_code) {
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

	// 상품관리 - 상세보기(영양정보)
	public NutritionDTO PrductDetailNut(int product_code) {
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

	// 상품관리 - 삭제하기(상품 테이블)
	public int ProductDelete(int product_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			String sql = "delete from product where product_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product_code);
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

	// 상품관리 - 등록하기
	public int ProductRegister(int product_code, int nutrition_code, String product_name, int product_price,
			String product_kind, int product_stock, String product_image, String product_category) {
		Connection conn = null;// 추가

		try {
			conn = ds.getConnection();

			String sql = "insert into product values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product_code);
			pstmt.setInt(2, nutrition_code);
			pstmt.setString(3, product_name);
			pstmt.setInt(4, product_price);
			pstmt.setString(5, product_kind);
			pstmt.setInt(6, product_stock);
			pstmt.setString(7, product_image);
			pstmt.setString(8, product_category);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProductRegister 오류 : " + e.getMessage());
		} finally {
			DB_Close.close(pstmt);
			try {
				conn.close(); // 받환하기
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 상품관리 - 등록하기(영양소)
	public int ProductRegisterNut(int nutrition_code, int weight, int calorie, int sugar, int protein, int fat,
			int natrium, int caffeine) {
		Connection conn = null;// 추가

		try {
			conn = ds.getConnection();

			String sql = "insert into nutrition values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nutrition_code);
			pstmt.setInt(2, weight);
			pstmt.setInt(3, calorie);
			pstmt.setInt(4, sugar);
			pstmt.setInt(5, protein);
			pstmt.setInt(6, fat);
			pstmt.setInt(7, natrium);
			pstmt.setInt(8, caffeine);

			result = pstmt.executeUpdate();
			System.out.println("DAO result : " + result);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProductRegisterNut 오류 : " + e.getMessage());
		} finally {
			try {
				conn.close(); // 받환하기
				DB_Close.close(pstmt);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 상품관리 - 등록(상품번호 추출)
	public int ProductCode() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			String sql = "select max(product_code)+1 as product_code from product";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = rs.getInt("product_code");
			}

		} catch (Exception e) {
			System.out.println(" PrductCode : " + e.getMessage());
		} finally {
			try {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
				DB_Close.close(conn); // 반환
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
	
	//상품관리 - 상품 수정하기(영양)
	public int ProductUpdateNut(int nutrition_code, int weight, int calorie, int sugar, int protein, int fat,
			int natrium, int caffeine) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();

			String sql = "update nutrition set weight = ?, calorie =?, sugar = ?, protein = ?, fat = ?, natrium = ?, caffeine = ? WHERE nutrition_code = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, weight);
			pstmt.setInt(2, calorie);
			pstmt.setInt(3, sugar);
			pstmt.setInt(4, protein);
			pstmt.setInt(5, fat);
			pstmt.setInt(6, natrium);
			pstmt.setInt(7, caffeine);
			pstmt.setInt(8, nutrition_code);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProductUpdateNut : " + e.getMessage());
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
	
	
	//상품관리 - 상품 수정하기(상품)
	public int ProductUpdate(int product_code, int nutrition_code, String product_name, int product_price,
			String product_kind, int product_stock, String product_image, String product_category) {
		Connection conn = null;// 추가
		PreparedStatement pstmt = null;
		try {
			conn = ds.getConnection();

			String sql = "update product set product_name = ?, product_price =?, product_kind = ?, product_stock = ?, product_image = ?, product_category = ? WHERE product_code = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, product_name);
			pstmt.setInt(2, product_price);
			pstmt.setString(3, product_kind);
			pstmt.setInt(4, product_stock);
			pstmt.setString(5, product_image);
			pstmt.setString(6, product_category);
			pstmt.setInt(7, product_code);

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

	// 상품관리 - 삭제하기(영양 테이블)
	public int ProductDeleteNut(int nutrition_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			String sql = "delete from nutrition where nutrition_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nutrition_code);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("ProductDeleteNut 오류 :" + e.getMessage());
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

}
