package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue
	private Integer MaSP;
	
	@NotEmpty(message="Tên sản phẩm không được để trống")
	private String TenSP;
	
	@NotEmpty(message="Xuất xứ không được để trống")
	private String XuatXu;
	
	@Min(0)
	private Integer Soluong;
	
	@NotEmpty(message="Đơn vị tính không được để trống")
	private String DonViTinh;
	
	@Min(0)
	private Integer GiaNhap;
	
	@Min(0)
	private Integer GiaBan;
	
	private String TinhTrang;
	
	private String Hinh;
	
	@NotEmpty(message="Tiêu đề không được để trống")
	private String TieuDe;
	
	@NotEmpty(message="Chi tiết không được để trống")
	private String ChiTiet;
	@NotEmpty
	private String LoaiSP;
	@NotEmpty
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

	public Integer getGiaNhap() {
		return GiaNhap;
	}

	public void setGiaNhap(Integer giaNhap) {
		GiaNhap = giaNhap;
	}

	public Integer getGiaBan() {
		return GiaBan;
	}

	public void setGiaBan(Integer giaBan) {
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

	public SanPham(Integer maSP, String tenSP, String xuatXu, Integer soluong, String donViTinh, Integer giaNhap,
			Integer giaBan, String tinhTrang, String hinh, String tieuDe, String chiTiet, String loaiSP, String ghiChu) {
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

	public SanPham(String tenSP, String xuatXu, Integer soluong, String donViTinh, Integer giaNhap, Integer giaBan,
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
