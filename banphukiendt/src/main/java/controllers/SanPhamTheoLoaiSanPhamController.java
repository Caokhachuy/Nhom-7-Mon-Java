package controllers;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.Databasesanpham;
import entity.sanpham;

@Controller
public class SanPhamTheoLoaiSanPhamController {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	@RequestMapping("/chitietloaisanpham/{id}")
	public String sanPhamTheoLoaiSanPham(@PathVariable int id, ModelMap model) {
		List<sanpham> listSanPhamTheoLoai = db.getListSanPhamTheoLoai(id);
		String loaiSP = "";
		if(id == 1) {
			loaiSP = "Iphone";
		}else if(id == 2) {
			loaiSP = "Samsung";
		}else {
			loaiSP = "Oppo";
		}
		model.addAttribute("ListSanPhamTheoLoai", listSanPhamTheoLoai);
		model.addAttribute("LoaiSP", loaiSP);
		return "SanPhamTheoLoaiSanPham";
	}
}
