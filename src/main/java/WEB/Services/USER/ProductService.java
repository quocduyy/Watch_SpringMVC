package WEB.Services.USER;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DAO.CategoriesDAO;
import WEB.DAO.ProductDAO;
import WEB.DTO.ProductDTO;
import WEB.Entity.Categories;

@Service
public class ProductService extends BaseServices implements IProductService{
	
	@Autowired
	private CategoriesDAO categoriesDAO;
			
	@Override
	public ProductDTO getDataProductByID(long id) {
		return productDAO.getDataProductDetailByID(id);
	}

	@Override
	public Categories getDataCategoryByID(long id) {
		return categoriesDAO.getDataCategoryByID(id);
	}
	
	@Override
	public List<String> getDataDetailImage(long id){
		return productDAO.getDataDetailImages(id);
	}
	
	@Override
	public List<String> getDataDetailPrices(long id){
		List<String> prices = new ArrayList<>();
		DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
		for (String price : productDAO.getDataDetailPrices(id)) {
			String format = decimalFormat.format(Integer.parseInt(price));
			prices.add(format);
		}
		return prices;
	}
	
	@Override
	public List<String> getDataDetailMemories(long id){
		return productDAO.getDataDetailMemories(id);
	}
	
	@Override
	public List<String> getDataDetailColors(long id){
		return productDAO.getDataDetailColor(id);
	}
}
