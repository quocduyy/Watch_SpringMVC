package WEB.Services.USER;

import java.util.List;

import org.springframework.stereotype.Service;

import WEB.DTO.ProductDTO;

@Service
public class CategoryService extends BaseServices implements ICategoriesService{

	@Override
	public List<ProductDTO> getDataProductPaginates(int id,int start, int totalOnOnePage) {
		return productDAO.getDataProductPaginates(id, start, totalOnOnePage);
	}

	@Override
	public List<ProductDTO> getDataProductByID(int id) {
		return productDAO.getDataProductByIDCategory(id);
	}
}
