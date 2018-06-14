package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "loaisp")
public class LoaiSanPham {
	@Id
	@GeneratedValue
	private String MaLoaiSP;
	private String TenLoaiSP;
	private String GhiChu;
	public LoaiSanPham(String maLoaiSP, String tenLoaiSP, String ghiChu) {
		super();
		MaLoaiSP = maLoaiSP;
		TenLoaiSP = tenLoaiSP;
		GhiChu = ghiChu;
	}
	public LoaiSanPham(String tenLoaiSP, String ghiChu) {
		super();
		TenLoaiSP = tenLoaiSP;
		GhiChu = ghiChu;
	}
	public LoaiSanPham() {
		super();
	}
	public String getMaLoaiSP() {
		return MaLoaiSP;
	}
	public void setMaLoaiSP(String maLoaiSP) {
		MaLoaiSP = maLoaiSP;
	}
	public String getTenLoaiSP() {
		return TenLoaiSP;
	}
	public void setTenLoaiSP(String tenLoaiSP) {
		TenLoaiSP = tenLoaiSP;
	}
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	
	
}
