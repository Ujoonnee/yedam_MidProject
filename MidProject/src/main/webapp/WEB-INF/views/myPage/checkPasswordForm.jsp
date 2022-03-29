<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인확인</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function() {
		frm.password.focus();
	}
	
	function passwdCheck(form){
		if(frm.password.value == "") {
			alert("비밀번호를 입력해주세요");
			frm.password.focus();
			return false;
		}
		
		frm.method="post";
		frm.action="checkPassword.do";
		frm.submit();
	}
</script>

	<form id="frm" name="frm">
		<table>
			<tr>
				<td align="center">:::비밀번호 확인:::</td>
			</tr>
			<tr>
				<td>
					<table border="1">
						<tr>
							<td>현재 비밀번호</td>
							<td>
								<input type="password" name="password" placeholder="본인확인을 위해 비밀번호를 입력해주세요." required="required">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">
						<button type="button" onclick="passwdCheck(frm);">확인</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>