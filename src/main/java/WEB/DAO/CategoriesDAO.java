package WEB.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WEB.Entity.Categories;
import WEB.Entity.MapperCategories;

@Repository
public class CategoriesDAO extends BaseDAO{
	public List<Categories> getDataCategories(){
		List<Categories> categories = new ArrayList<Categories>();
		String sql = "SELECT * FROM categories";
		categories = jdbcTemplate.query(sql, new MapperCategories());
		return categories;
	}
	
	public Categories getDataCategoryByID(long id){
		List<Categories> categories = new ArrayList<Categories>();
		String sql = "SELECT ca.id, ca.name FROM products p, categories ca WHERE p.id_category = ca.id AND p.id = " + id;;
		categories = jdbcTemplate.query(sql, new MapperCategories());
		return categories.get(0);
	}
}
