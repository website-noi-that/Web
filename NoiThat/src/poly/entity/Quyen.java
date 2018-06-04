package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "quyen")
public class Quyen {
	@Id
	@GeneratedValue
	private String MaQuyen;
	@Size(min = 0, max = 45)
	private String TenQuyen;
	@Size(min = 0, max = 245)
	private String GhiChu;

	public Quyen(String maQuyen, String tenQuyen, String ghiChu) {
		super();
		MaQuyen = maQuyen;
		TenQuyen = tenQuyen;
		GhiChu = ghiChu;
	}

	public Quyen(String tenQuyen, String ghiChu) {
		super();
		TenQuyen = tenQuyen;
		GhiChu = ghiChu;
	}

	public Quyen() {
		super();
	}

	public Quyen(String maQuyen) {
		super();
		MaQuyen = maQuyen;
	}

	public String getMaQuyen() {
		return MaQuyen;
	}

	public void setMaQuyen(String maQuyen) {
		MaQuyen = maQuyen;
	}

	public String getTenQuyen() {
		return TenQuyen;
	}

	public void setTenQuyen(String tenQuyen) {
		TenQuyen = tenQuyen;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}


}
