package kr.or.mc.admin.dao;

/*
  
 
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

import kr.or.mc.common.dto.CategoryDTO;
import kr.or.mc.common.dto.ChartDTO;
import kr.or.mc.common.dto.MemberDTO;
import kr.or.mc.common.dto.NutritionDTO;
import kr.or.mc.common.dto.OrderDetailDTO;
import kr.or.mc.common.dto.OrdersDTO;
import kr.or.mc.common.dto.ProductDTO;
import kr.or.mc.common.utils.DB_Close;

public class AjaxDAO {
	private static AjaxDAO ajaxDao;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	DataSource ds = null;

	// DB연결
	public AjaxDAO() {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");// java:comp/env/ + name
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 싱글톤
	public static synchronized AjaxDAO getInstance() {
		if (ajaxDao == null) {
			ajaxDao = new AjaxDAO();
		}
		return ajaxDao;
	}

	// 카테고리 리스트
	public List<CategoryDTO> jobList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = new ArrayList();

		try {
			conn = ds.getConnection();
			String sql = "select product_category from category";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB_Close.close(conn); // 반환
			DB_Close.close(rs);
			DB_Close.close(pstmt);
		}
		return list;

	}

	// 월 매출 평균
	public int MonthAvg() {
		String sql = "select round(avg(payment_price))\r\n"
				+ "from (select payment_price, extract(day from payment_date)\r\n" + "from orders\r\n"
				+ "where extract(month from payment_date) = '5')";
		Connection conn = null;
		int total = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt(1);
			}
			conn.close();
		} catch (SQLException e) {
			System.err.println(e);
			System.err.println("MonthAvg SQLException error");
		} finally {
			DB_Close.close(pstmt);
			DB_Close.close(rs);
		}
		return total;
	}

	// 일 매출 평균
	public int DayAvg() {
		String sql = "select avg(payment_price)\r\n" + "from (select payment_price, extract(day from payment_date)\r\n"
				+ "from orders\r\n" + "where extract(day from payment_date) = '26')\r\n" + "";
		Connection conn = null;
		int total = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt(1);
			}
			conn.close();
		} catch (SQLException e) {
			System.err.println(e);
			System.err.println("DayAvg SQLException error");
		} finally {
			DB_Close.close(pstmt);
			DB_Close.close(rs);
		}
		return total;
	}

	// 최다주문 회원
	public String MerberTopOrder() {
		String sql = "select o_id\r\n" + "from(\r\n" + "select o_id, count(o_id) as order_count\r\n" + "from orders\r\n"
				+ "group by o_id order by order_count desc)\r\n" + "where ROWNUM = 1\r\n" + "";
		Connection conn = null;
		String result = "";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString(1);
			}
			conn.close();
		} catch (SQLException e) {
			System.err.println(e);
			System.err.println("MerberTopOrder SQLException error");
		} finally {
			DB_Close.close(pstmt);
			DB_Close.close(rs);
		}
		return result;
	}

	// 총 회원
	public int MemberTotal() {
		String sql = "select count(*) as total_member from member";
		Connection conn = null;
		int result = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
			conn.close();
		} catch (SQLException e) {
			System.err.println(e);
			System.err.println("MerberTopOrder SQLException error");
		} finally {
			DB_Close.close(pstmt);
			DB_Close.close(rs);
		}
		return result;
	}

	// 매장별 주문 건수
	public List<ChartDTO> MainChart() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<ChartDTO> list = null;
		try {
			conn = ds.getConnection();
			String sql = "select s_name, count(*) as order_count\r\n" + "from orders\r\n" + "group by s_name\r\n" + "";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<ChartDTO>();
			while (rs.next()) {
				ChartDTO chartDto = new ChartDTO();
				chartDto.setS_name(rs.getString("s_name"));
				chartDto.setOrder_count(rs.getInt("order_count"));
				list.add(chartDto);
			}

		} catch (Exception e) {
			System.out.println("MainChart : " + e.getMessage());
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

	//  메뉴별 Best
	public String MenuBest(String product_category) {
		String sql = "select product_name\r\n" + 
				"from(select product_name, count(*) as kwc\r\n" + 
				"from (select *\r\n" + 
				"from order_detail join orders on order_detail.order_code = orders.order_code\r\n" + 
				"                  join product on order_detail.product_code = product.product_code)\r\n" + 
				"                  where product_category = ?\r\n" + 
				"                  group by product_name\r\n" + 
				"                  order by kwc desc)\r\n" + 
				"where ROWNUM = 1" + "";
		Connection conn = null;
		String result = "";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product_category);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString(1);
			}
			conn.close();
		} catch (SQLException e) {
			System.err.println(e);
			System.err.println("BurgerBest SQLException error");
		} finally {
			DB_Close.close(pstmt);
			DB_Close.close(rs);
		}
		return result;
	}
	
	
	// 메뉴별 Worst
		public String MenuWorst(String product_category) {
			String sql = "select product_name\r\n" + 
					"from(select product_name, count(*) as kwc\r\n" + 
					"from (select *\r\n" + 
					"from order_detail join orders on order_detail.order_code = orders.order_code\r\n" + 
					"                  join product on order_detail.product_code = product.product_code)\r\n" + 
					"                  where product_category = ?\r\n" + 
					"                  group by product_name\r\n" + 
					"                  order by kwc asc)\r\n" +  
					"where ROWNUM = 1\r\n" + ""; 
			Connection conn = null;
			String result = "";
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, product_category);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					result = rs.getString(1);
				}
				conn.close();
			} catch (SQLException e) {
				System.err.println(e);
				System.err.println("BurgerWorst SQLException error");
			} finally {
				DB_Close.close(pstmt);
				DB_Close.close(rs);
			}
			return result;
		}
	
	

}
