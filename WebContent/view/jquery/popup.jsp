<%-- <%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<c:set var='context' value='<%=request.getContextPath() %>'></c:set>
<style>@IMPORT url('${context}/css/common.css');</style>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<div class='outbox center pad'>
	<div class='box'>

<div id="login">
	<a href="#joinForm" id="ajoin" class="popupOpen">회원가입</a>
	<a href="#loginForm" id="alogin" class="popupOpen">로그인</a>
</div>



<div id="joinForm" class="white-popup-block mfp-hide" 
 	style='width:300px; height: 500px; background-color: white; margin: 0 auto;'>
	<!-- <h1>모달 테스트</h1> -->
	
</div>
<div id="loginForm" class="white-popup-block mfp-hide" 
 	style='width:300px; height: 500px; background-color: white; margin: 0 auto;'>
 	<jsp:include page="loginForm.jsp"></jsp:include>
	<!-- <h1>모달 테스트</h1> -->
	
</div>



	</div>
</div>

<script src="${context}/js/magnific-popup.js"></script>
<script type="text/javascript">
	$(function() {
		$('.popupOpen').magnificPopup({
			type : 'inline',
			preloader : false,
			focus : '#username',
			modal : true,
			closeContentPos : true,
			fixedContentPos : true,
			alignTop : false, /*최상단위치*/
			showCloseBtn : true
		});
		$(document).on('click','.popupClose',function(e){
			e.preventDefault();
			$.magnificPopup.close();
		});
	});
</script>




 --%>
 <%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<c:set var='context' value='<%=request.getContextPath() %>'></c:set>
<style>@IMPORT url('${context}/css/common.css');</style>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>

   <div id='login'>
      <a href="#joinForm" id="ajoin" class="popupOpen">회원가입</a>
      <a href="#loginForm" id="alogin" class="popupOpen">로그인</a>
   </div>
   <div id="joinForm" class="white-popup-block mfp-hide"
      style="width: 300px; height: 500px; background-color: white; margin: 0 auto;">
      회원가입
      <%-- <jsp:include page="../member/joinForm.jsp"></jsp:include> --%>
   </div>
   
   <div id="loginForm" class="white-popup-block mfp-hide"
      style="width: 600px; height: 500px; background-color: white; margin: 0 auto;">
      <jsp:include page="loginForm.jsp"></jsp:include>
   </div>
<script src="${context }/js/magnific-popup.js"></script>
<script type="text/javascript">
   $(function() {
      $('.popupOpen').magnificPopup({
         type : 'inline',
         preloader : false,
         focus : '#username',
         modal : true,
         closeContentPos: true,
         fixedContentPos: true,
         alignTop: false,   // 최상단위치
         showCloseBtn: true
      });
      $(document).on('click','.popupClose',function(e){
         e.preventDefault();
         $.magnificPopup.close();
      });
   });
</script>