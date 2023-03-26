package WEB.Services.USER;

import java.util.List;

import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;
import WEB.Entity.Categories;

@Service
public interface IProductService {
	public ProductDTO getDataProductByID(long id);
	
	public Categories getDataCategoryByID(long id);
	
	public List<String> getDataDetailImage(long id);
	
	public List<String> getDataDetailPrices(long id);
	
	public List<String> getDataDetailMemories(long id);
	
	public List<String> getDataDetailColors(long id);
}
