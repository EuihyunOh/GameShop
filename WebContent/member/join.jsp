<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>   
<%@ include file="sub_img.html"%> 
<%@ include file="sub_menu.html" %>   
  <article>
    <h2>회원가입</h2>
    <form id="join" action="gameshopServlet?command=join" method="post" name="formm">
      <fieldset>
        <legend>기본 정보</legend>
        <label>User ID</label>
        <input type="text"      name="id"        size="12"  >
        <input type="hidden"    name="reid">
        <input type="button"    value="중복 체크"  class="dup" onclick="idcheck()"><br>
        <label>Password</label> 
        <input type="password"  name="pwd"><br> 
        <label>Retype Password</label> 
        <input type="password"  name="pwdCheck"><br> 
        <label>Name</label>
        <input type="text"      name="name"><br> 
        <label>E-Mail</label>
        <input type="text"      name="email"><br>
        
      </fieldset>
      <fieldset>
        <legend>배송 정보</legend>
        <label>우편 번호</label> 
        <input type="text"       name="zipNum"   size="10" 	    readonly>      
        <input type="button"     value="주소 찾기" class="dup" onclick="post_zip()"><br>
        <label>주소</label> 
        <input type="text"        name="addr1"   size="50"  	readonly>
        <input type="text"        name="addr2"   size="25"> <br>
        <label>Phone Number</label> 
        <input  type="text"       name="phone"><br>
      </fieldset>
      <div class="clear"></div>
      <div id="buttons">
        <input type="button"    value="회원가입"   class="submit" onclick="go_save()"> 
        <input type="reset"      value="취소"     class="cancel">
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>
  