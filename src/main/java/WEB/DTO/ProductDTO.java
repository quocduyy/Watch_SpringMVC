package WEB.DTO;

import java.sql.Date;

public class ProductDTO {
	private long id_product;
	private int id_category;
	private String memory;
	private String product_name;
	private String price;
	private int sale;
	private boolean highlight;
	private boolean new_product;
	private String detail;
	private int id_color;
	private String color_name;
	private String color_code;
	private String image;
    private Date craeted_at;
    private Date updated_at;
    private int RAM;
    private String CPU;

	public ProductDTO() {
	}
    	
	public ProductDTO(long id_product, int id_category, String memory, String product_name, String price, int sale,
			boolean highlight, boolean new_product, String detail, int id_color, String color_name, String image,
			int RAM, String CPU) {
		this.id_product = id_product;
		this.id_category = id_category;
		this.memory = memory;
		this.product_name = product_name;
		this.price = price;
		this.sale = sale;
		this.highlight = highlight;
		this.new_product = new_product;
		this.detail = detail;
		this.id_color = id_color;
		this.color_name = color_name;
		this.image = image;
		this.RAM = RAM;
		this.CPU = CPU;
	}	


	public ProductDTO(long id_product, String product_name, String price, String image) {
		this.id_product = id_product;
		this.product_name = product_name;
		this.price = price;
		this.image = image;
	}

	public ProductDTO(long id_product, int id_category, String product_name, int sale, String detail,
			int RAM, String CPU) {
		this.id_product = id_product;
		this.id_category = id_category;
		this.product_name = product_name;
		this.sale = sale;
		this.detail = detail;
		this.RAM = RAM;
		this.CPU = CPU;
	}

	public int getRAM() {
		return RAM;
	}

	public void setRAM(int RAM) {
		this.RAM = RAM;
	}

	public String getCPU() {
		return CPU;
	}

	public void setCPU(String CPU) {
		this.CPU = CPU;
	}
	
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public int getId_category() {
		return id_category;
	}
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public boolean isHighlight() {
		return highlight;
	}
	public void setHighlight(boolean highlight) {
		this.highlight = highlight;
	}
	public boolean isNew_product() {
		return new_product;
	}
	public void setNew_product(boolean new_product) {
		this.new_product = new_product;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getId_color() {
		return id_color;
	}
	public void setId_color(int id_color) {
		this.id_color = id_color;
	}
	public String getColor_name() {
		return color_name;
	}
	public void setColor_name(String color_name) {
		this.color_name = color_name;
	}
	public String getColor_code() {
		return color_code;
	}
	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getCraeted_at() {
		return craeted_at;
	}
	public void setCraeted_at(Date craeted_at) {
		this.craeted_at = craeted_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
}
