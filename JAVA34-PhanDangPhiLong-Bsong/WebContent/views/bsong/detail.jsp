<%@page import="bean.Song"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp" %>
<div class="content_resize">
  <div class="mainbar">
  	<%
  		if(request.getAttribute("songById")!=null){
  			Song songById = (Song)request.getAttribute("songById");
  	%>
    <div class="article">
    
      <h1><%=songById.getName() %></h1>
      <div class="clr"></div>
      
      <p>Ngày đăng: <%=songById.getDate_create() %>. Lượt xem: <%=songById.getCounter() %></p>
      <div class="vnecontent">
          <%=songById.getDetail_text() %>
      </div>
    </div>
    
    <div class="article">
    <%
  		}
    %>
      <h2>Bài viết liên quan</h2>
      <div class="clr"></div>
      <div class="comment"> <a href=""><img src="<%=request.getContextPath() %>/views/bsong/images/only-love.jpg" width="40" height="40" alt="" class="userpic" /></a>
        <h2><a href="">Only Love</a></h2>
        <p>có phải một ngày nào đó em cũng mãi xa cuộc đời tôi ! có phải tôi vẫn luôn là người ngộ nhận về một câu chuyện tình yêu tuyệt đẹp !</p>
      </div>
    </div>
  </div>
  <div class="sidebar">
  <%@ include file="inc/leftbar.jsp" %>
  </div>
  <div class="clr"></div>
</div>
<%@ include file="inc/footer.jsp" %>
