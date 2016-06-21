package com.gameshop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gameshop.dto.MemberVO;

public class MyUpdateFormAction implements Action{
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {

	    String url = "mypage/myUpdate.jsp";

	    
	    HttpSession session = request.getSession();
	    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "gameshopServlet?command=login_form";
	    } else {
	    request.setAttribute("memberVO", loginUser);	        
	    }
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
