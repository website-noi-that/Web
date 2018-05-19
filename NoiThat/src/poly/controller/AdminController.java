package poly.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
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
	@RequestMapping("index")
	public String index() {
		return "admin/index";
	}

	@Transactional
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("login") Users user, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session1 = request.getSession();
		Session session = factory.getCurrentSession();
		String hql = "from Users where TenDangNhap = '" + user.getTenDangNhap() + "'";
		Query query = session.createQuery(hql);
		Users u = (Users) query.uniqueResult();
		try {
			if (u == null) {
				model.addAttribute("messager1", "Tài Khoản Không Tồn Tại");
				return "admin/dangnhap";
			}
			if (u.getMatKhau().equals(MD5Library.md5(user.getMatKhau()))) {
				// if (u.getMaUsers().equals("admin")) {
				// session1.setAttribute("username", u.getTenDangNhap());
				// session1.setAttribute("quyen", u.getMaUsers());
				// Create cookies
				Cookie c1 = new Cookie("name", u.getTenDangNhap());
				Cookie c2 = new Cookie("pass", u.getMatKhau());
				Cookie c3 = new Cookie("id", u.getMaUsers().toString());
				// Thêm cả cookie vào response.
				response.addCookie(c1);
				response.addCookie(c2);
				response.addCookie(c3);
				// return "redirect:admin.htm";
				// } else {
				//
				// return "redirect:index.htm";
				// }
				model.addAttribute("users", user.getTenDangNhap());
				return "redirect:index.htm";
			} else {
				model.addAttribute("messager2", "Mật Khẩu Sai");
				return "admin/dangnhap";
			}
		} catch (Exception e) {
			model.addAttribute("messager1", "lỗi kết nối");
			return "admin/dangnhap";
		}
	}

	@RequestMapping("logout")
	public String logout(HttpServletResponse response) {
		Cookie c1 = new Cookie("name", "");
		Cookie c2 = new Cookie("pass", "");
		Cookie c3 = new Cookie("id", "");
		response.addCookie(c1);
		response.addCookie(c2);
		response.addCookie(c3);
		return "redirect:login.htm";
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
	public String add(ModelMap model, @ModelAttribute("Adduser") Users Us) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println(Us.getMatKhau());
		try {
			session.save(Us);
			t.commit();
			System.out.println("thêm thành công");
		} catch (Exception e) {
			t.rollback();
			System.out.println("them that bai" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:list-user-admin.htm";
	}

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
	public String edit1(ModelMap model, @ModelAttribute("edituser") Users Us, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String MD5 = MD5Library.md5(Us.getMatKhau());
		Us.setMatKhau(MD5);
		try {
			session.update(id, Us);
			t.commit();
			System.out.println("sua thành công");
		} catch (Exception e) {
			t.rollback();
			System.out.println("sua thất bại" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:/admin/list-user-admin.htm";
	}
}
