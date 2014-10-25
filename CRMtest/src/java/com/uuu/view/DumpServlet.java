

package com.uuu.view;

import com.uuu.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "DumpServlet", urlPatterns = {"/dump.view"})
public class DumpServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            out.println("<html>");
            out.println("<head>");
            out.println("<title>DumpServlet</title>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\""+request.getContextPath()+"/style/usl213.css\"/>");
            out.println("</head>");
            out.println("<body>");
            
            RequestDispatcher header = request.getRequestDispatcher("/WEB-INF/view/common/header.jsp?title=DumpServlet");
            header.include(request, response);
            
            out.println("<h1>DumpServlet</h1>");
            out.println("<table border='1'>");
            Enumeration<String> name = request.getHeaderNames();
            while(name.hasMoreElements()){
                String names = name.nextElement();
                String values = request.getHeader(names);
                out.println("<tr><td>"+names+"</td><td>"+values+"</td></tr>");
            }
            out.println("</table><br>");
            
            out.println("<h3>新增客戶資料<h3>");
            out.println("<table border='1'>");
            Enumeration<String> pNames = request.getParameterNames();
            out.println("<tr><td>客戶Name</td><td>客戶Value</td></tr>");
            while(pNames.hasMoreElements()){
                String pName = pNames.nextElement();
                String pValue = null;
                if(pName.equals("habit")){
                    pValue = Arrays.toString(request.getParameterValues(pName));
                }else{
                    pValue = request.getParameter(pName);
                }
                out.println("<tr><td>"+pName+"</td><td>"+pValue+"</td></tr>");
            }
            out.println("</table>");
            
            out.println("<h3>讀取DumpServlet初始值<h3>");
            out.println("<table border='1'>");
            out.println("<tr><td>ip</td><td>ip值</td></tr>");
            Enumeration<String> ipNames = this.getInitParameterNames();
            while(ipNames.hasMoreElements()){
                String ipName = ipNames.nextElement();
                String ipValue = this.getInitParameter(ipName);
                out.println("<tr><td>"+ipName+"</td><td>"+ipValue+"</td></tr>");
            }
            out.println("</table>");
            
            out.println("<h3>讀取DumpServlet初始值<h3>");
            out.println("<table border='1'>");
            out.println("<tr><td>cp</td><td>cp值</td></tr>");
            ServletContext sc = this.getServletContext();
            Enumeration<String> cpNames = sc.getInitParameterNames();
            while(cpNames.hasMoreElements()){
                String cpName = cpNames.nextElement();
                String cpValue = sc.getInitParameter(cpName);
                out.println("<tr><td>"+cpName+"</td><td>"+cpValue+"</td></tr>");
            }
            out.println("</table>");
            
            out.println("<h3>讀取產品庫存資訊<h3>");
            out.println("<table border='3'>");
            LinkedList<Product> product = (LinkedList<Product>) sc.getAttribute("allProducts");
            out.println("<tr><td>序號</td><td>名稱</td><td>庫存</td><td>價錢</td></tr>");
            for(Product p:product){
                out.println("<tr>");
                out.println("<td>"+p.getId()+"</td>");
                out.println("<td>"+p.getName()+"</td>");
                out.println("<td>"+p.getStock()+"</td>");
                out.println("<td>"+p.getUnitPrice()+"</td>");
                out.println("</tr>");
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
