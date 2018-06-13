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
	private String MaSP;
	private String TenSP;
	private String Xuat;
	private String TrangThai;
	private String MaQuyen;
}
