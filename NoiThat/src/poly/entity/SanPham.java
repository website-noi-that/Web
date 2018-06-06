package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class SanPham {
	@Id
	@GeneratedValue
	private String MaUsers;
	private String TenDangNhap;
	private String MatKhau;
	private String TrangThai;
	private String MaQuyen;
}
