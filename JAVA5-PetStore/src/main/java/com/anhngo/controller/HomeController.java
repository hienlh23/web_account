package com.anhngo.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.anhngo.dao.KhachHangDAO;
import com.anhngo.entity.KhachHangEntity;
import com.anhngo.service.MailerService;
import com.anhngo.service.PasswordHashingService;
import com.anhngo.utils.CookieService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private KhachHangDAO khachhangDao;

	@Autowired
	private HttpSession session;

	@Autowired
	private HttpServletRequest req;

	@Autowired
	private HttpServletResponse resp;

	@Autowired
	private CookieService cookieService;

	@Autowired
	private PasswordHashingService passHashingService;

	@Autowired
	private MailerService mailerService;

	private KhachHangEntity khachhang;
	private int maXacNhan;
	private int matKhauMoi;
	private static final String NAME_OF_APP = "PetStore";

	// Generate a 6-digit OTP
	private int generateOTP() {
		Random random = new Random();
		int min = 100000;
		int max = 999999;
		return random.nextInt(max - min + 1) + min;
	}

	// Save account credentials in cookies
	private void saveAccountByCookie(String username, String password, int days, HttpServletResponse resp) {
		try {
			String encodedUsername = URLEncoder.encode(username, "UTF-8");
			String encodedPassword = URLEncoder.encode(password, "UTF-8");
			cookieService.create("username", encodedUsername, days, resp);
			cookieService.create("password", encodedPassword, days, resp);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	// Display registration form
	@GetMapping("/register")
	public String register() {
		return "account/register";
	}

	// Handle registration form submission
	@PostMapping("/register")
	public String postRegister(HttpServletRequest req, HttpServletResponse resp) {
		String tenKhachHang = req.getParameter("ten_khachhang");
		String matKhau = req.getParameter("matkhau_kh");
		String rePassword = req.getParameter("rePassword");
		String sdtKh = req.getParameter("sdt_kh");
		String emailKh = req.getParameter("email_kh");
		String diaChiKh = req.getParameter("diachi_kh");

		if (!matKhau.equals(rePassword)) {
			req.setAttribute("error", "Passwords do not match!");
			return "account/register";
		}

		khachhang = new KhachHangEntity();
		khachhang.setTenKhachHang(tenKhachHang);
		khachhang.setEmailKH(emailKh);
		khachhang.setMatKhauKH(passHashingService.MaHoa(matKhau));
		// Set other fields as necessary

		KhachHangEntity savedkhachhang = khachhangDao.save(khachhang);
		if (savedkhachhang != null) {
			maXacNhan = generateOTP();
			mailerService.sendEmail(emailKh, NAME_OF_APP,
					"Đây là mã OTP của bạn: " + maXacNhan + " Vui lòng không chia sẽ cho bất kì ai");
			return "redirect:/maxacnhan";
		}
		req.setAttribute("error", "Registration failed! Please try again.");
		return "account/register";
	}

	// Quên mật khẩu
	@GetMapping("/forgot-password")
	public String forgotPassword() {
		return "account/forgot-password";
	}

	@PostMapping("/forgot-password")
	public String postForgotPassword(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("email");

		// Tìm người dùng theo email
		KhachHangEntity kh = khachhangDao.findByEmailKH(email);

		if (kh != null) {
			// Tạo mật khẩu mới (có thể là mật khẩu ngẫu nhiên hoặc theo quy tắc nào đó)
			String matKhauMoi = generateNewPassword(); // Hàm này cần được định nghĩa để tạo mật khẩu mới

			// Mã hóa mật khẩu mới
			String matKhauMaHoa = passHashingService.MaHoa(matKhauMoi);
			kh.setMatKhauKH(matKhauMaHoa);

			// Lưu người dùng với mật khẩu mới
			khachhangDao.save(kh);

			// Gửi email chứa mật khẩu mới
			mailerService.sendEmail(email, "PetStore", "Mật khẩu mới của bạn là: " + matKhauMoi);
		} else {
			req.setAttribute("error", "Email không tồn tại trong hệ thống!");
			return "account/forgot-password";
		}

		return "redirect:user/login";
	}

	private String generateNewPassword() {
		// Tạo mật khẩu ngẫu nhiên (ví dụ)
		return "newRandomPassword123"; // Bạn có thể thay thế bằng cách tạo mật khẩu ngẫu nhiên thực sự
	}
//	//Đổi mật khẩu
//	@GetMapping("/change-password")
//	public String getChangePassword() {
//		return "account/change-password";
//	}
//
//	@PostMapping("/change-password")
//    public String postChangePassword(@RequestParam String oldPassword,
//                                     @RequestParam String newPassword,
//                                     @RequestParam String reNewPassword,
//                                     @RequestParam int id) {
//
//        // Tìm kiếm thông tin khách hàng trong database dựa trên id
//        KhachHangEntity khachhang = khachhangDao.findById(id);
//
//        // Kiểm tra xem khách hàng có tồn tại và mật khẩu cũ có trùng khớp không
//        if (khachhang != null && khachhang.getMatKhauKH().equals(oldPassword)) {
//            // Kiểm tra xem mật khẩu mới và mật khẩu nhập lại có trùng khớp không
//            if (newPassword.equals(reNewPassword)) {
//                // Nếu trùng khớp, cập nhật mật khẩu mới cho khách hàng và lưu vào database
//                khachhang.setMatKhauKH(newPassword);
//                khachhangDao.save(khachhang);
//                return "redirect:/trang-chu";
//            } else {
//                // Nếu mật khẩu mới và mật khẩu nhập lại không trùng khớp
//                System.out.println("Mật khẩu mới không trùng khớp");
//            }
//        } else {
//            // Nếu mật khẩu cũ không đúng hoặc tài khoản không tồn tại
//            System.out.println("Mật khẩu cũ không đúng hoặc tài khoản không tồn tại");
//        }
//
//        return "account/change-password";
//    }
//  
//


	// Display OTP confirmation form
	@GetMapping("/maxacnhan")
	public String getOTP() {
		return "account/OTP";
	}

	// Handle OTP confirmation
	@PostMapping("/maxacnhan")
	public String postOTP(@RequestParam("MaXacNhan") String confirmOTP) {
		if (confirmOTP != null && confirmOTP.equals(String.valueOf(maXacNhan))) {
			saveAccountByCookie(khachhang.getTenKhachHang(), khachhang.getMatKhauKH(), 1, resp);
			session.setAttribute("userSession", khachhang);
			return "redirect:/user/login";
		} else {
			khachhangDao.delete(khachhang);
			return "user/register";
		}
	}
}