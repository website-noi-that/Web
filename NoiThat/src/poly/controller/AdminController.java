package poly.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.tomcat.jni.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Users;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	SessionFactory factory;

	@Transactional
	@RequestMapping(value = "login")
	public String login(ModelMap model) {
		model.addAttribute("login", new Users());
		return "admin/dangnhap";
	}

	@Transactional
	@RequestMapping(value = "admin-login", method = RequestMethod.GET)
	public String adminlogin(ModelMap model) {
		model.addAttribute("login", new Users());
		return "admin/admin-login";
	}

	@Transactional
	@RequestMapping("index")
	public String index() {
		return "admin/index";
	}

	@Transactional
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("login") Users user, HttpServletResponse response) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Criteria cr = session.createCriteria(Users.class);
			cr.add(Restrictions.or(Restrictions.eq("TenDangNhap", user.getTenDangNhap())));
			Users us = (Users) cr.uniqueResult();
			if (us == null) {
				model.addAttribute("messager1", "Tài Khoản Không Tồn Tại");
				return "admin/admin-login";
			}
			if (us.getMatKhau().equals(MD5Library.toMD5(user.getMatKhau()))) {
				t.commit();
				// // Create cookies
				// Cookie username = new Cookie("us", user.getTenDangNhap());
				// Cookie quyen = new Cookie("pq", user.getMaQuyen().toString());
				//
				// username.setMaxAge(10000);
				// quyen.setMaxAge(10000);
				//
				// // Thêm cả cookie vào response.
				// response.addCookie(username);
				// response.addCookie(quyen);

				return "redirect:index.htm";
			} else {
				model.addAttribute("messager2", "Mật Khẩu Sai");
				return "admin/admin-login";
			}
		} catch (Exception e) {
			t.rollback();
			System.out.println(e.getMessage());
			model.addAttribute("messager1", "Lỗi Đăng Nhập ");
			return "admin/admin-login";
		}
	}

	@RequestMapping("logout")
	public String logout(HttpServletResponse response) {
		Cookie username = new Cookie("username", "");
		Cookie quyen = new Cookie("quyen", "");
		username.setMaxAge(0);
		quyen.setMaxAge(0);
		response.addCookie(username);
		response.addCookie(quyen);
		return "redirect:admin-login.htm";
	}

	@Transactional
	@RequestMapping("list-user-admin")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Users";
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		model.addAttribute("list", list);
		return "admin/list-user-admin";
	}

	// thêm tài khoản nhân viên
	@Transactional
	@RequestMapping(value = "add")
	public String add(ModelMap model) {
		model.addAttribute("Adduser", new Users());
		return "admin/tk-admin/them";
	}

	@Autowired
	ServletContext context;

	@Transactional
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(ModelMap model, @Valid @ModelAttribute("Adduser") Users Us, BindingResult result) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String MD5 = MD5Library.toMD5(Us.getMatKhau());
		Us.setMatKhau(MD5);
		if (result.hasErrors()) {
			return "admin/tk-admin/them";
		} else {
			try {

				session.save(Us);
				t.commit();
				System.out.println("thêm thành công");
				return "redirect:list-user-admin.htm";
			} catch (Exception e) {
				t.rollback();
				System.out.println("them that bai" + e.getMessage());
				return "redirect:add.htm";
			} finally {
				session.close();
			}

		}

	}

	// xóa tài khoản nhân viên
	@Transactional
	@RequestMapping(value = "delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Users us = (Users) session.get(Users.class, id);
		Transaction t = session.beginTransaction();
		try {
			session.delete(us);
			t.commit();
			System.out.println("Xóa thành công");
		} catch (Exception e) {
			t.rollback();
			System.out.println("Xóa thất bại");
		} finally {
			session.close();
		}
		return "redirect:/admin/list-user-admin.htm";
	}

	// sửa tài khoản nhân viên
	@Transactional
	@RequestMapping(value = "edit/{id}")
	public String edit(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "from Users where MaUsers =" + id;
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		model.addAttribute("list", list);
		model.addAttribute("edituser", new Users());
		return "admin/tk-admin/sua";
	}

	@Transactional
	@RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("edituser") Users Us, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String MD5 = MD5Library.toMD5(Us.getMatKhau());
		Us.setMatKhau(MD5);
		try {
			session.update(id, Us);
			t.commit();
			System.out.println("sua thành công");
			return "redirect:/admin/list-user-admin.htm";
		} catch (Exception e) {
			t.rollback();
			System.out.println("sua thất bại" + e.getMessage());
			return "redirect:/admin/edit/" + id + ".htm";
		} finally {
			session.close();
		}

	}

}
