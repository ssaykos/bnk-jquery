<%-- <%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<c:set var='context' value='<%=request.getContextPath() %>'></c:set>
<style>@IMPORT url('${context}/css/common.css');</style>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<div class='outbox center pad'>
	<div class='box'>
<legend>로그인</legend>
<table>
	<tr>
		<td>아이디</td>
			<td><input type="text" id="id" placeholder="ID 입력" />
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
			<td><input type="text" id="password" name= "password" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<div style="width: 200px; margin: 0 auto;">
			<img src="${context }/image/ok.jpg" style="cursor: pointer; margin: 0 auto"
			alt=""  onclick="return login()"/>
			<img src="${context }/image/no.jpg" style="cursor: pointer;"
			alt=""  class="popupClose"/>
		</div>
		</td>
	</tr>
</table>

	</div>
</div> --%>
<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<c:set var='context' value='<%=request.getContextPath() %>'></c:set>
<style>@IMPORT url('${context}/css/common.css');</style>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>

<form action=""></form>
<legend>로그인</legend>

<table>
   <tr>
      <td>아이디</td>
      <td>
         <input type="text" id="id" name="id" placeholder="ID 입력" />
      </td>
   </tr>
   <tr>
      <td>비밀번호</td>
      <td><input type="text" id="password" name="password" /></td>
   </tr>
   <tr>
      <td class="2">
         <div style="width: 200px; margin: 0auto;">
         <img src="${context }/image/ok.jpg" style="cursor: pointer; margin: 0 auto;"
          onclick="return login()" />
         <img src="${context }/image/no.jpg" style="cursor: pointer; margin: 0 auto;"
          class="popupClose" />
         </div>
      </td>
      <td></td>
   </tr>
</table>