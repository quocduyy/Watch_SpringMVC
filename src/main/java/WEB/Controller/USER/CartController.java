package WEB.Controller.USER;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WEB.DTO.CartDTO;
import WEB.Services.USER.CartService;

@Controller
public class CartController extends BaseController{

	@Autowired
	private CartService cartService;
	
	@RequestMapping("/listCart")
	public ModelAndView listCart(HttpServletRequest request,HttpSession session){
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
    	_mvShare.addObject("categories", _homeServices.getDataCategories());
		_mvShare.addObject("totalPrice",totalPrice);
		_mvShare.addObject("totalQuantity",totalQuantity);
		for(int i=0; i< cart.size(); i++) {
			
		}
    	_mvShare.setViewName("user/list_cart");
    	return _mvShare;
    }
	
	@RequestMapping("/addCart/{id}")
	public String addCart(HttpServletRequest request,HttpSession session,@PathVariable long id){
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.addCart(id, cart);
		session.setAttribute("cart", cart);
		totalPrice = cartService.totalPrice(cart);
		totalQuantity = cartService.totalQuantities(cart);
		session.setAttribute("totalPriceCart", totalPrice);
		session.setAttribute("totalQuantitiesCart", totalQuantity);
		return "redirect:" + request.getHeader("Referer");	
	}
	
	@RequestMapping("/editCart/{id}/{quantity}")
	public String editCart(HttpServletRequest request,HttpSession session,@PathVariable long id, @PathVariable int quantity){
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.editCart(id, quantity ,cart);
		session.setAttribute("cart", cart);
		totalPrice = cartService.totalPrice(cart);
		totalQuantity = cartService.totalQuantities(cart);
		session.setAttribute("totalPriceCart", totalPrice);
		session.setAttribute("totalQuantitiesCart", totalQuantity);
		return "redirect:" + request.getHeader("Referer");	
	}
	
	@RequestMapping("/deleteCart/{id}")
	public String deleteCart(HttpServletRequest request,HttpSession session,@PathVariable long id){
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.deleteCart(id, cart);
		totalPrice = cartService.totalPrice(cart);
		
		totalQuantity = cartService.totalQuantities(cart);
		session.setAttribute("totalPriceCart", totalPrice);
		session.setAttribute("totalQuantitiesCart", totalQuantity);
		return "redirect:" + request.getHeader("Referer");	
	}
}
