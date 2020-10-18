package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class ControllerServlet extends HttpServlet implements Validation {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        getServletContext().setAttribute("data", new ArrayList<String>());
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        if (request.getParameter("flag") != null) {
            getServletContext().setAttribute("data", new ArrayList<String>());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/table.jsp");
            requestDispatcher.forward(request, response);
        } else {
            String x, y, r;
            x = request.getParameter("x");
            y = request.getParameter("y");
            r = request.getParameter("r");
            //System.out.println("AAAA");
            if (isValid(x, y, r)) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/check/");
                requestDispatcher.forward(request, response);
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/errorPage.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }

    @Override
    public boolean isValid(String x, String y, String r) {
        return x != null && y != null && r != null;
    }
}

