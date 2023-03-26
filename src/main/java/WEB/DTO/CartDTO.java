package WEB.DTO;

public class CartDTO{
	private int quantities;
	private int totalPrice;
	private ProductDTO productDTO;
	
	public CartDTO() {
	}
		
	public CartDTO(int quantities, int totalPrice, ProductDTO productDTO) {
		this.quantities = quantities;
		this.totalPrice = totalPrice;
		this.productDTO = productDTO;
	}
	
	public int getQuantities() {
		return quantities;
	}

	public void setQuantities(int quantities) {
		this.quantities = quantities;
	}

	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductDTO getProductDTO() {
		return productDTO;
	}
	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}
}
