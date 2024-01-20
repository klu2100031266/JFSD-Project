package com.example.LibraryManagement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {

    @RequestMapping("/contactus")
    public String showContactForm(Model model) {
        model.addAttribute("message", null);
        return "contactus";
    }
    @PostMapping("/contactus")
    public String handleContactForm(Model model, Contact form) {
        model.addAttribute("status", "success");
        model.addAttribute("message", "Email sent Successfully!");

        return "contactus";
    }
}
