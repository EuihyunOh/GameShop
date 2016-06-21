package com.gameshop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gameshop.dao.MemberDAO;
import com.gameshop.dto.MemberVO;

public class MyUpdateAction implements Action{
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		
		String url = "gameshopServlet?command=myupdate_form";
	    HttpSession session = request.getSession();
	    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "gameshopServlet?command=login_form";
	    } else {
	    loginUser.setPwd(request.getParameter("pwd"));
	    loginUser.setEmail(request.getParameter("email"));
	    loginUser.setZipNum(request.getParameter("zipNum"));
	    loginUser.setAddress(request.getParameter("addr1") + request.getParameter("addr2"));
	    loginUser.setPhone(request.getParameter("phone"));   
	    	
	   	MemberDAO memberDAO = MemberDAO.getInstance();
	    memberDAO.updateMember(loginUser);	        
	    }
	    response.sendRedirect(url);
	  }
}
