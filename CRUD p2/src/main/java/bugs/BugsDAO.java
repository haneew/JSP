package bugs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BugsDAO {
	
	
	private static BugsDAO instance = new BugsDAO();
	public static BugsDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	
	public BugsDAO() {
		try {
			init =  new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			System.out.println("지정한 이름의 객체를 찾을 수 없습니다 : " + e);
		} finally {
			if (conn != null ) try { conn.close(); } catch(SQLException e) {}
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
	
	private BugsDTO mapping(ResultSet rs) throws SQLException {
		BugsDTO dto = new BugsDTO();
		dto.setId(rs.getInt("id"));
		dto.setArtist_name(rs.getString("artist_name"));
		dto.setArtist_img(rs.getString("artist_img"));
		dto.setAlbum_name(rs.getString("album_name"));
		dto.setAlbum_img(rs.getString("album_img"));
		dto.setName(rs.getString("name"));
		dto.setGenre(rs.getString("genre"));
		dto.setPlayTime(rs.getInt("playTime"));
		dto.setLyrics(rs.getString("lyrics"));
		dto.setIsTitle(rs.getInt("isTitle"));
		return dto;
	}
	public List<BugsDTO> selectAll(String search){
		ArrayList<BugsDTO> list = new ArrayList<>();
		String sql = "select * from bugs "
						+ " where"
						+ " 	name like '%' || ? || '%' "
						+ "   or"
						+ "   artist_name like '%' || ? || '%'  "
						+ " order by artist_name, id";
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
		} finally { close(); }
		System.out.println(list.size());
		return list;
	}
	public BugsDTO selectOne(int id) {
		BugsDTO dto = null;
		String sql = "select * from bugs where id = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = mapping(rs);
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close(); }
		return dto;
	}
	
	public int update(BugsDTO dto) {
		int row = 0;
		String sql  = "update bugs"
				+ "		set"
				+ "			artist_name = ?,"
				+ "			album_name = ?,"
				+ "			name = ?,"
				+ "			genre = ?,"
				+ "			playTime = ?,"
				+ "			isTitle = ?,"
				+ "			lyrics = ?"
				+ "		where"
				+ "			id = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getArtist_name());
			pstmt.setString(2, dto.getAlbum_name());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getGenre());
			pstmt.setInt(5, dto.getPlayTime());
			pstmt.setInt(6, dto.getIsTitle());
			pstmt.setString(7, dto.getLyrics());
			pstmt.setInt(8, dto.getId());
			row = pstmt.executeUpdate();
		} catch (Exception e) { 
			e.printStackTrace();
		} finally { close(); }
		return row;
	}
	
		
	public int insert(BugsDTO dto) {
		int row = 0;
		String sql = "insert into bugs ("
				+ " 		artist_name,"
				+ " 		album_name,"
				+ " 		name,"
				+ " 		genre,"
				+ " 		playTime,"
				+ " 		isTitle,"
				+ " 		lyrics "
				+ "	) values ( "
				+ "		?, ?, ?, ?, ?, ?, ? "	
				+ " )";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getArtist_name());
			pstmt.setString(2, dto.getAlbum_name());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getGenre());
			pstmt.setInt(5, dto.getPlayTime());
			pstmt.setInt(6, dto.getIsTitle());
			pstmt.setString(7, dto.getLyrics());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally { close(); }
		return row;
	}
	
	public int delete(int id) {
		int row = 0;
		String sql = "delete from bugs where id = ?	";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	

	
	
	
	
	
	
	
}
