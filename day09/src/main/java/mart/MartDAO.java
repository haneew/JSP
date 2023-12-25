package mart;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.driver.OracleDriver;

public class MartDAO {
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Connection getConnection( ) throws Exception {
		Class.forName(OracleDriver.class.getName());
		return DriverManager.getConnection(url, user, password);
	}
	
	private void close() {
		try {
			if(rs != null) 	rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null)  conn.close();
		} catch (Exception e) {	}
	}

	
	private MartDTO mapping(ResultSet rs) throws SQLException {
		MartDTO dto = new MartDTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setName(rs.getString("name"));
		dto.setPrice(rs.getInt("price"));
		return dto;
	}
	
	
	//전체출력 (select * from product)
	public List<MartDTO> selectList() {
		ArrayList<MartDTO> list = new ArrayList<>();
		String sql = " select * from product ";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	finally {close();}
		return list;
	}
	
	//단일출력 (select* from product where idx = ?)
	public MartDTO selectOne(int idx) {
		String sql = " select * from product where idx = ? ";
		MartDTO dto = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = mapping(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return dto;
	}
	
	//추가하기( insert into product (name, price) values ( ?, ?) )
	public int insert(MartDTO dto) {
		int row = 0;
		String sql = " insert into product (name, price) values ( ?, ?) ";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getPrice());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return row;
	}
	
	
	//삭제하기 (delete product where idx = ? )
	public int delete(int idx) {
		int row = 0;
		String sql = " delete product where idx = ? ";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return row;
	}
	
	//수정하기 (update product set name = ?, price = ? where idx = ?)
	public int update(MartDTO dto) {
		int row = 0;
		String sql =" update product set name = ?, price = ? where idx = ? ";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getPrice());
			pstmt.setInt(3, dto.getIdx());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally { close();}
		return row;
	}
	
	public int selectCurrSeq() {
		int idx = 0;
		String sql = " select max(idx) from product ";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				idx = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return idx;
	}
	
	
}
