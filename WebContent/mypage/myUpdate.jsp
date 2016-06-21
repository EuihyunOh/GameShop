<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>  
<%@ include file="sub_img.html"%> 
<%@ include file="sub_menu.jsp" %>      

  <article>
    <h2>회원가입</h2>
    <form id="join" action="gameshopServlet?command=myUpdate" method="post" name="formm">
      <fieldset>
        <legend>기본 정보</legend>
        <label>User ID</label>
        <input type="text"      name="id"        size="12"   	value="${memberVO.id}"	 	readonly><br>
        <label>Name</label>
        <input type="text"      name="name"		value="${memberVO.name}"		readonly><br> 
        <label>Password</label> 
        <input type="password"  name="pwd"		value="${memberVO.pwd}"><br> 
        <label>Retype Password</label> 
        <input type="password"  name="pwdCheck"		value="${memberVO.pwd}"><br> 

        <label>E-Mail</label>
        <input type="text"      name="email"		value="${memberVO.email}"><br>
        
      </fieldset>
      <fieldset>
        <legend>배송 정보</legend>
        <label>Zip Code</label> 
        <input type="text"       name="zipNum"   size="10"		value="${memberVO.zipNum}" 	    readonly>      
        <input type="button"     value="주소 찾기" class="dup" onclick="post_zip()"><br>
        <label>Address</label> 
        <input type="text"        name="addr1"   size="50"		value="${memberVO.address}"  	readonly>
        <input type="text"        name="addr2"   size="25"> <br>
        <label>Phone Number</label> 
        <input  type="text"       name="phone"		value="${memberVO.phone}"><br>
      </fieldset>
      <div class="clear"></div>
      <div id="buttons">
        <input type="button"    value="수정"   class="submit" onclick="go_save()"> 
        <input type="reset"      value="취소"     class="cancel" onclick="">
      </div>
    </form>
  </article>

<%@ include file="../footer.jsp" %>