package WEB.Services.USER;

import java.util.List;

import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;

@Service
public interface ICategoriesService {
	
	public List<ProductDTO> getDataProductByID(int id);
	
	public List<ProductDTO> getDataProductPaginates(int id,int start, int totalOnOnePage);
}
