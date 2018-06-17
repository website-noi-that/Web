package poly.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import poly.entity.SanPham;

@Controller
@RequestMapping("")
public class ProductController {
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;

	@Transactional
	@RequestMapping(value = "list-product")
	public String listproduct(ModelMap model, @RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham";
		Query query = session.createQuery(hql);

		int maxResult = 5;
		int maxNavigationResult = 10;

		PaginationResult<SanPham> result = new PaginationResult<SanPham>(query, page, maxResult, maxNavigationResult);

		// Result:
		List<SanPham> emps = result.getList();
		int totalPages = result.getTotalRecords();
		int totalRecords = result.getTotalRecords();

		// 1 2 3 4 5 ... 11 12 13
		List<Integer> navPages = result.getNavigationPages();
		model.addAttribute("paginationProducts", result);
		return "user/Product/list";
	}

	@RequestMapping(value = "edit-product", method = RequestMethod.GET)
	public String editproduct(ModelMap model, @RequestParam(value = "id") Integer id) {
		Session session = factory.openSession();
		Criteria cr = session.createCriteria(SanPham.class);
		cr.add(Restrictions.or(Restrictions.eq("MaSP", id)));
		SanPham sp = (SanPham) cr.uniqueResult();
		System.out.println(sp.getMaSP());
		System.out.println(sp.getTinhTrang());
		System.out.println(sp.getLoaiSP());
		model.addAttribute("editproduct", sp);
		return "user/Product/edit";
	}

	@RequestMapping(value = "edit-product", method = RequestMethod.POST)
	public String editproduct(ModelMap model, @ModelAttribute(value = "editproduct") SanPham sp,
			@RequestParam("photo") MultipartFile photo) {
		// Lưu ảnh vào thư mục web
		try {
			String photoPath = context.getRealPath("/img/product/" + photo.getOriginalFilename());
			photo.transferTo(new File(photoPath));
			System.out.println(photoPath);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("message", "Lỗi lưu file !");
			return "redirect:edit-product.htm?id=" + sp.getMaSP();
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		sp.setHinh(photo.getOriginalFilename());
		try {
			session.update(sp);
			t.commit();
			System.out.println("sua thành công");
			return "redirect:list-product.htm";
		} catch (Exception e) {
			t.rollback();
			System.out.println(e.getMessage());
			model.addAttribute("message", "Lỗi sửa dữ liệu!");
			return "redirect:edit-product.htm?id=" + sp.getMaSP();
		} finally {
			session.close();
		}
	}

	@RequestMapping(value = "delete-product")
	public String deleteproduct(@RequestParam(value = "id") int id) {
		Session session = factory.openSession();
		SanPham sp = (SanPham) session.get(SanPham.class, id);
		Transaction t = session.beginTransaction();
		try {
			session.delete(sp);
			t.commit();
			System.out.println("Xóa thành công");
			return "redirect:list-product.htm";
		} catch (Exception e) {
			t.rollback();
			System.out.println("Xóa thất bại");
			return "redirect:list-product.htm";
		} finally {
			session.close();
		}

	}

	@RequestMapping(value = "add-product")
	public String addproduct(ModelMap model) {
		return "user/Product/add";
	}
}
