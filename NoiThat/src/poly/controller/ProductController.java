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

import javafx.scene.control.Pagination;
import poly.entity.SanPham;;

@Controller
@RequestMapping("")
public class ProductController {
	@Autowired
	SessionFactory factory;

	@Transactional
	@RequestMapping(value = "list-product")
	public String listproduct(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham";
		Query query = session.createQuery(hql);
		
        
		List<SanPham> list = query.list();
		model.addAttribute("list", list);
		
		
		
		return "user/Product/list";
	}
	
}
