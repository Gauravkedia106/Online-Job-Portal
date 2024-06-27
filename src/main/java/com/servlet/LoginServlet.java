package com.servlet;

import java.io.IOException;

//import com.conn.DBConnect;

import com.DB.*;
import com.entity.User;
import com.dao.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String em = req.getParameter("email");
			String pas = req.getParameter("password");

			User u = new User();
			HttpSession session = req.getSession();

			if ("admin@gmail.com".equals(em) && "admin@121".equals(pas)) {
				// admin pannel
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");

			} else {
				// user pannel

				UserDAO dao = new UserDAO(DBconnect.getConn());
				User user = dao.login(em, pas);

				if (user != null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");
				} else {
					session.setAttribute("succMsg", "Invalid Email & Password");
					resp.sendRedirect("Login.jsp");
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
