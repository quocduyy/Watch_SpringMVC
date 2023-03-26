package WEB.Services.USER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DAO.ProductDAO;

@Service
public class BaseServices {
	@Autowired
	protected ProductDAO productDAO;
}
