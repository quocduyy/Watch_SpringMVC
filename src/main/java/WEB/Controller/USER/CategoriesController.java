package WEB.Controller.USER;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WEB.DTO.PaginatesDTO;
import WEB.DTO.ProductDTO;
import WEB.Services.USER.CategoryService;
import WEB.Services.USER.PaginatesService;

@Controller
public class CategoriesController extends BaseController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private PaginatesService paginatesService;

	private void putObject(int id) {
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("totalPrice", totalPrice);
		_mvShare.addObject("totalQuantity", totalQuantity);
	}
	
	@RequestMapping("/sanpham/{id}")
	public ModelAndView categories(@PathVariable int id) {
		_mvShare.setViewName("user/category");
		putObject(id);
		int totalData = categoryService.getDataProductByID(id).size();
		PaginatesDTO paginateInfo = paginatesService.getInfoPaginate(totalData, totalOnOnePage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);	
		
		List<ProductDTO> products = getProducts(categoryService.getDataProductPaginates(id, paginateInfo.getStartPage(), totalOnOnePage));//9		
		_mvShare.addObject("paginateProduct", products);
		return _mvShare;
	}

	@RequestMapping("/sanpham/{id}/{currentPage}")
	public ModelAndView categories(@PathVariable int id, @PathVariable int currentPage) {
		_mvShare.setViewName("user/category");
		putObject(id);
		
		PaginatesDTO paginateInfo = paginatesService.getInfoPaginate(categoryService.getDataProductByID(id).size(),
				totalOnOnePage, currentPage);
		_mvShare.addObject("paginateInfo", paginateInfo);
		
		List<ProductDTO> getDataProduct = getProducts(categoryService.getDataProductPaginates(id, paginateInfo.getStartPage(),totalOnOnePage));
		_mvShare.addObject("paginateProduct", getDataProduct);
		return _mvShare;
	}
}
