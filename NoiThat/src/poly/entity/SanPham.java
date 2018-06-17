package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue
	private Integer MaSP;
	private String TenSP;
	private String XuatXu;
	private Integer Soluong;
	private String DonViTinh;
	private Double GiaNhap;
	private Double GiaBan;
	private String TinhTrang;
	private String Hinh;
	private String TieuDe;
	private String ChiTiet;	
	private String LoaiSP;
	private String GhiChu;
	public Integer getMaSP() {
		return MaSP;
	}
	public void setMaSP(Integer maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public String getXuatXu() {
		return XuatXu;
	}
	public void setXuatXu(String xuatXu) {
		XuatXu = xuatXu;
	}
	public Integer getSoluong() {
		return Soluong;
	}
	public void setSoluong(Integer soluong) {
		Soluong = soluong;
	}
	public String getDonViTinh() {
		return DonViTinh;
	}
	public void setDonViTinh(String donViTinh) {
		DonViTinh = donViTinh;
	}
	public Double getGiaNhap() {
		return GiaNhap;
	}
	public void setGiaNhap(Double giaNhap) {
		GiaNhap = giaNhap;
	}
	public Double getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(Double giaBan) {
		GiaBan = giaBan;
	}
	public String getTinhTrang() {
		return TinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		TinhTrang = tinhTrang;
	}
	public String getHinh() {
		return Hinh;
	}
	public void setHinh(String hinh) {
		Hinh = hinh;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getChiTiet() {
		return ChiTiet;
	}
	public void setChiTiet(String chiTiet) {
		ChiTiet = chiTiet;
	}
	
	public String getLoaiSP() {
		return LoaiSP;
	}
	public void setLoaiSP(String loaiSP) {
		LoaiSP = loaiSP;
	}
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	
	public SanPham(Integer maSP, String tenSP, String xuatXu, Integer soluong, String donViTinh, Double giaNhap,
			Double giaBan, String tinhTrang, String hinh, String tieuDe, String chiTiet, String loaiSP, String ghiChu) {
		super();
		MaSP = maSP;
		TenSP = tenSP;
		XuatXu = xuatXu;
		Soluong = soluong;
		DonViTinh = donViTinh;
		GiaNhap = giaNhap;
		GiaBan = giaBan;
		TinhTrang = tinhTrang;
		Hinh = hinh;
		TieuDe = tieuDe;
		ChiTiet = chiTiet;
		LoaiSP = loaiSP;
		GhiChu = ghiChu;
	}
	
	public SanPham(String tenSP, String xuatXu, Integer soluong, String donViTinh, Double giaNhap, Double giaBan,
			String tinhTrang, String hinh, String tieuDe, String chiTiet, String loaiSP, String ghiChu) {
		super();
		TenSP = tenSP;
		XuatXu = xuatXu;
		Soluong = soluong;
		DonViTinh = donViTinh;
		GiaNhap = giaNhap;
		GiaBan = giaBan;
		TinhTrang = tinhTrang;
		Hinh = hinh;
		TieuDe = tieuDe;
		ChiTiet = chiTiet;
		LoaiSP = loaiSP;
		GhiChu = ghiChu;
	}
	public SanPham() {
		super();
	}
	
	
}
