package entity;

public class thongsokythuat {
	private int idSanPham;
	private String mangHinh;
	private String heDieuHanh;
	private String cameraSau;
	private String cameraTruoc;
	private String cpu;
	private String ram;
	private String boNhoTrong;
	private String theNho;
	private String theSim;
	private String dungLuongPin;
	private String trongLuong;
	
	public thongsokythuat(int idSanPham, String mangHinh, String heDieuHanh, String cameraSau, String cameraTruoc, String cpu,
			String ram, String boNhoTrong, String theNho, String theSim, String dungLuongPin, String trongLuong) {
		super();
		this.idSanPham = idSanPham;
		this.mangHinh = mangHinh;
		this.heDieuHanh= heDieuHanh;
		this.cameraSau = cameraSau;
		this.cameraTruoc = cameraTruoc;
		this.cpu = cpu;
		this.ram = ram;
		this.boNhoTrong = boNhoTrong;
		this.theNho = theNho;
		this.theSim = theSim;
		this.dungLuongPin = dungLuongPin;
		this.trongLuong = trongLuong;
	}

	public thongsokythuat() {
		super();
	}

	public int getIdSanPham() {
		return idSanPham;
	}

	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}

	public String getMangHinh() {
		return mangHinh;
	}

	public void setMangHinh(String mangHinh) {
		this.mangHinh = mangHinh;
	}

	public String getHeDieuHanh() {
		return heDieuHanh;
	}

	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}

	public String getCameraSau() {
		return cameraSau;
	}

	public void setCameraSau(String cameraSau) {
		this.cameraSau = cameraSau;
	}

	public String getCameraTruoc() {
		return cameraTruoc;
	}

	public void setCameraTruoc(String cameraTruoc) {
		this.cameraTruoc = cameraTruoc;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getBoNhoTrong() {
		return boNhoTrong;
	}

	public void setBoNhoTrong(String boNhoTrong) {
		this.boNhoTrong = boNhoTrong;
	}

	public String getTheNho() {
		return theNho;
	}

	public void setTheNho(String theNho) {
		this.theNho = theNho;
	}

	public String getTheSim() {
		return theSim;
	}

	public void setTheSim(String theSim) {
		this.theSim = theSim;
	}

	public String getDungLuongPin() {
		return dungLuongPin;
	}

	public void setDungLuongPin(String dungLuongPin) {
		this.dungLuongPin = dungLuongPin;
	}

	public String getTrongLuong() {
		return trongLuong;
	}

	public void setTrongLuong(String trongLuong) {
		this.trongLuong = trongLuong;
	}
	
	
}


