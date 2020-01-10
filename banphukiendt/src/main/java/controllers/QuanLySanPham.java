package controllers;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.Databasesanpham;

import entity.sanpham;

@Controller
public class QuanLySanPham {
	@Autowired
	ServletContext servletContext;
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	@GetMapping("/admin")
	public String trangQuanLySanPham(ModelMap modelMap) {
		List<sanpham> listSP = db.getListSanPham();
		modelMap.addAttribute("listSP", listSP);
		return "QuanLySanPham";
	}
	
	@PostMapping("/admin")
	public String themSanPham(@RequestParam String tenSanPham,@RequestParam int donGia,@RequestParam int soLuong,@RequestParam String moTa,@RequestParam int idNhaSanXuat,@RequestParam int idLoaiMay,@RequestParam("hinhAnh") MultipartFile image, ModelMap modelMap) {
		if(image.isEmpty()) {
			modelMap.addAttribute("message", "Vui long chon file");
		}else {
			try {
				String path1 = "E:\\huyjava\\banphukiendt\\src\\main\\webapp\\recources\\hinhanh\\" + image.getOriginalFilename();
				File fileDir = new File(path1);
				if(!fileDir.exists()){
					fileDir.mkdirs();
				}
				image.transferTo(new File(path1));
				String hinhAnh = image.getOriginalFilename();
				sanpham sp = new sanpham();
				sp.setTenSanPham(tenSanPham);
				sp.setDonGia(donGia);
				sp.setSoLuong(soLuong);
				sp.setHinhAnh(hinhAnh);
				sp.setMoTa(moTa);
				sp.setIdNhaSanXuat(idNhaSanXuat);
				sp.setIdLoaiMay(idLoaiMay);
				db.addSanPham(sp);
				List<sanpham> listSP = db.getListSanPham();
				modelMap.addAttribute("listSP", listSP);
			}catch(Exception ex) {
				modelMap.addAttribute("message", "Loi luu file!");
			}
		}
		return "QuanLySanPham";
	}
	
	@GetMapping("/admin/{id}")
	public String xoaSanPham(@PathVariable int id, ModelMap modelMap) {
		db.xoaSanPham(id);
		
		List<sanpham> listSP = db.getListSanPham();

		modelMap.addAttribute("listSP", listSP);

		return "QuanLySanPham";
	}
}
