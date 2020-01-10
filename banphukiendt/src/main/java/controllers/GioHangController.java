package controllers;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import dao.Databasesanpham;
import entity.sanpham;

import entity.cart;

@Controller
public class GioHangController {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	Databasesanpham db = (Databasesanpham) context.getBean("databasesanpham");
	@RequestMapping("/giohangchitiet")
	public String index() {
		return "GioHang";
	}
	
	@RequestMapping("/giohangchitiet/them/{id}")
	public String themGioHang(HttpSession session, @PathVariable int id, ModelMap modelMap) {
		HashMap<Integer, cart> cartItems = (HashMap<Integer, cart>) session.getAttribute("myCartItems");
		sanpham sp = db.getSanPhamByID(id);
        int soLuongCon = db.getSoLuong(id);
        if (sp != null) {
            cart cart = cartItems.get(id);
            cart.setSanPham(sp);
            cart.setSoLuong(cart.getSoLuong() + 1);
            cart.setSoLuongCon(soLuongCon);
            cartItems.put(id, cart);
        }
        int total = 0;
		int totalSL = 0;
		for(cart cart:cartItems.values()) {
			int dg = cart.getSanPham().getDonGia();
			int sl = cart.getSoLuong();
			int tt = dg * sl;
			total = total + tt;
			totalSL = totalSL + sl;
		}
		session.setAttribute("totalCart", total);
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("count", totalSL);

		return "GioHang";
	}
	
	@RequestMapping("/giohangchitiet/giam/{id}")
	public String giamSoLuong(HttpSession session, @PathVariable int id, ModelMap modelMap) {
		HashMap<Integer, cart> cartItems = (HashMap<Integer, cart>) session.getAttribute("myCartItems");
		
        sanpham sp = db.getSanPhamByID(id);
        if (sp != null) {
            cart cart = cartItems.get(id);
            cart.setSanPham(sp);
            cart.setSoLuong(cart.getSoLuong() - 1);
            cartItems.put(id, cart);
        }
        int total = 0;
		int totalSL = 0;
		for(cart cart:cartItems.values()) {
			int dg = cart.getSanPham().getDonGia();
			int sl = cart.getSoLuong();
			int tt = dg * sl;
			total = total + tt;
			totalSL = totalSL + sl;
		}
		session.setAttribute("totalCart", total);
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("count", totalSL);
		
		return "GioHang";
	}
	
	@RequestMapping("/giohangchitiet/xoa/{id}")
	public String xoaSanPham(HttpSession session, @PathVariable int id, ModelMap modelMap){
		HashMap<Integer, cart> cartItems = (HashMap<Integer, cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<Integer,cart>();
        }
        if (cartItems.containsKey(id)) {
            cartItems.remove(id);
        }
        int total = 0;
		int totalSL = 0;
		for(cart cart:cartItems.values()) {
			int dg = cart.getSanPham().getDonGia();
			int sl = cart.getSoLuong();
			int tt = dg * sl;
			total = total + tt;
			totalSL = totalSL + sl;
		}
		session.setAttribute("totalCart", total);
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("count", totalSL);
        return "GioHang";
	}
}
