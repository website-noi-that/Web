package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
    private String TenDangNhap;
    private String MatKhau;
    private String TrangThai;
    private String MaQuyen;
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
	public String getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(String trangThai) {
		TrangThai = trangThai;
	}
	public String getMaQuyen() {
		return MaQuyen;
	}
	public void setMaQuyen(String maQuyen) {
		MaQuyen = maQuyen;
	}
	public Users(String maUsers, String tenDangNhap, String matKhau, String trangThai, String maQuyen) {
		super();
		MaUsers = maUsers;
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		TrangThai = trangThai;
		MaQuyen = maQuyen;
	}
	public Users(String tenDangNhap, String matKhau, String trangThai, String maQuyen) {
		super();
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		TrangThai = trangThai;
		MaQuyen = maQuyen;
	}
	public Users() {
		super();
	}
	
    
    
    
}
