package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Song;
import utils.DBConnectionUtil;

public class SongDAO {
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;

	public List<Song> getItems() {
		List<Song> songList = new ArrayList<Song>();
		conn = DBConnectionUtil.getConnection();
		final String SQL = "SELECT id, name, date_create, counter, preview_text, cat_id FROM songs ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(SQL);
			while (rs.next()) {
				Song song = new Song(rs.getInt("id"), rs.getString("name"), rs.getString("date_create"),
						rs.getInt("counter"), rs.getString("preview_text"), rs.getInt("cat_id"));
				songList.add(song);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, st, rs);
		}
		return songList;
	}
	
	public List<Song> getTop5() {
		List<Song> songList = new ArrayList<Song>();
		conn = DBConnectionUtil.getConnection();
		final String SQL = "SELECT id, name, counter FROM songs ORDER BY counter DESC limit 5";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(SQL);
			while (rs.next()) {
				Song song = new Song(rs.getInt("id"), rs.getString("name"),
						rs.getInt("counter"));
				songList.add(song);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, st, rs);
		}
		return songList;
	}
	
	public Song getSongById(int id) {
		Song song = null;
		conn = DBConnectionUtil.getConnection();
		final String SQL = "SELECT id, name, date_create, counter, detail_text  FROM songs WHERE id = ?";
		try {
			pst = conn.prepareStatement(SQL);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				song = new Song(rs.getInt("id"), rs.getString("name"), rs.getString("date_create"),
						rs.getInt("counter"), rs.getString("detail_text"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(conn, pst, rs);
		}
		return song;
	}
}
