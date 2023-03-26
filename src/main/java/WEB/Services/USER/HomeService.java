package WEB.Services.USER;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DAO.CategoriesDAO;
import WEB.DAO.MenusDAO;
import WEB.DAO.ProductDAO;
import WEB.DAO.SlidesDAO;
import WEB.DTO.ProductDTO;
import WEB.Entity.Categories;
import WEB.Entity.Menus;
import WEB.Entity.Slides;

@Service
public class HomeService extends BaseServices implements IHomeService {
	@Autowired
	private SlidesDAO slidesDAO;

	@Autowired
	private CategoriesDAO categoriesDAO;

	@Autowired
	private MenusDAO menusDAO;

	@Override
	public List<Slides> getDataSlides() {
		return slidesDAO.getDataSlides();
	}

	@Override
	public List<Categories> getDataCategories() {
		return categoriesDAO.getDataCategories();
	}

	@Override
	public List<Menus> getDataMenus() {
		return menusDAO.getDataMenus();
	}

	@Override
	public List<ProductDTO> getDataProducts() {
		List<ProductDTO> list = new ArrayList<>();
		DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
		for (ProductDTO product : productDAO.getHomeDataProduct()) {
			String format = decimalFormat.format(Integer.parseInt(product.getPrice()));
			list.add(new ProductDTO(product.getId_product(), product.getProduct_name(), format, product.getImage()));
		}
		return list;
	}
}
