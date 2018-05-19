package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	@Id
	@GeneratedValue
    private String MaUsers;
    private String TenDangNhap;
    private String MatKhau;
    private String MaNhanVien;
    private String MaQuyen;
	
    public Users() {
		super();
	}

	public Users(String tenDangNhap, String matKhau, String maNhanVien, String maQuyen) {
		super();
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		MaNhanVien = maNhanVien;
		MaQuyen = maQuyen;
	}

	public Users(String maUsers, String tenDangNhap, String matKhau, String maNhanVien, String maQuyen) {
		super();
		MaUsers = maUsers;
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		MaNhanVien = maNhanVien;
		MaQuyen = maQuyen;
	}

	public String getMaUsers() {
		return MaUsers;
	}

	public void setMaUsers(String maUsers) {
		MaUsers = maUsers;
	}

	public String getTenDangNhap() {
		return TenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public String getMaNhanVien() {
		return MaNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		MaNhanVien = maNhanVien;
	}

	public String getMaQuyen() {
		return MaQuyen;
	}

	public void setMaQuyen(String maQuyen) {
		MaQuyen = maQuyen;
	}
    
    
}
