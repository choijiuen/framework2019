package com.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/el/ex03.html")
public class Ex02Controller extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
			//getServletContext().getAttribute(arg0) //이거는 어플리케이션 스코프 받는 방법. SevletContext 써야된다.
			String msg2="controller msg";
			req.setAttribute("msg2", msg2);
			req.getRequestDispatcher("ex02.jsp").forward(req, resp);
	}
}
