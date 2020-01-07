package entity;

import entity.sanpham;

public class cart {
	private sanpham sanPham;
	private int soLuong;
	private int soLuongCon;
	private Boolean kiemTraSoLuong;

	public cart () {
		
	}
	
	public cart (sanpham sanPham, int soLuong) {
		super();
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

	public sanpham getSanPham() {
		return sanPham;
	}

	public void setSanPham(sanpham sanPham) {
		this.sanPham = sanPham;
	}
}
