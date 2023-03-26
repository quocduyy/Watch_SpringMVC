package WEB.DAO;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import WEB.DTO.CartDTO;
import WEB.DTO.ProductDTO;

@Repository
public class CartDAO extends BaseDAO {

	@Autowired
	private ProductDAO productDAO = new ProductDAO();

	public HashMap<Long, CartDTO> addCart(long id, HashMap<Long, CartDTO> cart) {
		CartDTO itemCart = new CartDTO();
		ProductDTO product = productDAO.findDataProductByID(id);
		if (product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantities(itemCart.getQuantities() + 1);
			itemCart.setTotalPrice(itemCart.getQuantities() * Integer.parseInt(itemCart.getProductDTO().getPrice()));
		} else {
			itemCart.setProductDTO(product);
			itemCart.setQuantities(1);
			itemCart.setTotalPrice(Integer.parseInt(product.getPrice()));
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Long, CartDTO> editCart(long id, int quantities, HashMap<Long, CartDTO> cart) {
		if (cart == null) {
			return cart;
		}
		CartDTO itemCart = new CartDTO();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantities(quantities);
			itemCart.setTotalPrice(quantities * Integer.parseInt(itemCart.getProductDTO().getPrice()));
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Long, CartDTO> deleteCart(long id, HashMap<Long, CartDTO> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	public int totalQuantities(HashMap<Long, CartDTO> cart) {
		int quantities = 0;
		for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			quantities += itemCart.getValue().getQuantities();
		}
		return quantities;
	}

	public int totalPrice(HashMap<Long, CartDTO> cart) {
		int price = 0;
		for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			price += itemCart.getValue().getTotalPrice();
		}
		return price;
	}
}