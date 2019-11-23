<%@page import="bean.Song"%>
<%@page import="dao.SongDAO"%>
<%@page import="bean.Category"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<div class="searchform">
  <form id="formsearch" name="formsearch" method="post" action="#">
    <span>
    <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Tìm kiếm bài hát" type="text" />
    </span>
    <input name="button_search" src="<%=request.getContextPath()%>/views/bsong/images/search.jpg" class="button_search" type="image" />
  </form>
</div>
<div class="clr"></div>
<div class="gadget">
	
  <h2 class="star">Danh mục bài hát</h2>
  <div class="clr"></div>
  <ul class="sb_menu">
	<%
		CategoryDAO cateDAO = new CategoryDAO();
		List<Category> catList = cateDAO.getItems();
		for(Category item : catList){
	%>  
    <li><a href="#"><%=item.getName() %></a></li>
    <%
		}
    %>
  </ul>
</div>

<div class="gadget">
  <h2 class="star"><span>Bài hát xem nhiều</span></h2>
  <div class="clr"></div>
  <ul class="ex_menu">
  <%
  	SongDAO songDAO = new SongDAO();
  	List<Song> top5List = songDAO.getTop5();
  	for(Song item : top5List){
  %>
    <li><a href="<%=request.getContextPath() %>/bsong/detail?did=<%=item.getId() %>"><%=item.getName() %></a><br />
      Lượt xem: <%=item.getCounter() %></li>
    <%
  	}
    %>
  </ul>
</div>