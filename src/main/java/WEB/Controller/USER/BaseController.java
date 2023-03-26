package WEB.Controller.USER;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import WEB.DTO.ProductDTO;
import WEB.Services.USER.HomeService;

@Controller
public class BaseController{
	@Autowired
	protected HomeService _homeServices;
	
	public ModelAndView _mvShare = new ModelAndView();
	public static int totalPrice = 0;
	public static int totalQuantity = 0;
	protected final int totalOnOnePage = 9;
	
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("menus", _homeServices.getDataMenus());
		return _mvShare;
	}
	
	protected List<ProductDTO> getProducts(List<ProductDTO> dataProductPaginate) {
		List<ProductDTO> products = dataProductPaginate;
		DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
		List<ProductDTO> list = new ArrayList<>();
		for (ProductDTO product : products) {
			List<String> listImage = Arrays.asList(product.getImage().split(", "));
			List<String> listPrice = Arrays.asList(product.getPrice().split(", "));
			String price = decimalFormat.format(Integer.parseInt(listPrice.get(0)));
			product.setImage(listImage.get(0));
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
}
