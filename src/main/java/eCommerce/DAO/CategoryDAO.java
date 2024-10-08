package eCommerce.DAO;                 

import java.util.List;
import eCommerce.model.Category;

public interface CategoryDAO {
	
	public Category addCategory(Category category);
	
	public void  deleteCategory(Category category);
	
	public Category  updateCategory(Category category);
	
	public List<Category> listCategories();
	
	public Category getCategory(int categoryId);
	
}
