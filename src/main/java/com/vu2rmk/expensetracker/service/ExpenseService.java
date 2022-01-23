package com.vu2rmk.expensetracker.service;

import com.vu2rmk.expensetracker.model.Expense;

import java.util.List;

public interface ExpenseService {

    List<Expense> findAll();

    void save(Expense expense);
}
