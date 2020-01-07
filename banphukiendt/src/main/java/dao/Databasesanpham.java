package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import entity.sanpham;

public class Databasesanpham {

private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbphukiendt) {
		this.jdbcTemplate = new JdbcTemplate(dbphukiendt);
	}
	
	public List<sanpham> getListSanPham() {
		String sql = "select * from phukiendt.sanpham";
		List<sanpham> listSanPham = jdbcTemplate.query(sql, new RowMapper<sanpham>() {

			public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
				sanpham sanPham = new sanpham();
				sanPham.setIdSanPham(rs.getInt("idSanPham"));
				sanPham.setTenSanPham(rs.getString("tenSanPham"));
				sanPham.setDonGia(rs.getInt("donGia"));
				sanPham.setSoLuong(rs.getInt("soLuong"));
				sanPham.setHinhAnh(rs.getString("hinhAnh"));
				sanPham.setMoTa(rs.getString("moTa"));
				sanPham.setIdNhaSanXuat(rs.getInt("idNhaSanXuat"));
				sanPham.setIdLoaiMay(rs.getInt("idLoaiMay"));
				return sanPham;
			}
		});
		return listSanPham;
	}
	
	public List<sanpham> getListSanPhamMoi() {
		String sql = "SELECT * FROM phukiendt.sanpham order by IdSanPham desc limit 6;";
		List<sanpham> listSanPhamMoi = jdbcTemplate.query(sql, new RowMapper<sanpham>() {

			public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
				sanpham sanPham = new sanpham();
				sanPham.setIdSanPham(rs.getInt("IdSanPham"));
				sanPham.setTenSanPham(rs.getString("TenSanPham"));
				sanPham.setDonGia(rs.getInt("DonGia"));
				sanPham.setSoLuong(rs.getInt("SoLuong"));
				sanPham.setHinhAnh(rs.getString("HinhAnh"));
				sanPham.setMoTa(rs.getString("MoTa"));
				sanPham.setIdNhaSanXuat(rs.getInt("IdNhaSanXuat"));
				sanPham.setIdLoaiMay(rs.getInt("IdLoaiMay"));
				return sanPham;
			}
		});
		return listSanPhamMoi;
	}	
	public List<sanpham> timKiemSanPham(String info) {
		String sql = "SELECT * FROM phukiendt.sanpham where TenSanPham like '%" + info + "%';";
		List<sanpham> listSanPham = jdbcTemplate.query(sql, new RowMapper<sanpham>() {

			public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
				sanpham sanPham = new sanpham();
				sanPham.setIdSanPham(rs.getInt("IdSanPham"));
				sanPham.setTenSanPham(rs.getString("TenSanPham"));
				sanPham.setDonGia(rs.getInt("DonGia"));
				sanPham.setSoLuong(rs.getInt("SoLuong"));
				sanPham.setHinhAnh(rs.getString("HinhAnh"));
				sanPham.setMoTa(rs.getString("MoTa"));
				sanPham.setIdNhaSanXuat(rs.getInt("IdNhaSanXuat"));
				sanPham.setIdLoaiMay(rs.getInt("IdLoaiMay"));
				return sanPham;
			}
		});
		return listSanPham;
	}
	public sanpham getSanPhamByID(int id) {
		String sql = "SELECT * FROM sanpham where IdSanPham = ?;";
		sanpham sp = jdbcTemplate.queryForObject(sql, new RowMapper<sanpham>() {
			public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
				sanpham sanPham = new sanpham();
				sanPham.setIdSanPham(rs.getInt("IdSanPham"));
				sanPham.setTenSanPham(rs.getString("TenSanPham"));
				sanPham.setDonGia(rs.getInt("DonGia"));
				sanPham.setSoLuong(rs.getInt("SoLuong"));
				sanPham.setHinhAnh(rs.getString("HinhAnh"));
				sanPham.setMoTa(rs.getString("MoTa"));
				sanPham.setIdNhaSanXuat(rs.getInt("IdNhaSanXuat"));
				sanPham.setIdLoaiMay(rs.getInt("IdLoaiMay"));
				return sanPham;
            }
		}, id);
		return sp;
	}
	
	public List<sanpham> getListSanPhamTheoLoai(int id) {
		String sql = "SELECT * FROM phukiendt.sanpham where IdLoaiMay=?;";
		List<sanpham> listSanPhamMoi = jdbcTemplate.query(sql, new Object[]{id}, new RowMapper<sanpham>() {

			public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
				sanpham sanPham = new sanpham();
				sanPham.setIdSanPham(rs.getInt("IdSanPham"));
				sanPham.setTenSanPham(rs.getString("TenSanPham"));
				sanPham.setDonGia(rs.getInt("DonGia"));
				sanPham.setSoLuong(rs.getInt("SoLuong"));
				sanPham.setHinhAnh(rs.getString("HinhAnh"));
				sanPham.setMoTa(rs.getString("MoTa"));
				sanPham.setIdNhaSanXuat(rs.getInt("IdNhaSanXuat"));
				sanPham.setIdLoaiMay(rs.getInt("IdLoaiMay"));
				return sanPham;
			}
		});
		return listSanPhamMoi;
	}
	
	public int getSoLuong(int id) {
		String sql = "SELECT soLuong FROM phukiendt.sanpham where IdSanPham=?;";
		int result =jdbcTemplate.queryForObject(sql, new Object[]{id}, Integer.class);
		return result;
	}
	
	public int suaSoLuong(int sl, int id) {
		String sql = "UPDATE `phukiendt`.`sanpham` SET `SoLuong` = `SoLuong` - ? WHERE (`idSanPham` = ?);";
		int result = jdbcTemplate.update(sql, sl, id);
		return result;
	}
	
	public void addSanPham(final sanpham sp) {
		String sql = "INSERT INTO `phukiendt`.`sanpham` (`TenSanPham`, `DonGia`, `SoLuong`, `HinhAnh`, `MoTa`, `IdNhaSanXuat`, `IdLoaiMay`) VALUES (?, ?, ?,?,?,?,?);";
		int result = jdbcTemplate.update(sql, sp.getTenSanPham(), sp.getDonGia(), sp.getSoLuong(), sp.getHinhAnh(), sp.getMoTa(), sp.getIdNhaSanXuat(), sp.getIdLoaiMay());
	}
	
	public int suaSanPham(final sanpham sp) {
		String sql = "UPDATE `phukiendt`.`sanpham` SET `TenSanPham` = ?, `DonGia` = ?, `SoLuong` = ?, `HinhAnh` = ?, `MoTa` = ?, `IdNhaSanXuat`= ?, `IdLoaiMay` = ? WHERE (`IdSanPham` = ?);";
		int result = jdbcTemplate.update(sql, sp.getTenSanPham(), sp.getDonGia(), sp.getSoLuong(), sp.getHinhAnh(), sp.getMoTa(), sp.getIdNhaSanXuat(), sp.getIdLoaiMay(), sp.getIdSanPham());
		return result;
	}
	
	public int suaSanPhamNoImg(final sanpham sp) {
		String sql = "UPDATE `phukiendt`.`sanpham` SET `TenSanPham` = ?, `DonGia` = ?, `SoLuong` = ?, `MoTa` = ?, `IdNhaSanXuat`= ?, `IdLoaiMay` = ? WHERE (`IdSanPham` = ?);";
		int result = jdbcTemplate.update(sql, sp.getTenSanPham(), sp.getDonGia(), sp.getSoLuong(), sp.getMoTa(), sp.getIdNhaSanXuat(), sp.getIdLoaiMay(), sp.getIdSanPham());
		return result;
	}
	
	
	public int xoaSanPham(int id) {
		String sql = "DELETE FROM `phukiendt`.`sanpham` WHERE (`IdSanPham` = ?);";
		int result = jdbcTemplate.update(sql, id);
		return result;
	}
}


