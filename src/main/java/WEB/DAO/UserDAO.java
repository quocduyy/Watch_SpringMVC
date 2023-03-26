package WEB.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WEB.Entity.MapperUser;
import WEB.Entity.User;

@Repository
public class UserDAO extends BaseDAO{
	public User getDataUser(String email, String pass){
		List<User> users = new ArrayList<User>();
		String sql = "SELECT * FROM users where email = '" + email + "' AND password = '" + pass + "' LIMIT 1";
		users = jdbcTemplate.query(sql, new MapperUser());
		return users.get(0);
	}
	
	public void dangKy(String email, String pass, String mobile, String name){
		String sql = "INSERT INTO `users` (`email`, `password`, `mobile`, `name`) VALUES ('" + email + "','"+ pass + "','" + mobile +"','" + name + "')";
		jdbcTemplate.execute(sql);
	}
}
