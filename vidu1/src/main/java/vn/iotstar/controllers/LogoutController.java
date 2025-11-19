package vn.iotstar.controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.iotstar.common.Constants;

@WebServlet(urlPatterns = {"/logout"})
public class LogoutController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // XÓA SESSION
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.removeAttribute(Constants.SESSION_ACCOUNT);
            session.invalidate();
        }

        // XÓA COOKIE rememberMe
        Cookie cookie = new Cookie(Constants.COOKIE_REMEMBER, "");
        cookie.setMaxAge(0);
        cookie.setPath("/");
        resp.addCookie(cookie);

        // Quay về login
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
