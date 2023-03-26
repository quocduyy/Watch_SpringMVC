package WEB.Services.USER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DAO.UserDAO;
import WEB.Entity.User;

@Service
public class UserService implements IUserService{

	@Autowired 
	private UserDAO userDAO;
	
	@Override
	public User dangNhap(String email, String pass) {
		return userDAO.getDataUser(email, pass);
	}

	@Override
	public void dangKy(String email, String pass, String mobile, String name) {
		userDAO.dangKy(email, pass, mobile, name);
	}
}
