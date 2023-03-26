package WEB.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WEB.Entity.MapperMenus;
import WEB.Entity.Menus;

@Repository
public class MenusDAO extends BaseDAO{
	public List<Menus> getDataMenus(){
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM menus";
		list = jdbcTemplate.query(sql, new MapperMenus());
		return list;
	}
}
