package com.vu2rmk.expensetracker.controller;

import com.vu2rmk.expensetracker.model.Expense;
import com.vu2rmk.expensetracker.service.ExpenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MasterController {

    @Autowired
    ExpenseService expenseService;

    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView mov = new ModelAndView("home");
        mov.addObject("message","List of expenses");
        List<Expense> expenses = expenseService.findAll();
        mov.addObject("expenses",expenses);
        return mov;
    }

    @RequestMapping("/expense")
    public ModelAndView addExpense(){
        ModelAndView mov = new ModelAndView("expense");
        mov.addObject("expense",new Expense());
        return mov;
    }
}
