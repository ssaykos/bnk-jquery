<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3>jQuery</h3>
		소프트웨어를 제작할 때 자주 사용되는 기능을 쉽게 사용할 수 있도록 <br />
		모아 놓은 자바스크립트 라이브러리(도서관) <br />
		복잡한 상호작용을 하는 자바스크립트를 쉽게 추가할 수 있도록 <br />
		해주면서 다양한 웹 브라우저에서 동작하도록 만들어 준다. <br />
		<h3>  사용방법 </h3>
		<ul> 
			<li><mark>CDN 호스트를 통해 jQuery 를 불러오는 방법</mark></li>
			<li>인터넷이 접속된 곳이라면 어디에서든지 사용할 수 있다는 장점이있으나,</li>
			<li>인터넷을 사용할 수 없는 곳에서는 사용 불가</li>
			<li>"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" 를 호출</li>
		</ul>
		<div class="pad"></div>
		<ul> 
			<li><mark>파일을 설치하여 사용하는 방법</mark></li>
			<li><a href="http://jquery.com">http://jquery.com</a>에서 다운로드</li>
			<li>1.x 버전과 2.x 버전이 있슴ㄴ</li>
			<li>두 버전의 차이점은 2.x 버전을 사용할 경우 <br />
				IE8 이하 버전에서는 원활히 작동하지 않는다. <br />
			</li>
			<li>compressed(압축) 버전과 uncompressed(비압축) 버전</li>
			<li>두 버전의 차이점은 압축과 용량.</li>
			<li>compress 버전이 압축되어 있기 때문에 용량이나 속도면에서는 더 좋다</li>
		</ul>
		<h3> jQuery 는 대소문자를 구분한다.</h3>
		<h1> $(document).ready(function(){...});</h1>
		<h3> 함수, 문서의 준비 및 명령어 시작</h3>
	</div>
</div>

