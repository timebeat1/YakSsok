package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class fileDAO {

	private Connection conn;

	

	// �����ڸ� ���� db���� ����

	public fileDAO() {

		try {

			String dbURL = "jdbc:mysql://localhost:3308/boarddb";

			String dbID = "root";

			String dbPW = "1234";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPW);

		} catch(Exception e) {

			e.printStackTrace();

		}

	}

	

	public int upload(String fileName, String fileRealName) {

		String SQL = "INSERT INTO FILE VALUES (?, ?)";

		try {

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1,  fileName);

			pstmt.setString(2,  fileRealName);

			return pstmt.executeUpdate();

		} catch(Exception e) {

			e.printStackTrace();

		}

		return -1;

	}}