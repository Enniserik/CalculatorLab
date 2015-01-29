/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3.model.CalculatorService3;

/**
 *
 * @author eennis
 */
@WebServlet(name = "CalculatorServiceController3", urlPatterns = {"/calculator3"})
public class CalculatorServiceController3 extends HttpServlet {

    private static final String RESULT_PAGE = "lab3/Lab3Form.jsp";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String s = request.getParameter("type");
        DecimalFormat df = new DecimalFormat("#.##");
        
        CalculatorService3 cs = new CalculatorService3();

        if(s.equals("rect")){
            
            String rectArea = "";
            double length = 0;
            double width = 0;
            
            try{
                length = Double.parseDouble(request.getParameter("length"));
                width = Double.parseDouble(request.getParameter("width"));
                
                String tempArea = df.format(cs.calcAreaRectangle(length, width)) + "";
                
                rectArea = (tempArea).equals("0.0") ? tempArea.substring(0, 1) : tempArea;

            }catch(IllegalArgumentException e){
                rectArea = "Invalid Input";
            }
            
    
            request.setAttribute("rectArea", rectArea);
            request.setAttribute("length", df.format(length));
            request.setAttribute("width", df.format(width));
        
        } else if (s.equals("circ")){
            
            String circArea = "";
            
            double radius = 0;

            try{
                radius = Double.parseDouble(request.getParameter("radius"));

                String tempArea = df.format(cs.calcAreaCircle(radius)) + "";
                
                circArea = (tempArea).equals("0.0") ? tempArea.substring(0, 1) : tempArea;
            
            }catch(IllegalArgumentException e){
                circArea = "Invalid Input";
            }
    
            request.setAttribute("circArea", circArea);
            request.setAttribute("radius", df.format(radius));
            
        } else if (s.equals("tri")){
            
            String triArea = "";
            
            double base = 0;
            double height = 0;
        
            try{
                base = Double.parseDouble(request.getParameter("base"));
                height = Double.parseDouble(request.getParameter("height"));
                
                String tempArea = df.format(cs.calcAreaTriangle(base, height)) + "";
                
                triArea = (tempArea).equals("0.0") ? tempArea.substring(0, 1) : tempArea;
            
            }catch(IllegalArgumentException e){
                triArea = "Invalid Input";
            }
    
            request.setAttribute("triArea", triArea);
            request.setAttribute("base", df.format(base));
            request.setAttribute("height", df.format(height));
            
        } else {
            
        }

        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
        
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
