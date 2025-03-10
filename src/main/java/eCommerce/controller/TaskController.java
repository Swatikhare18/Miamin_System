package eCommerce.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import eCommerce.DAO.TaskDAO;
import eCommerce.model.Category;

@Controller
public class TaskController {

	@Autowired
	TaskDAO taskDAO;
	
	@RequestMapping("/task")
	public String showCategory(Model m)
	{
		m.addAttribute("pageinfo", "Manage Category-");
		
		List<Category> listtask = taskDAO.listTasks();
		
		m.addAttribute("listTasks", listtask);
		
		return "Category";
		
	}
	
	@RequestMapping(value="/AddTask" , method=RequestMethod.POST)
	public String addCategory(Model m ,@RequestParam("tasktitle")String title ,@RequestParam("taskdescription")String description,@RequestParam("taskpriority")String priority,@RequestParam("taskemployee")String employee,@RequestParam("taskduedate")int duedate,@RequestParam("taskstatus")String status)
	{
		Category task = new Category();
		
		task.setTitle(title);
		task.setDescription(description);
		task.setPriority(priority);
		task.setStatus(status);
		task.setEmployee(employee);
		task.setDuedate(duedate);
		
		taskDAO.addTask(task);
		
		List<Category> listtask = taskDAO.listTasks();
		
		m.addAttribute("listTasks", listtask);
		
		m.addAttribute("pageinfo", "Manage Category-");
		
		return "Category";
		
	}
	
	@RequestMapping(value="/UpdateTask" , method=RequestMethod.POST)
	public String updateCategory(Model m ,@RequestParam("taskid")int id,@RequestParam("tasktitle")String title ,@RequestParam("taskdescription")String description,@RequestParam("taskpriority")String priority,@RequestParam("taskemployee")String employee,@RequestParam("taskduedate")int duedate,@RequestParam("taskstatus")String status)
	
	{
		Category task = taskDAO.getTask(id);
		
		task.setTitle(title);
		task.setDescription(description);
		task.setPriority(priority);
		task.setStatus(status);
		task.setEmployee(employee);
		task.setDuedate(duedate);
		
		taskDAO.updateTask(task);
		
		List<Category> listtasks = taskDAO.listTasks();
		
		m.addAttribute("listTasks", listtasks);
		
		m.addAttribute("pageinfo", "Manage Category-");
		
		return "Category";
		
	}
	
	
	@RequestMapping(value="/editTask/{id}")
	public String editCategory(Model m ,@PathVariable("id")int id)
	{
		Category task = taskDAO.getTask(id);
		
		
		m.addAttribute("task", task);
		
		m.addAttribute("pageinfo", "Manage Category-");
		
		return "UpdateCategory";		
		
	}
	
	
	@RequestMapping(value="/deleteTask/{id}")
	public String deleteCategory(Model m ,@PathVariable("id")int id)
	{
		Category task = taskDAO.getTask(id);
		
		taskDAO.deleteTask(task);
		
		List<Category> listtasks = taskDAO.listTasks();
		
		m.addAttribute("listTasks", listtasks);
		
		m.addAttribute("pageinfo", "Manage Category-");
		
		return "Category";		
		
	}
	
		
}
