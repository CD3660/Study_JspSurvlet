package usertbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class usertbl2DAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;

	private final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String user = "hanul";
	private final String pw = "0000";

	public boolean isConnected() {
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

	public ArrayList<usertbl2DTO> selectList() {
		ArrayList<usertbl2DTO> list = new ArrayList<>();
		if (!isConnected())
			return list;
		try {
			ps = conn
					.prepareStatement("select USER_NO ,USER_NAME, BIRTHDAY, BLOOD_TYPE from USERTBL2 order by USER_NO");
			rs = ps.executeQuery();
			while (rs.next()) {
				usertbl2DTO dto = new usertbl2DTO();
				dto.setUserNo(rs.getInt("USER_NO"));
				dto.setUserName(rs.getString("USER_NAME"));
				dto.setBirthday(rs.getInt("BIRTHDAY"));
				dto.setBloodType(rs.getString("BLOOD_TYPE"));
				list.add(dto);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	public usertbl2DTO selectOne(int userNo) {
		usertbl2DTO dto = new usertbl2DTO();
		if (!isConnected())
			return dto;
		try {
			ps = conn.prepareStatement("select USER_NO ,USER_NAME, BIRTHDAY, BLOOD_TYPE from USERTBL2 where USER_NO=?");
			ps.setInt(1, userNo);
			rs = ps.executeQuery();
			if (rs.next()) {
				dto.setUserNo(rs.getInt("USER_NO"));
				dto.setUserName(rs.getString("USER_NAME"));
				dto.setBirthday(rs.getInt("BIRTHDAY"));
				dto.setBloodType(rs.getString("BLOOD_TYPE"));
			}
			return dto;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public boolean insert(usertbl2DTO dto) {
		if (!isConnected())
			return false;
		try {
			ps = conn.prepareStatement(
					"insert into USERTBL2 (USER_NO, USER_NAME, BIRTHDAY, BLOOD_TYPE) values (?, ?, ?, ?)");
			ps.setInt(1, dto.getUserNo());
			ps.setString(2, dto.getUserName());
			ps.setInt(3, dto.getBirthday());
			ps.setString(4, dto.getBloodType());
			if (ps.executeUpdate() >= 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}

	public boolean update(usertbl2DTO dto) {
		if (!isConnected())
			return false;
		try {
			ps = conn.prepareStatement("update USERTBL2 set BIRTHDAY=?, BLOOD_TYPE=? where USER_NO=?");
			ps.setInt(1, dto.getBirthday());
			ps.setString(2, dto.getBloodType());
			ps.setInt(3, dto.getUserNo());
			if (ps.executeUpdate() >= 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}

	public boolean delete(int userNo) {
		if (!isConnected())
			return false;
		try {
			ps = conn.prepareStatement("delete from USERTBL2 where USER_NO=?");
			ps.setInt(1, userNo);
			if (ps.executeUpdate() >= 1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
