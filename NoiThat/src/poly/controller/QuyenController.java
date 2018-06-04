package poly.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import poly.entity.Quyen;
import poly.entity.Users;
import poly.entity.Quyen;

@Controller
@RequestMapping("quyen")
public class QuyenController {
	// hiển thị danh sách quyền
	@Transactional
	@RequestMapping("list-quyen-admin")
	public String quyen(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Quyen";
		Query query = session.createQuery(hql);
		List<Quyen> list = query.list();
		model.addAttribute("list", list);
		return "admin/quyen/danhsach";
	}

	@Autowired
	SessionFactory factory;

	// truy cập vào form thêm quyền
	@Transactional
	@RequestMapping(value = "add-quyen")
	public String add(ModelMap model) {
		model.addAttribute("add-quyen", new Quyen());
		return "admin/quyen/them";
	}

	@Autowired
	ServletContext context;

	@Transactional
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(ModelMap model, @Valid @ModelAttribute("Adduser") Quyen Q, BindingResult result) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (result.hasErrors()) {
			return "admin/tk-admin/them";
		} else {
			try {
				session.save(Q);
				t.commit();
				System.out.println("thêm thành công");
				return "redirect:list-quyen-admin.htm";
			} catch (Exception e) {
				t.rollback();
				System.out.println("them that bai" + e.getMessage());
				return "redirect:add-quyen.htm";
			} finally {
				session.close();
			}

		}

	}

	// Xóa Quyền
	@Transactional
	@RequestMapping(value = "delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Quyen us = (Quyen) session.get(Quyen.class, id);
		Transaction t = session.beginTransaction();
		try {
			session.delete(us);
			t.commit();
			System.out.println("Xóa thành công");
			return "redirect:/quyen/list-quyen-admin.htm";
		} catch (Exception e) {
			t.rollback();
			System.out.println("Xóa thất bại");
			return "redirect:/quyen/list-quyen-admin.htm";
		} finally {
			session.close();
		}

	}

	// Sửa quyền
	@Transactional
	@RequestMapping(value = "edit/{id}")
	public String edit(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "from Quyen where MaQuyen =" + id;
		Query query = session.createQuery(hql);
		List<Quyen> list = query.list();
		model.addAttribute("list", list);
		model.addAttribute("edit-quyen", new Quyen());
		return "admin/quyen/sua";
	}

	@Transactional
	@RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
	public String edit(ModelMap model, @ModelAttribute("edit-quyen") Quyen Us, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(id, Us);
			t.commit();
			System.out.println("sua thành công");
			return "redirect:/quyen/list-quyen-admin.htm";
		} catch (Exception e) {
			t.rollback();
			System.out.println("sua thất bại" + e.getMessage());
			return "redirect:/quyen/edit/" + id + ".htm";
		} finally {
			session.close();
		}

	}
}
