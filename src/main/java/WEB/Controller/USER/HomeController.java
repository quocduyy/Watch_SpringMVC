package WEB.Controller.USER;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
    @RequestMapping(value = { "/", "/trang-chu"})
	public ModelAndView index() {
    	_mvShare.addObject("slides", _homeServices.getDataSlides());
    	_mvShare.addObject("categories", _homeServices.getDataCategories());
    	_mvShare.addObject("products", _homeServices.getDataProducts());
    	_mvShare.addObject("totalQuantity", totalQuantity);
    	_mvShare.addObject("totalPrice", totalPrice);
    	_mvShare.setViewName("user/index");
    	return _mvShare;
    }
}
