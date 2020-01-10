package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import entity.sanpham;
import entity.thongsokythuat;

public class Databasecauhinh {
private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbphukiendt) {
		this.jdbcTemplate = new JdbcTemplate(dbphukiendt);
	}
	
	public thongsokythuat getCauHinhByID(int id) {
		String sql = "SELECT * FROM thongsokythuat where IdSanPham = ?;";
		thongsokythuat sp = jdbcTemplate.queryForObject(sql, new RowMapper<thongsokythuat>() {
			public thongsokythuat mapRow(ResultSet rs, int rowNum) throws SQLException {
				thongsokythuat sanPham = new thongsokythuat();
				sanPham.setIdSanPham(rs.getInt("IdSanPham"));
				sanPham.setMangHinh(rs.getString("MangHinh"));
				sanPham.setHeDieuHanh(rs.getString("HeDieuHanh"));
				sanPham.setCameraSau(rs.getString("CameraSau"));
				sanPham.setCameraTruoc(rs.getString("CameraTruoc"));
				sanPham.setCpu(rs.getString("CPU"));
				sanPham.setRam(rs.getString("RAM"));
				sanPham.setBoNhoTrong(rs.getString("BoNhoTrong"));
				sanPham.setTheNho(rs.getString("TheNho"));
				sanPham.setTheSim(rs.getString("TheSim"));
				sanPham.setDungLuongPin(rs.getString("DungLuongPin"));
				sanPham.setTrongLuong(rs.getString("TrongLuong"));
				return sanPham;
            }
		}, id);
		return sp;
	}
}
