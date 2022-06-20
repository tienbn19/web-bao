package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Bao;

public class BaoDAO extends DBConnect {
	public List<Bao> list() {
		List<Bao> list = new ArrayList<Bao>();
		try {
			String sql = "select * from demo.bao";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt("id");
				String tieuDe = rs.getString("tieuDe");
				String theLoai = rs.getString("theLoai");
				String noiDung1 = rs.getString("noiDung1");
				String noiDung2 = rs.getString("noiDung2");
				String image = rs.getString("image");

				list.add(new Bao(id, tieuDe, theLoai, noiDung1, noiDung2, image));
			}

		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}

	public void add_Bao(Bao b) {
		String sql = "insert into demo.bao(tieuDe, theLoai, noiDung1, noiDung2, image) values(?,?,?,?,?)";
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setNString(1, b.getTieuDe());
			st.setNString(2, b.getTheLoai());
			st.setNString(3, b.getNoiDung1());
			st.setNString(4, b.getNoiDung2());
			st.setNString(5, b.getImage());
			st.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e);
		}
	}

	public void delete_Bao(int id) {
		String sql = "delete from demo.bao where id = ?";
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e);
		}

	}

	public Bao load_Bao(int id) {
		Bao Bao = new Bao();
		try {
			String sql = "select * from demo.bao where id = ?";
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				Bao.setTieuDe(rs.getString("tieuDe"));
				Bao.setTheLoai(rs.getString("theLoai"));
				Bao.setNoiDung1(rs.getString("noiDung1"));
				Bao.setNoiDung2(rs.getString("noiDung2"));
				Bao.setImage(rs.getString("image"));
			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return Bao;
	}

	public void update_Bao(Bao b) {

		String sql = "update demo.bao set tieuDe=?, theLoai=?, noiDung1=?, noiDung2=?, image=? where id=?";
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setNString(1, b.getTieuDe());
			st.setNString(2, b.getTheLoai());
			st.setNString(3, b.getNoiDung1());
			st.setNString(4, b.getNoiDung2());
			st.setNString(5, b.getImage());
			st.setInt(6, b.getId());
			st.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
