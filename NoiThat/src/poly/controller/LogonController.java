package poly.controller;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.Valid;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Users;

@Controller
@RequestMapping("")
public class LogonController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "Ulogon", method = RequestMethod.POST)
	public String add(ModelMap model, @Valid @ModelAttribute("logon") Users Us, BindingResult result,
			@ModelAttribute("MatKhau1") String mk1) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(Us.getTenDangNhap());
		boolean b = m.find();
		Criteria cr = session.createCriteria(Users.class);
		cr.add(Restrictions.or(Restrictions.eq("TenDangNhap", Us.getTenDangNhap())));
		Users us = (Users) cr.uniqueResult();
		if (us != null) {
			model.addAttribute("messager", "Tài khoản tồn tại !!!");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		}else if (b) {
			model.addAttribute("messager", "Tài Khoản chỉ hỗi trợ a > z, 0 > 9 !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getTenDangNhap() == null) {
			model.addAttribute("messager", "Vui lòng nhập tên đăng nhập !");
			return "user/logon";
		} else if (Us.getMatKhau() == null) {
			model.addAttribute("messager", "Vui lòng nhập mật khẩu !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getTenDangNhap().indexOf(" ") >= 1) {
			model.addAttribute("messager", "Tài khoản không được khoảng trắng !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getTenDangNhap().length() < 3) {
			model.addAttribute("messager", "Tài khoản phải lớn hơn 3 kí tự !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getTenDangNhap().length() > 50) {
			model.addAttribute("messager", "Tài khoản phải nhỏ hơn 50 kí tự !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getMatKhau().length() < 6) {
			model.addAttribute("messager", "Mật khẩu phải lớn hơn 6 kí tự !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getMatKhau().length() > 30) {
			model.addAttribute("messager", "Mật khẩu phải nhỏ hơn 30 kí tự  !");
			model.addAttribute("TK", Us.getTenDangNhap());
			return "user/logon";
		} else if (Us.getMatKhau().equals(mk1)) {
			Us.setMaQuyen("khachhang");
			Us.setTrangThai("dakichhoat");
			Us.setMatKhau(MD5Library.toMD5(mk1));
			if (result.hasErrors()) {
				return "user/logon";
			} else {
				try {
					session.save(Us);
					t.commit();
					model.addAttribute("messager", "Đăng ký thành công ^^");
					System.out.println("Thêm thành công");
					return "user/login";
				} catch (Exception e) {
					t.rollback();
					System.out.println("Them that bai" + e.getMessage());
					return "user/logon";
				} finally {
					session.close();
				}
			}
		} else {
			model.addAttribute("messager", "Mật khẩu không khớp");
			return "user/logon";

		}

	}
	
}
