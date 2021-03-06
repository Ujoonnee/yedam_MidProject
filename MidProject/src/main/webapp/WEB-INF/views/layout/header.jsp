<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row mx-3">
	<div class="col-md-4 fs-1 px-5 my-3">
		<div class="">
			<a class="text-reset" style="text-decoration: none" href="home.do">
				<img width="200px" alt="logo1" src="images/logo1.png">
			</a>
		</div>
	</div>
	<div class="col-md-4"></div>
	<div class="col-md-4 my-2 pl-0 pr-4 fs-6 text-end">
		<c:choose>
			<c:when test="${role eq 'student' }">
				<span class="d-none d-sm-inline">${user.studentName }님 안녕하세요!</span>&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:when test="${role eq 'admin' }">
				<span class="d-none d-md-inline">${user.profName } 학과장님 안녕하세요!</span>&nbsp;&nbsp;&nbsp;
			</c:when>
			<c:otherwise>
				<span class="d-none d-md-inline">${user.profName } 교수님 안녕하세요!</span>&nbsp;&nbsp;&nbsp;
			</c:otherwise>
		</c:choose>
		<span class="d-inline">
			<a href="logout.do">로그아웃</a>
		</span>
	</div>
</div>

<nav class="navbar navbar-expand-md bg-light navbar-light py-2 mb-4">
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-bs-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav fs-4 px-3 text-center">
			<c:choose>
				<c:when test='${role eq "student" }'>
					<li class="nav-item px-3"><a class="nav-link px-3"
						href="courseApplicationForm.do">수강신청</a></li>
				</c:when>

				<c:when test='${role eq "admin"}'>
					<li class="nav-item px-3"><a class="nav-link px-3"
						href="professorList.do">교수학적관리</a></li>
						
							<li class="nav-item px-3"><a class="nav-link px-3"
						href="studentList.do">학생학적관리</a></li>
				</c:when>
				
				<c:when test='${role eq "professor"}'>
					<li class="nav-item px-3"><a class="nav-link px-3"
						href="studentList.do">학생학적관리</a></li>
				</c:when>
			</c:choose>
			<li class="nav-item px-3"><a class="nav-link px-3"
				href="boardList.do">학과게시판</a></li>
			<li class="nav-item px-3"><a class="nav-link px-3"
				href="lectureList.do">개설강의</a></li>
			<li class="nav-item px-3"><a class="nav-link px-3"
				href="checkPasswordForm.do">마이페이지</a></li>
		</ul>
	</div>
</nav>


