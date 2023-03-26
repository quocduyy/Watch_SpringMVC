package WEB.Services.USER;

import java.util.List;

import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;

@Service
public class SearchService extends BaseServices implements ISearchService{
	@Override
	public List<ProductDTO> getDataProductsSearch(String keySearch, int start, int totalOnOnePage) {
		return productDAO.getDataProductsSearch(keySearch, start, totalOnOnePage);
	}

	@Override
	public List<ProductDTO> getDataProductsSearch(String keySearch) {
		return productDAO.getDataProductSearch(keySearch);
	}
	
	
}
