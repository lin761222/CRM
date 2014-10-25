/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.uuu.view;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NTNServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>九九乘法表</title>"); 
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\""+request.getContextPath()+"/style/usl213.css\"/>");
            out.println("</head>");
            out.println("<body>");
            
            RequestDispatcher header = request.getRequestDispatcher("/WEB-INF/view/common/header.jsp?title=九九乘法表");
            header.include(request, response);
            
            out.println("<h1>九九乘法表</h1>");
            out.println("<img src='image/cars.jpg' width=300><br>");
            out.println("<table border='1'>");
            for(int i=1;i<=9;i++){
                out.print("<tr>");
                for(int j=1;j<=9;j++){
                    out.print("<td>"+i+"*"+j+"=</td><td>" +j*i+"</td>" );
                }
                out.print("</tr>");
            }
            out.println("</table>");
            
            RequestDispatcher footer = request.getRequestDispatcher("/WEB-INF/view/common/footer.jsp");
            footer.include(request, response);
            
            
            out.println("</body>");
            out.println("</html>");
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
