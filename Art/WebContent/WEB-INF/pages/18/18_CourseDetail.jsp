<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- start banner Area -->
<section class="banner-area relative" id="home">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content col-lg-12">
				<h1 class="text-white">課程個別詳細介紹</h1>
				<p class="text-white link-nav">
					<a href="index.html">首頁</a> 
					<span class="lnr lnr-arrow-right"></span>
					<a href="<c:url value='/18/cSelectAllFront.ctrl' />">課程總覽</a> 
					<span class="lnr lnr-arrow-right"></span> 
					<a href="<c:url value='/18/cCourseDetail.ctrl' />">課程詳細</a>
				</p>
			</div>
		</div>
	</div>
</section>
<!-- End banner Area -->

<table id="cfTableFD" class="table table-bordered" width="100%"
	cellspacing="0">
	<thead>
		<tr>
			<th>課程編號</th>
			<th>課程名稱</th>
			<th>課程類型</th>
			<th>上課地址</th>
			<th>場地名稱</th>
			<th>售價</th>
			<th>開始日期</th>
			<th>開始時間</th>
			<th>結束日期</th>
			<th>結束時間</th>
			<th>簡介說明</th>
			<th>課程圖片</th>
		</tr>
	</thead>

	<tbody>
		<tr>
				<td>${cfd.coId}</td>
				<td>${cfd.coTitle}</td>
				<td>${cfd.coAct_Type}</td>
				<td>${cfd.coAct_Location}</td>
				<td>${cfd.coLocation_Name}</td>
				<td>${cfd.coPrice}</td>
				<td>${cfd.coAct_Date}</td>
				<td>${cfd.coAct_Time}</td>
				<td>${cfd.coEnd_Date}</td>
				<td>${cfd.coEnd_Time}</td>
				<td>${cfd.coAct_Description}</td>
				<td><img style='display:block; width:64px;height:36px;' src="data:image/jpg;base64, ${cfd.coAct_ImageStr}" ></td>		
		</tr>
	</tbody>
</table>
<script>
	$(document).ready(function() {
		$('#cTableFD').DataTable({

		});
	});
</script>