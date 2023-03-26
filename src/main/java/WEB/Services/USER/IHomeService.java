package WEB.Services.USER;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;
import WEB.Entity.Categories;
import WEB.Entity.Menus;
import WEB.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> getDataSlides();
	@Autowired
	public List<Categories> getDataCategories();
	@Autowired
	public List<Menus> getDataMenus();
	@Autowired
	public List<ProductDTO> getDataProducts();

}
