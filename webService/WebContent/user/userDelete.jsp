<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	// 비밀번호 미입력시 경고창
	function checkValue() {
		if (!document.deleteform.password.value) {
			alert("비밀번호를 입력하지 않았습니다.");
			return false;
		}
	}
</script>

</head>
<body>

	<br>
	<br>
	<b><font size="6" color="gray">내 정보</font></b>
	<br>
	<br>
	<br>

	<form name="deleteform" method="post"
		action="index.jsp?contentPage=member/pro/DeletePro.jsp"
		onsubmit="return checkValue()">

		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" maxlength="50"></td>
			</tr>
		</table>

		<br> <input type="button" value="취소"
			onclick="javascript:window.location='index.jsp'"> <input
			type="submit" value="탈퇴" />
	</form>

</body>
</html>