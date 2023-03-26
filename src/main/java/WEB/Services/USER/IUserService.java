package WEB.Services.USER;

import org.springframework.stereotype.Service;

import WEB.Entity.User;

@Service
public interface IUserService {
	public User dangNhap(String email, String pass);
	public void dangKy(String email, String pass, String mobile, String name);
}
