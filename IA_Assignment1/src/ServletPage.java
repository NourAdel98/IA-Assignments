import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ServletPage extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse
            response) throws javax.servlet.ServletException, IOException {

        boolean error = false, isFloat = false, isNegative = false;

        // can use session to pass the parameter to jsp page or pass it as request attributes
        // session part is commented
        //HttpSession session = request.getSession(true);

        try {
            if (!request.getParameter("number").contains(".") && !request.getParameter("number").contains("-")) {

                int number = Integer.parseInt(request.getParameter("number"));
                if (number >= 0) {

                    boolean prime = true;
                    if (number == 0 || number == 1)

                        prime = false;
                    else {

                        for (int i = 2; i <= number / 2; i++) {
                            if (number % i == 0) {
                                prime = false;
                                break;
                            }
                        }
                    }

                    float factorial = 1;
                    for (int i = 2; i <= number; i++) {
                        factorial *= i;
                    }

                    /*session.setAttribute("number", number);
                    session.setAttribute("isPrime", prime);
                    session.setAttribute("factorial", factorial);*/

                    request.setAttribute("number", number);
                    request.setAttribute("isPrime", prime);
                    request.setAttribute("factorial", factorial);
                }
            } else if (request.getParameter("number").contains(".")) {
                isFloat = true;
            } else {
                isNegative = true;
            }

        }catch (NumberFormatException e){
            error = true;
        }

        /*session.setAttribute("error", error);
        session.setAttribute("isFloat", isFloat);
        session.setAttribute("isNegative", isNegative);*/

        request.setAttribute("error", error);
        request.setAttribute("isFloat", isFloat);
        request.setAttribute("isNegative",isNegative);
        RequestDispatcher dispatcher = request.getRequestDispatcher("home_page.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {

    }
}