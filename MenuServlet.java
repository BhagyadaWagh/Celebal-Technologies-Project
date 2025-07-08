package com.cafe;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;

public class MenuServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Sample static menu data
        ArrayList<String[]> menu = new ArrayList<>();
        menu.add(new String[]{"Espresso", "₹100"});
        menu.add(new String[]{"Cappuccino", "₹120"});
        menu.add(new String[]{"Latte", "₹130"});
        menu.add(new String[]{"Cold Coffee", "₹150"});
        menu.add(new String[]{"Veg Sandwich", "₹80"});
        menu.add(new String[]{"Cheese Burger", "₹140"});

        request.setAttribute("menuList", menu);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }
}
