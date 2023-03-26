package WEB.DAO;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Repository;

import WEB.DTO.ProductDTO;
import WEB.DTO.ProductMapperDTO;

@Repository
public class ProductDAO extends BaseDAO {

	private final boolean YES = true;
	private final boolean NO = false;
	private final int legth = 7;

	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id AS id_product ");
		sql.append(", p.id_category AS id_category ");
		sql.append(", p.memory");
		sql.append(", p.name AS product_name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.detail ");
		sql.append(", c.id AS id_color ");
		sql.append(", c.name AS color_name ");
		sql.append(", c.code AS color_code ");
		sql.append(", c.image ");
		sql.append(", p.craeted_at ");
		sql.append(", p.updated_at ");
		sql.append(", p.CPU ");
		sql.append(", p.RAM ");
		sql.append("FROM ");
		sql.append("products p ");
		sql.append("INNER JOIN ");
		sql.append("colors c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}
	
	private String sqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = sqlString();
		sql.append("WHERE 1 = 1 ");
		if (highLight) {
			sql.append("AND p.highlight = true ");
		}
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if (highLight) {
			sql.append("LIMIT 9 ");
		}
		if (newProduct) {
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}
	
	
	private StringBuffer sqlSearch(String keySearch) {
		StringBuffer sql = sqlString();
		sql.append("WHERE p.name LIKE '" + keySearch +  "%'");
		return sql;
	}

	private StringBuffer sqlProductsByID(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE ");
		sql.append("id_category = " + id);
		return sql;
	}
	
	private String sqlProductByID(long id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE ");
		sql.append("p.id = " + id);
		sql.append(" LIMIT 1");
		return sql.toString();
	}

	private String sqlProductPaginate(int id, int start, int totalOnOnePage) {
		StringBuffer sql = sqlProductsByID(id);
		sql.append(" LIMIT " + start + ", " + totalOnOnePage);
		return sql.toString();
	}
	
	private String sqlSearchPaginate(String keySearch, int start, int totalOnOnePage) {
		StringBuffer sql = sqlSearch(keySearch);
		sql.append(" LIMIT " + start + ", " + totalOnOnePage);
		return sql.toString();
	}
	
	public List<ProductDTO> getDataProductsSearch(String keySearch, int start, int totalOnOnePage) {
		List<ProductDTO> listDataProductById = jdbcTemplate.query(sqlSearch(keySearch).toString(),
				new ProductMapperDTO());
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		if (listDataProductById.size() > 0) {
			list = jdbcTemplate.query(sqlSearchPaginate(keySearch, start, totalOnOnePage), new ProductMapperDTO());
		}
		return list;
	}

	public List<ProductDTO> getDataProductSearch(String keySearch) {
		return jdbcTemplate.query(sqlSearch(keySearch).toString(), new ProductMapperDTO());
	}


	public List<ProductDTO> getDataProducts() {
		return jdbcTemplate.query(sqlProducts(YES, NO), new ProductMapperDTO());
	}

	public List<ProductDTO> getHomeDataProduct() {

		List<ProductDTO> list = new ArrayList<>();
		for (ProductDTO product : getDataProducts()) {
			List<String> price = new ArrayList<String>(Arrays.asList(product.getPrice().split(", ")));
			List<String> image = new ArrayList<String>(Arrays.asList(product.getImage().split(", ")));

			list.add(new ProductDTO(product.getId_product(), product.getProduct_name(), price.get(0), image.get(0)));
		}
		return list;
	}

	public List<ProductDTO> getDataProductByIDCategory(int id) {
		return jdbcTemplate.query(sqlProductsByID(id).toString(), new ProductMapperDTO());
	}

	public List<ProductDTO> getDataProductPaginates(int id, int start, int totalOnOnePage) {
		List<ProductDTO> listDataProductById = jdbcTemplate.query(sqlProductsByID(id).toString(),
				new ProductMapperDTO());
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		if (listDataProductById.size() > 0) {
			if(listDataProductById.size() < totalOnOnePage) {
				start = 0;
			}
			list = jdbcTemplate.query(sqlProductPaginate(id, start, totalOnOnePage), new ProductMapperDTO());
		}
		return list;
	}

	public List<String> getDataDetailImages(long id) {
		List<String> images = new ArrayList<>();

		for (String image : Arrays.asList(getOneProductByID(id).getImage().split(", "))) {
			images.add(image);
		}
		return images;
	}

	public List<String> getDataDetailPrices(long id) {
		List<String> prices = new ArrayList<>();

		for (String price : Arrays.asList(getOneProductByID(id).getPrice().split(", "))) {
			prices.add(price);
		}
		return prices;
	}

	public List<String> getDataDetailMemories(long id) {
		List<String> memories = new ArrayList<>();
		for (String memory : Arrays.asList(getOneProductByID(id).getMemory().split(", "))) {
			memories.add(memory);
		}
		return memories;
	}

	public List<String> getDataDetailColor(long id) {
		List<String> colors = new ArrayList<>();

		for (String color : Arrays.asList(getOneProductByID(id).getColor_name().split(", "))) {
			colors.add(color);
		}
		return colors;
	}

	
	public ProductDTO getDataProductDetailByID(long id) {
		ProductDTO productDetail = new ProductDTO();
		ProductDTO product = findDataProductByID(id);
		StringBuffer cpu = new StringBuffer();
		
		for (int i = 0; i < product.getCPU().length(); i++) {
			cpu.append(product.getCPU().charAt(i));
			if (cpu.length() > legth) {
				cpu.append("...");
				break;
			}

		}
			productDetail = new ProductDTO(product.getId_product(), product.getId_category(), product.getProduct_name(),
					product.getSale(), product.getDetail(), product.getRAM(), cpu.toString());
		return productDetail;

	}
	
	public ProductDTO getOneProductByID(long id) {
		List<ProductDTO> listData = jdbcTemplate.query(sqlProductByID(id), new ProductMapperDTO());
		return listData.get(0);
	}

	public ProductDTO findDataProductByID(long id) {
		ProductDTO productDTO = jdbcTemplate.queryForObject(sqlProductByID(id), new ProductMapperDTO());
		return productDTO;
	}
}
