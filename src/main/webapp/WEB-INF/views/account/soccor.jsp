<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>MY favorite soccer player is 

<c:forEach items="${s}" var="player">
  	${player.fav_player_name} ,
  </c:forEach>
</h1>

<form action="/resume/soccer" method="POST">
	내가좋아하는선수이름 : <input type="text" name="fav_player_name">
	<br>
	<input type="submit">
</form>