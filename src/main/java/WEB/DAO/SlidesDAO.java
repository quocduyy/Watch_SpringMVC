package WEB.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WEB.Entity.MapperSlides;
import WEB.Entity.Slides;

@Repository
public class SlidesDAO extends BaseDAO{
	public List<Slides> getDataSlides(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
}
