package WEB.Controller.USER;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import WEB.Entity.User;
import WEB.Services.USER.UserService;

@Controller
public class UserController extends BaseController{
	
	@Autowired
	private UserService userService;
		
	@RequestMapping(value = "/dangKy", method = RequestMethod.GET)
	public ModelAndView dangKy() {
    	_mvShare.setViewName("user/account/login");
    	_mvShare.addObject("categories", _homeServices.getDataCategories());
    	_mvShare.addObject("totalQuantity", totalQuantity);
    	_mvShare.addObject("totalPrice", totalPrice);
    	
		return _mvShare;
	}
	
	@RequestMapping(value = "/dangNhap/{email}/{pass}") 
	public String dangNhap(HttpSession session, @PathVariable String email, @PathVariable String pass) {
		User user = userService.dangNhap(email, pass);
		if(user == null) {
			user = new User();
		}
		session.setAttribute("user", user);
		return "redirect:" + "/";
	}
	
	@RequestMapping(value = "/dangKy/{email}/{pass}/{mobile}/{name}",  produces = "text/plain;charset=UTF-8", method = RequestMethod.GET)
	public String dangKy(HttpSession session, @PathVariable String email, @PathVariable String pass, @PathVariable String mobile, @PathVariable String name) {
		userService.dangKy(email, pass, mobile, name);
		return "redirect:" + "/";
	}
}
