package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user")
public class Users {
	@Id
	@GeneratedValue
    private String MaUsers;
	@Size(min=0, max=45)
	@NotEmpty(message="Tài khoản không được để trống")
    private String TenDangNhap;
	@Size(min=0, max=45)
	@NotEmpty(message="Mật Khẩu không được để trống")
    private String MatKhau;
	@NotEmpty(message="Mã Nhân viên không được để trống")
    private String MaNhanVien;
	@NotEmpty(message="Mã Quyền không được để trống")
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
