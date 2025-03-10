package eCommerce.DAO;                 

import java.util.List;

import eCommerce.model.Category;

public interface TaskDAO {
	
	public Category addTask(Category task);
	
	public void  deleteTask(Category task);
	
	public Category  updateTask(Category task);
	
	public List<Category> listTasks();
	
	public Category getTask(int id);
	
}
