<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
</head>
<body>
	<div align="center">
		<div>
			<h1>강의 등록</h1>
		</div>
		<div>
			<form action="lectureInsert.do" onsubmit="return checkPeriod()" method="POST">
				<div>
					<table border="1">
						<tr>
							<th width="100">강의명</th>
							<td width="100"><input type="text" id="lectureName"
								name="lectureName" required="required"></td>
						</tr>
						<tr>
							<th width="100">학점</th>
							<td width="100"><input type="text" id="lectureCredit"
								name="lectureCredit" required="required"></td>
						</tr>
						<tr>
							<th width="100">요일</th>
							<td width="100"><input type="text" id="lectureDay"
								name="lectureDay" required="required"></td>
						</tr>
						<tr>
							<th width="100">시작시간</th>
							<td width="100"><input type="text" id="lectureStart"
								name="lectureStart" required="required">
								<select name="lectureStart" id="lectureStart">
									<option value='0'>선택</option>
									<option value='1'></option>
									<option value='2'></option>
									<option value='3'></option>
									<option value='4'></option>
								</select>
								
								</td>
						</tr>
						<tr>
							<th width="100">종료시간</th>
							<td width="100"><input type="text" id="lectureEnd"
								name="lectureEnd" required="required">
								<select name="lectureEnd">
									<option value='2'></option>
									<option value='3'></option>
									<option value='4'></option>
								</select>
								</td>
						</tr>
						<tr>
							<th width="100">강의실</th>
							<td width="100"><input type="text" id="lectureRoom"
								name="lectureRoom" required="required"></td>
						</tr>
						<tr>
							<th width="100">교수번호</th>
							<td width="100">
								<!-- <td width="100"><input type="text" id="professorId" name="professorId" required="required"></td> -->
								<select id="sel" name="professorId" onchange="selectBoxChange(this.value)">
									<c:forEach items="${list }" var="pr">
										<option value="${pr.profId }">${pr.profName}</option>
									</c:forEach>
							</select>
							</td>
						</tr>
						<tr>
							<th width="100">최대인원</th>
							<td width="100"><input type="text" id="lectureCapacity"
								name="lectureCapacity" required="required"></td>
						</tr>

					</table>
				</div>
				<br />
				<div>
					<button type="submit">강의등록</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset">취 소</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href='lectureList.do'">목
						록</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>