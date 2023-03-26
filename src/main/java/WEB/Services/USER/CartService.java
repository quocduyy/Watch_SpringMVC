package WEB.Services.USER;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WEB.DAO.CartDAO;
import WEB.DTO.CartDTO;

@Service
public class CartService implements ICartService {

	@Autowired
	private CartDAO cartDAO;

	@Override
	public HashMap<Long, CartDTO> addCart(long id, HashMap<Long, CartDTO> cart) {
		return cartDAO.addCart(id, cart);
	}

	@Override
	public HashMap<Long, CartDTO> editCart(long id, int quanty, HashMap<Long, CartDTO> cart) {
		return cartDAO.editCart(id, quanty, cart);
	}

	@Override
	public HashMap<Long, CartDTO> deleteCart(long id, HashMap<Long, CartDTO> cart) {
		return cartDAO.deleteCart(id, cart);
	}

	@Override
	public int totalPrice(HashMap<Long, CartDTO> cart) {
		return cartDAO.totalPrice(cart);
	}

	@Override
	public int totalQuantities(HashMap<Long, CartDTO> cart) {
		return cartDAO.totalQuantities(cart);
	}
}
