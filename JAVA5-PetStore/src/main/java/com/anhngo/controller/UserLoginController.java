package com.anhngo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.anhngo.dao.KhachHangDAO;
import com.anhngo.entity.KhachHangEntity;
import com.anhngo.utils.SessionService;

import com.anhngo.entity.*;
import com.anhngo.dao.*;

@Controller
public class UserLoginController {

    @Autowired
    private KhachHangDAO khachHangDAO;
    @Autowired
    private ThuCungDAO thucungDAO;

    @Autowired
    private SessionService sessionService;

    @GetMapping("/user/login")
    public String showLoginForm(Model model) {
        sessionService.set("code", "Asdsfdsf2=-##2");
        model.addAttribute("userLogin", new KhachHangEntity());
        return "/user/login";
    }

    @GetMapping("/user/index")
    public String showUserIndex(Model model) {
    	List<ThuCungEntity> thuCungItems = thucungDAO.findAll();
		model.addAttribute("thuCungItems", thuCungItems);
		System.out.println(thuCungItems.size());
        return "user/index";
    }

    @PostMapping("/user/login")
    public String processLogin(Model model, @ModelAttribute("userLogin") @Validated KhachHangEntity userLogin, BindingResult result) {
        if (result.hasErrors()) {
            return "/user/login";
        }

        KhachHangEntity khachHang = khachHangDAO.findByEmailKH(userLogin.getEmailKH());
        if (khachHang != null && khachHang.getMatKhauKH().equals(userLogin.getMatKhauKH())) {
            sessionService.set("userLogin", khachHang);
            return "redirect:/user/index";
        } else {
            model.addAttribute("error", "Tài khoản hoặc mật khẩu không đúng.");
            return "/user/login";
        }
    }
    @GetMapping("/productdetail/{id}")
    public String homeProductDetail(@PathVariable("id") int id, Model model) {
        Optional<ThuCungEntity> thuCung = thucungDAO.findById(id);
        if (thuCung.isPresent()) {
            model.addAttribute("thuCung", thuCung.get());
            return "user/productdetail";
        } else {
            return "redirect:/user/index"; 
        }
    }
}
