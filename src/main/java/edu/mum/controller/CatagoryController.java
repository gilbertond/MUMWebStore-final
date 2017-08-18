package edu.mum.controller;

import edu.mum.domain.ProductCategory;
import edu.mum.service.CatagoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


@Controller
public class CatagoryController {
    @Autowired
    CatagoryService catagoryService;

    @RequestMapping("/addCatagoryForm")
    public String catagoryForm( @ModelAttribute("catagory") ProductCategory catagory ){
        return "/catagory";
    }

    @RequestMapping(value = "/addCatagory", method = RequestMethod.POST)
    public String addCatagory(@ModelAttribute("catagory") @Valid ProductCategory catagory, BindingResult result){
        if(result.hasErrors()){
            return "/catagory";
        }
        catagoryService.addCatagory(catagory);
//        System.out.println("AASAJBADN<MAH");
        return "redirect:/addCatagoryForm";
    }

}
