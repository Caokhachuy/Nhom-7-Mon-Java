package controllers;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.Databasecauhinh;
import dao.Databasesanpham;
import entity.cart;
import entity.sanpham;
import entity.thongsokythuat;

@Controller
public class ChiTietSanPham {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	Databasecauhinh dbch = (Databasecauhinh) context.getBean("databasecauhinh");
	
	@RequestMapping("/chitietsanpham/{id}")
	public String chiTietSanPham(@PathVariable int id, ModelMap model, HttpSession session) {
		
		sanpham sp = db.getSanPhamByID(id);
		thongsokythuat tskt = dbch.getCauHinhByID(id);
		
		model.addAttribute("SanPham", sp);
		model.addAttribute("CauHinhMay", tskt);
		return "ChiTietSanPham";
	}
	
	@PostMapping("/chitietsanpham/add/{id}")
	public String themVaoGioHang(HttpSession session, @PathVariable int id, @RequestParam int soLuong, ModelMap model) {
		HashMap<Integer, cart> cartItems = (HashMap<Integer, cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
            cartItems = new HashMap<Integer,cart>();
        }
		thongsokythuat tskt = dbch.getCauHinhByID(id);
		sanpham sp = db.getSanPhamByID(id);
		cart cart = new cart();
		if(sp != null) {
			if(cartItems.containsKey(id)) {
				cart = cartItems.get(id);
				cart.setSanPham(sp);
				cart.setSoLuong(cart.getSoLuong() + soLuong);
				cartItems.put(id, cart);
			}else {
                cart.setSanPham(sp);
                cart.setSoLuong(soLuong);
                cartItems.put(id, cart);
			}
		}
		int total = 0;
		int totalSL = 0;
		for(cart cart1:cartItems.values()) {
			int dg = cart1.getSanPham().getDonGia();
			int sl = cart1.getSoLuong();
			int tt = dg * sl;
			total = total + tt;
			totalSL = totalSL + sl;
		}
		session.setAttribute("totalCart", total);
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("count", totalSL);
		model.addAttribute("SanPham", sp);
		model.addAttribute("CauHinhMay", tskt);
		return "ChiTietSanPham";
	}
}
