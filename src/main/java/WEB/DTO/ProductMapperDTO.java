package WEB.DTO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductMapperDTO implements RowMapper<ProductDTO>{

	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDTO productDTO = new ProductDTO();
		productDTO.setId_product(rs.getLong("id_product"));
		productDTO.setId_category(rs.getInt("id_category"));
		productDTO.setMemory(rs.getString("memory"));
		productDTO.setProduct_name(rs.getString("product_name"));
		productDTO.setPrice(rs.getString("price"));
		productDTO.setSale(rs.getInt("sale"));
		productDTO.setHighlight(rs.getBoolean("highlight"));
		productDTO.setNew_product(rs.getBoolean("new_product"));
		productDTO.setDetail(rs.getString("detail"));
		productDTO.setId_color(rs.getInt("id_color"));
		productDTO.setColor_name(rs.getString("color_name"));
		productDTO.setColor_code(rs.getString("color_code"));
		productDTO.setImage(rs.getString("image"));
		productDTO.setCraeted_at(rs.getDate("craeted_at"));
		productDTO.setUpdated_at(rs.getDate("updated_at"));
		productDTO.setCPU(rs.getString("CPU"));
		productDTO.setRAM(rs.getInt("RAM"));
		return productDTO;
	}

}
