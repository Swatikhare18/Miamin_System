package eCommerce.DAO;

import java.util.List;
import eCommerce.model.Product;

public interface ProductDAO {

	
	public Product addProduct(Product product);
	
	public void deleteProduct(Product product);
	
	public Product updateProduct(Product product);
	
	public List<Product> listProducts();
	
	public Product getProduct(int productId);

}
