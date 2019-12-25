package ui.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class VegetarianProducts extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("vegetarian", getProductService().allVegetarianProducts());
        request.getRequestDispatcher("vegetarianproducts.jsp").forward(request,response);
    }
}
