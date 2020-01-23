package pl.sda.servlets;

import pl.sda.models.Customer;
import pl.sda.models.Gender;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final String CUSTOMER = "customer";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        session.setMaxInactiveInterval(10);
        session.setAttribute(CUSTOMER, getCustomerFromParams(request));
        request.getRequestDispatcher("/registerSuccess.jsp").include(request, response);
    }

    private Customer getCustomerFromParams(HttpServletRequest request) {
        Customer customer = new Customer();
        customer.setUsername(request.getParameter("username"));
        customer.setEmail(request.getParameter("email"));
        customer.setGender(Gender.valueOf(request.getParameter("gender")));
        customer.setPassword(request.getParameter("password"));
        customer.setPhone(Long.valueOf(request.getParameter("phone")));
        return customer;
    }
}
