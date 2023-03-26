package WEB.Services.USER;

import java.util.List;

import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;

@Service
public interface ISearchService {
	public List<ProductDTO> getDataProductsSearch(String keySearch, int start, int totalOnOnePage);	
	
	public List<ProductDTO> getDataProductsSearch(String keySearch);
}
