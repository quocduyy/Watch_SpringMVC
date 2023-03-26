package WEB.Services.USER;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import WEB.DTO.CartDTO;

@Service
public interface ICartService {
	public HashMap<Long, CartDTO> addCart(long id, HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> editCart(long id,int quanty, HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> deleteCart(long id, HashMap<Long, CartDTO> cart);
	public int totalPrice(HashMap<Long, CartDTO> cart);
	public int totalQuantities(HashMap<Long, CartDTO> cart);
}
