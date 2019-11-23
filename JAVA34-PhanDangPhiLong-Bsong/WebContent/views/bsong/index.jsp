<%@page import="bean.Song"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp" %>
<div class="content_resize">
  <div class="mainbar">
  	<%
  		if(request.getAttribute("songList")!=null){
  			List<Song> songList = (List<Song>)request.getAttribute("songList");
  			if(songList.size() > 0){
  				for(Song item : songList){
  	%>
    <div class="article">
      <h2><a href="<%=request.getContextPath() %>/bsong/detail?did=<%=item.getId() %>" title="Đổi thay"><%=item.getName() %></a></h2>
      <p class="infopost">Ngày đăng: <%=item.getDate_create() %>. Lượt xem: <%=item.getCounter() %> <a href="#" class="com"><span><%=item.getCate_id() %></span></a></p>
      <div class="clr"></div>
      <div class="img">
	      <a href="<%=request.getContextPath() %>/bsong/detail?did=<%=item.getId() %>">
	      	<img src="<%=request.getContextPath()%>/views/bsong/images/only-love.jpg" width="177" height="213" alt="<%=item.getName() %>" class="fl" />
      	</a>
      </div>
      <div class="post_content">
        <p><%=item.getPreview_text() %></p>
        <p class="spec"><a href="<%=request.getContextPath() %>/bsong/detail?did=<%=item.getId() %>" class="rm">Chi tiết &raquo;</a></p>
      </div>
      <div class="clr"></div>
    </div>
    <%
  				}
  			}
  		}
    %>
    <p class="pages"><small>Trang 1 của 5</small>
    <span>1</span>
    <a href="">2</a>
    <a href="">3</a>
    <a href="">4</a>
    <a href="">5</a>
    <a href="#">&raquo;</a></p>
  </div>
  <div class="sidebar">
      <%@ include file="inc/leftbar.jsp" %>
  </div>
  <div class="clr"></div>
</div>
<%@ include file="inc/footer.jsp" %>
