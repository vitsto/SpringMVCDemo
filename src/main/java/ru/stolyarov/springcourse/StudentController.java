package ru.stolyarov.springcourse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Value("#{countryOptions}")
    private Map<String, String> countryOptions;
    @Value("#{languagesRadiobutton}")
    private Map<String, String> languagesRadiobutton;

    @RequestMapping("/showForm")
//    @GetMapping("/showForm") // - it's better
    public String showForm(Model theModel) {
        //create a student object
        Student student = new Student();

        //add student object to the model
        theModel.addAttribute("student", student);
        theModel.addAttribute("theCountryOptions", countryOptions);
        theModel.addAttribute("languagesRadiobutton", languagesRadiobutton);
        return "student-form";
    }

    @RequestMapping("/processForm")
//    @PostMapping("/processForm") // - it's better
    public String processForm(@ModelAttribute("student") Student student) {
        System.out.println("Student: " + student.getFirstName() + " " + student.getLastName());
        return "student-confirmation";
    }
}
