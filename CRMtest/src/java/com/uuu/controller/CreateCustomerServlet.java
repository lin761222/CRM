/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uuu.controller;

import com.uuu.model.Customer;
import com.uuu.model.CustomerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author programer
 */
@WebServlet(name = "CreateCustomerServlet", urlPatterns = {"/customer/ccController"})
public class CreateCustomerServlet extends HttpServlet {

    private static final String CREATE_ACCOUNT_ACTION="create_account";
    private static final String CREATE_CUSTOMER_ACTION="create_customer";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch(action){
            case CREATE_ACCOUNT_ACTION:
                processCreateCustomer1(request, response);
                break;
            case CREATE_CUSTOMER_ACTION:
                processCreateCustomer1(request, response);
                break;
        }
    }
    
    protected void processCreateCustomer1(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        RequestDispatcher view = null;
        LinkedList<String> errors = new LinkedList<>();
        request.setAttribute("errors", errors);

        //1.Retrieve Form Data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String gender = request.getParameter("gender");
        String[] habits = request.getParameterValues("habit");
        //2. Convert Form Data
        //都是字串不用轉換
        //3. Validate Form Data
        if (name == null || name.trim().isEmpty()) {
            errors.add("姓名欄位必須填寫");
        }
        if (email == null || email.trim().isEmpty()) {
            errors.add("email欄位必須填寫");
        }
        if (phone == null || phone.trim().isEmpty()) {
            errors.add("phone欄位必須填寫");
        }
        if (address == null || address.trim().isEmpty()) {
            errors.add("address欄位必須填寫");
        }
        if (year == null || year.trim().isEmpty()) {
            errors.add("year欄位必須填寫");
        }
        if (month == null || month.trim().isEmpty()) {
            errors.add("month欄位必須填寫");
        }
        if (day == null || day.trim().isEmpty()) {
            errors.add("day欄位必須填寫");
        }
        if (gender == null) {
            errors.add("請勾選性別");
        }
        if (habits == null) {
            errors.add("請勾選一項興趣");
        }
        //5. Select Next View
        if (!errors.isEmpty()) {
            view = request.getRequestDispatcher("createCustomer.jsp");
            view.forward(request, response);
            return; //將控制還給Container
        }
        
        String birth = year + "-" + month +"-" + day;
        try{
        //4.Invoke 
            Customer cust = new Customer();
            cust.setName(name);
            cust.setEmail(email);
            cust.setTelephone(phone);
            cust.setAddress(address);
            cust.setBirth(birth);
            cust.setGender(gender);
            cust.setHabits(habits);
            cust.setAccount("");
            
            CustomerService cs  = new CustomerService();
            cs.createCustomer(cust);
            
            request.setAttribute("cust",cust);
            view = request.getRequestDispatcher("createSuccessful.jsp");
            view.forward(request, response);
            
        }catch(Exception e){
            e.printStackTrace();
            errors.add(e.getMessage());
        //5. Select Next View
            view = request.getRequestDispatcher("createCustomer.jsp");
            view.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
