package usertbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserTblDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String user = "hanul";
	private final String pw = "0000";

	public boolean isConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
			if (!conn.isClosed()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	// 전체 목록 조회
	public ArrayList<UserTblDTO> selectList() {
		ArrayList<UserTblDTO> list = new ArrayList<>();
		if (!isConnection())
			return list;
		try {
			ps = conn.prepareStatement("select * from usertbl");
			rs = ps.executeQuery();
			while (rs.next()) {
				UserTblDTO dto = new UserTblDTO();
				dto.setUserName(rs.getString("USER_NAME"));
				dto.setBirthYear(rs.getInt("BIRTH_YEAR"));
				dto.setAddress(rs.getString("ADDRESS"));
				dto.setMobile(rs.getString("MOBILE"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// 회원 1명 정보 조회
	public UserTblDTO selectOne(String name) {
		UserTblDTO dto = new UserTblDTO();
		if (!isConnection())
			return dto;
		try {
			ps = conn.prepareStatement("select * from usertbl where USER_NAME = ?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				dto.setUserName(rs.getString("USER_NAME"));
				dto.setBirthYear(rs.getInt("BIRTH_YEAR"));
				dto.setAddress(rs.getString("ADDRESS"));
				dto.setMobile(rs.getString("MOBILE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 회원정보수정
	public boolean update(UserTblDTO dto) {
		if (!isConnection()) return false;
		try {
			ps = conn.prepareStatement("update usertbl set birth_year = ?, address= ?, MOBILE = ? where user_name=?");
			ps.setInt(1, dto.getBirthYear());
			ps.setString(2, dto.getAddress());
			ps.setString(3, dto.getMobile());
			ps.setString(4, dto.getUserName());
			if(ps.executeUpdate()>=1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(String userName) {
		if (!isConnection()) return false;
		try {
			ps = conn.prepareStatement("delete from usertbl where user_name = ?");
			ps.setString(1, userName);
			if(ps.executeUpdate()>=1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean insert(UserTblDTO dto) {
		if (!isConnection()) return false;
		try {
			ps = conn.prepareStatement("insert into usertbl (user_name, birth_year, address, MOBILE) values (?, ?, ?, ?)");
			ps.setString(1, dto.getUserName());
			ps.setInt(2, dto.getBirthYear());
			ps.setString(3, dto.getAddress());
			ps.setString(4, dto.getMobile());
			if(ps.executeUpdate()>=1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
