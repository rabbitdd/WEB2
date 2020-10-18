package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.regex.Pattern;

public class AreaCheckServlet extends HttpServlet implements Validation{
    private final List<String> rArea = Arrays.asList("1", "1.5", "2", "2.5", "3");
    private final List<String> yArea = Arrays.asList("-2", "-1.5", "-1", "-0.5", "0", "0.5", "1", "1.5", "2");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        tryToSend(request.getParameter("r"), request.getParameter("x"), request.getParameter("y"), request, response);
    }

    private boolean check(double r, double x, double y) {
        if (x < 0 && y < 0)
            return false;
        else if (x < 0 && y > 0 && (-2 * x + y - r <= 0))
            return true;
        else if (x >= 0 && y >= 0 && (x * x + y * y <= r * r))
            return true;
        else return x > 0 && y < 0 && (y - 0.000001 >= -1 * r) && (x - 0.000001 <= r / 2);

    }

    private void tryToSend(String r, String x, String y, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long startTime = System.nanoTime();
        ServletContext servletContext = getServletContext();
        try {
            isValid(x, y, r);
            String ans = check(Double.parseDouble(r), Double.parseDouble(x), Double.parseDouble(y)) ? "YES" : "NO";
            ArrayList<String> data = (ArrayList<String>)servletContext.getAttribute("data");
            long estimatedTime = System.nanoTime() - startTime;
            data.add(0, preparingData(Double.parseDouble(r), Double.parseDouble(x), Double.parseDouble(y), estimatedTime, ans));
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/table.jsp");
            requestDispatcher.forward(request, response);
        } catch (NumberFormatException | InvalidException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            //RequestDispatcher requestDispatcher = request.getRequestDispatcher("/errorPage.jsp");
            //requestDispatcher.forward(request, response);
        }
    }


    private String preparingData(double r, double x, double y, long time, String ans) {
        return "<tr align=\"center\" style=\"color: ghostwhite;\">" +
                "<td>" + x + "</td>" +
                "<td>" + y + "</td>" +
                "<td>" + r + "</td>" +
                "<td>" + new Date().toString() + "</td>" +
                "<td>" + time  + "</td>" +
                "<td>" + ans + "</td>" + "</tr>";
    }

    @Override
    public boolean isValid(String x, String y, String r) throws InvalidException {
        String[] args = x.split("\\.");
        //log(args[0] + args[1]);
        Pattern pattern = Pattern.compile("[1-9]");
        if ((Integer.parseInt(args[0]) >= 5 && pattern.matcher(args[1]).find())) {
            throw new InvalidException();
        }
        return true;
    }
}
