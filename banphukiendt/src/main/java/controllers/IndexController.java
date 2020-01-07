package controllers;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.Databasesanpham;
import entity.cart;
import entity.sanpham;

@Controller
public class IndexController {
	private final static int soSanPhamMotTrang = 9;
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	
	@RequestMapping("/")
	public String index(ModelMap model) {
		List<sanpham> listSanPhamMoi = db.getListSanPhamMoi();
		model.addAttribute("ListSanPhamMoi", listSanPhamMoi);
		return "Index";
	}
}