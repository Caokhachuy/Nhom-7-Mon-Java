
package controllers;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import dao.Databasesanpham;


import entity.sanpham;

@Controller

public class IndexController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	
	@RequestMapping("/")
	public String index(ModelMap model) {
		List<sanpham> listSanPhamMoi = db.getListSanPhamMoi();
		model.addAttribute("ListSanPhamMoi", listSanPhamMoi);
		return "Index";
	}
	
	@RequestMapping("/timkiem")
	public String timKiemSanPham(ModelMap model, @RequestParam String timKiem) {
		List<sanpham> listSPTK = db.timKiemSanPham(timKiem);
		
		if(listSPTK.size() == 0) {
			model.addAttribute("ThongBao", "Không Có kết quả tìm kiếm nào '" + timKiem +"'");
		}
		
		model.addAttribute("TimKiem", timKiem);
		model.addAttribute("KetQua", listSPTK);

		return "TimKiem";
	}
	
}