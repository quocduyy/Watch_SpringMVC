package WEB.Controller.USER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WEB.Services.USER.ProductService;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/product_detail/{id}")
	public ModelAndView productDetail(@PathVariable long id){
		_mvShare.setViewName("user/products/product");
    	_mvShare.addObject("categories", _homeServices.getDataCategories());
		_mvShare.addObject("product", productService.getDataProductByID(id));
		_mvShare.addObject("idCategory", productService.getDataCategoryByID(id));
		_mvShare.addObject("images", productService.getDataDetailImage(id));
		_mvShare.addObject("memories", productService.getDataDetailMemories(id));
		_mvShare.addObject("colors", productService.getDataDetailColors(id));
		_mvShare.addObject("prices", productService.getDataDetailPrices(id));
		_mvShare.addObject("totalPrice",totalPrice);
		_mvShare.addObject("totalQuantity",totalQuantity);
		return _mvShare;
	}
}
