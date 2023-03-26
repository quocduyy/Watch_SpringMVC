package WEB.Controller.USER;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WEB.DTO.PaginatesDTO;
import WEB.DTO.ProductDTO;
import WEB.Services.USER.PaginatesService;
import WEB.Services.USER.SearchService;

@Controller
public class SearchController extends BaseController {

	@Autowired
	private SearchService searchService;

	@Autowired
	private PaginatesService paginatesService;

	@RequestMapping("/key={keySearch}")
	public ModelAndView searchProduct(@PathVariable String keySearch) {
		_mvShare.setViewName("user/products/search");
		_mvShare.addObject("totalPrice", totalPrice);
		_mvShare.addObject("totalQuantity", totalQuantity);
		int totalData = searchService.getDataProductsSearch(keySearch).size();
		PaginatesDTO paginateInfo = paginatesService.getInfoPaginate(totalData, totalOnOnePage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		List<ProductDTO> products = new ArrayList<>();
		if (keySearch != "") {
			products = getProducts(
					searchService.getDataProductsSearch(keySearch, paginateInfo.getStartPage(), totalOnOnePage));
		}
		_mvShare.addObject("searchProducts", products);
		return _mvShare;
	}

	@RequestMapping("/search/key={keySearch}/{currentPage}")
	public ModelAndView categories(@PathVariable String keySearch, @PathVariable int currentPage) {
		_mvShare.setViewName("user/products/search");
		PaginatesDTO paginateInfo = paginatesService
				.getInfoPaginate(searchService.getDataProductsSearch(keySearch).size(), totalOnOnePage, currentPage);
		_mvShare.addObject("paginateInfo", paginateInfo);

		List<ProductDTO> productsSearch = getProducts(
				searchService.getDataProductsSearch(keySearch, paginateInfo.getStartPage(), totalOnOnePage));
		_mvShare.addObject("searchProducts", productsSearch);
		return _mvShare;
	}
}
