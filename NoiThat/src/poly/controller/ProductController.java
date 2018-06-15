package poly.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javafx.scene.control.Pagination;
import poly.entity.SanPham;;

@Controller
@RequestMapping("")
public class ProductController {
	@Autowired
	SessionFactory factory;

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
	@RequestMapping(value = "edit-product")
	public String editproduct(ModelMap model, @RequestParam(value = "id") int id) {
		return "user/Product/edit";
	}
	@RequestMapping(value = "delete-product")
	public String deleteproduct(ModelMap model, @RequestParam(value = "id") int id) {
		return "user/Product/edit";
	}
	@RequestMapping(value = "add-product")
	public String addproduct(ModelMap model) {
		return "user/Product/add";
	}
}
