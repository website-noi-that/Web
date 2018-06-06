	package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.entity.Users;

@Controller
@RequestMapping("")
public class HomeController {
	@Transactional
	@RequestMapping(value = "index")
	public String login(ModelMap model) {
		return "user/index";
	}
}
