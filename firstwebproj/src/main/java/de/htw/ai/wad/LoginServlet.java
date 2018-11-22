package de.htw.ai.wad;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import de.htw.ai.wad.model.User;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, 
	        HttpServletResponse response) throws IOException {
		// alle Parameter (keys)
		Enumeration<String> paramNames = request.getParameterNames();

		String responseStr = "";
		String param = "";
		while (paramNames.hasMoreElements()) {
			param = paramNames.nextElement();
			responseStr = responseStr + param + "=" + request.getParameter(param) + "\n";
		}
		response.setContentType("text/html");
		try (PrintWriter out = response.getWriter()) {
			String htmlResponse = "<html><title>Our first Servlet</title>"  + 
                    "<body><h1>" +
                    "doGet: Hello, you sent me <span style='color: red;'>" + responseStr + "</span>"
                    + "</h1></body></html>";
			out.println(htmlResponse);
		}
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    response.setContentType("text/html");
	    
        Enumeration<String> paramNames = request.getParameterNames();

        String responseStr = "";
        String param = "";
        while (paramNames.hasMoreElements()) {
            param = paramNames.nextElement();
            responseStr = responseStr + param + "=" + request.getParameter(param) + "\n";
        }
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String htmlResponse = "<html><title>Our first Servlet</title>" + "<body><h1>"
                    + "doPost: Hello, you sent me <span style='color: red;'>" + responseStr + "</span>"
                    + "</h1></body></html>";
            out.println(htmlResponse);
        }
	}
	
//	@Override
//    public void doGet(HttpServletRequest request, 
//            HttpServletResponse response) throws IOException, ServletException {
//	    String username = request.getParameter("username");
//	    String password = request.getParameter("password");
//        HttpSession session = request.getSession(true);
//        session.setAttribute("user", new User());
//         RequestDispatcher requestDispatcher = request.getRequestDispatcher("view.jsp");
//        
//        // 3. Forward request to the view 
//        requestDispatcher.forward(request, response);
//    }
}