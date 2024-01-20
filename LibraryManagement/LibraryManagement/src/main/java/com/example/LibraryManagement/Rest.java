package com.example.LibraryManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;


@Controller
public class Rest {

    @Autowired
    public ServiceLayer authService;
    
    UserDao udao;
    BookDao bdao;
	public Rest(UserDao udao, BookDao bdao) {
	    this.udao=udao;
	    this.bdao=bdao;
	}
		
	@GetMapping("login")
	public String homePage()
	{
		return "loginsignup";
	}
	@PostMapping(path="/loginaction")
	public String login(@ModelAttribute("us") User us) {
		System.out.println(us.getUsername()+" "+us.getPassword());
		String st =authService.authenticate(us.getUsername(), us.getPassword());
        if(st!=null) {
        	System.out.println(st);
        	if(st.equals("admin"))
        	{
        		return "AdminPage";
        	}
        	else
        	{
        		//return "allbooks";
        		return "redirect:allbooks";
        	}
            
        }
        else {
            return "failure";
        }
    }
	
	
	
//	@GetMapping("register")
//	public String RegistrationPage()
//	{
//		return "register";
//	}
	@PostMapping(path="/LibraryManagement/login")
	public String fun4(@ModelAttribute("u") User u)
	{
		udao.save(u);
		return "redirect:/login";
    }
	
	@GetMapping("contactus")
	public String contactUs()
    {
		return "contactus";
    }
	
	@GetMapping("visitandmaps")
	public String maps()
    {
		return "map";
    }
	
	@GetMapping("feedbackform")
	public String feedback()
    {
		return "feedback";
    }
	
	@GetMapping("/")
	public String mainPage()
	{
		return "mainpage";
	}
	
	@GetMapping("searchpage")
	public String servicePage()
	{
		return "searchpage";
	}  
	@GetMapping("/search")
	public String searchBooksByTitle(@RequestParam("title") String title, Model model) {
		List<Book> books = authService.searchByTitle(title);
		model.addAttribute("books", books);
		return "searchres";
	}
	@GetMapping("/allbooks")
	public String allbooks(Model model) {
		List<Book> books = authService.getAllBooks();
		model.addAttribute("books", books);
		return "allbooks";
	}
	
	@GetMapping("addnewbook")
	public String addnewBook()
	{
		return "addnewbook";
	}
	@PostMapping("/addAction")
	public String addAction(@ModelAttribute("book") Book book) {
		bdao.save(book);
		return "redirect:/addnewbook";
	}
	
	@GetMapping("removebook")
	public String removeBook()
	{
		return "removebook";
	}
	@PostMapping("/deleteAction")
	public String deleteAction(@ModelAttribute("book") Book b) {
		bdao.deleteById(b.getIsbn());
		return "redirect:/removebook";
	}
  
	@GetMapping("updatebook")
	public String updateBook()
	{
		return "updatebook";
	}
	@PostMapping("/updAction")
	public String updAction(@ModelAttribute("book") Book book)
	{
		bdao.save(book);
		return "redirect:/updatebook";
	}
	
	@GetMapping("returnbook")
	public String returnBook()
	{
		return "returnbook";
	}
  
}