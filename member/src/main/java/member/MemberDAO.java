package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDAO {

	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	public MemberDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			System.out.println("지정한 이름의 객체를 찾을 수 없습니다 " + e);
		} finally {
			if(conn != null )try {
				conn.close();
			} catch (SQLException e2) {
			}
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
		}
	}
	
	
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setUserid(rs.getString("userid"));
		dto.setUserpw(rs.getString("userpw"));
		dto.setUsername(rs.getString("username"));
		dto.setGender(rs.getString("gender"));
		dto.setEmail(rs.getString("email"));
		return dto;
	}
	
	//전체출력
	public List<MemberDTO> selectAll(String search) {
		ArrayList<MemberDTO> list = new ArrayList<>();
		String sql = "select * from member"
					+ "		where"
					+ "			userid like '%' || ? || '%'"
					+ "			or"
					+ "			username like '%' || ? || '%'"
					+ " order by username, userid";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	// 회원가입
	public int insert(MemberDTO dto) {
		int row = 0;
		String sql = "insert into member ("
					+ "		userid,"
					+ "		userpw,"
					+ "		username,"
					+ "		gender,"
					+ "		email"
					+ ") values ("
					+ " ?, ?, ?, ?, ? "
					+ ")";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			pstmt.setString(3, dto.getUsername());
			pstmt.setString(4, dto.getGender());
			pstmt.setString(5, dto.getEmail());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	// 정보수정
	
	// 탈퇴

	
	
	
}
