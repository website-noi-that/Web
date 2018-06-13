package poly.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Users;

@Controller
@RequestMapping("")
public class HomeController {
	@Autowired
	SessionFactory factory;

	@Transactional
	@RequestMapping(value = "index")
	public String index(ModelMap model) {
		return "user/index";
	}

	@RequestMapping(value = "login")
	public String login(ModelMap model) {
		model.addAttribute("login", new Users());
		return "user/login";
	}

	@RequestMapping(value = "logon")
	public String logon(ModelMap model) {
		model.addAttribute("logon", new Users());
		return "user/logon";
	}

	@RequestMapping(value = "Ulogin", method = RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("login") Users user, HttpServletResponse response) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String kytu = "/[A-Za-z0-9]/";
		Pattern r = Pattern.compile(kytu);
		try {
			if (user.getTenDangNhap().equals("")) {
				model.addAttribute("messager", "Vui lòng nhập tên đăng nhập !");
				return "user/login";
			}if (user.getMatKhau().equals("")) {
				model.addAttribute("messager", "Vui lòng nhập mật khẩu !");
				return "user/login";
			} else if (user.getTenDangNhap().length() > user.getTenDangNhap().trim().length()) {
				model.addAttribute("messager", "Tài khoản không được có khoảng trắng !");
				return "user/login";
			} else if (user.getTenDangNhap().length() < 3) {
				model.addAttribute("messager", "Tài khoản phải lớn hơn 3 ký tự !");
				return "user/login";
			} else if (user.getTenDangNhap().length() > 50) {
				model.addAttribute("messager", "Tài khoản phải nhỏ hơn 50 ký tự !");
				return "user/login";
			} else if (user.getMatKhau().length() < 6) {
				model.addAttribute("messager", "Mật khẩu phải lớn hơn 6 ký tự !");
				return "user/login";
			} else if (user.getMatKhau().length() > 30) {
				model.addAttribute("messager", "Mật khẩu phải nhỏ hơn 30 ký tự !");
				return "user/login";
			}

			Criteria cr = session.createCriteria(Users.class);
			cr.add(Restrictions.or(Restrictions.eq("TenDangNhap", user.getTenDangNhap())));
			Users us = (Users) cr.uniqueResult();
			if (us == null) {
				model.addAttribute("messager", "Tài khoản không tồn tại hãy  <a href=\"logon.htm\">đăng ký</a> !");
				return "user/login";
			}else if (us.getTrangThai().equals("chuakichhoat")){
				model.addAttribute("messager", "Tài Khoản Này Đã Bị Khóa !");
				return "user/login";
			}
			if (us.getMatKhau().equals(MD5Library.toMD5(user.getMatKhau()))) {
				t.commit();
				// Create cookies
				String q = us.getMaQuyen();
				Cookie c1 = new Cookie("TenDangNhap", us.getTenDangNhap());
				Cookie c2 = new Cookie("quyen", q);

				c1.setMaxAge(1000);
				c2.setMaxAge(1000);

				// Thêm cả cookie vào response.
				response.addCookie(c1);
				response.addCookie(c2);
				if (q.equals("admin")) {
					return "redirect:admin/index.htm";
				} else {
					return "redirect:index.htm";
				}

			} else {
				model.addAttribute("messager", "Mật Khẩu Sai !");
				return "user/login";
			}
		} catch (Exception e) {
			t.rollback();
			System.out.println(e.getMessage());
			model.addAttribute("messager", "Lỗi Đăng Nhập");
			return "user/login";
		}
	}

	@RequestMapping("logout")
	public String logout(HttpServletResponse response) {
		Cookie c1 = new Cookie("TenDangNhap", "");
		Cookie c2 = new Cookie("quyen", "");
		c1.setMaxAge(0);
		c2.setMaxAge(0);
		response.addCookie(c1);
		response.addCookie(c2);
		return "redirect:index.htm";
	}

}
