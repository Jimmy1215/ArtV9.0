<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								尋找您想要的課程
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="<c:url value='/18/cSelectAllFront.ctrl' />"> 課程總覽</a></p>
						</div>											
					</div>
				</div>
			</section>
	<!-- End banner Area -->	

<table id="cTable" class="table table-bordered" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>課程編號</th>
									<th>課程名稱</th>
									<th>上課地址</th>
									<th>場地名稱</th>
									<th>售價</th>
									<th>開始時間</th>
									<th>結束時間</th>
									<th>簡介說明</th>
									<th>課程圖片</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>課程編號</th>
									<th>課程名稱</th>
									<th>上課地址</th>
									<th>場地名稱</th>
									<th>售價</th>
									<th>開始時間</th>
									<th>結束時間</th>
									<th>簡介說明</th>
									<th>課程圖片</th>
								</tr>
							</tfoot>
								<tbody>
							<c:forEach var="cSelectAllList" varStatus="stat" items="${cList}">
									<tr>
										<td>${cSelectAllList.coId}</td>
										<td>${cSelectAllList.coTitle}</td>
										<td>${cSelectAllList.coAct_Location}</td>
										<td>${cSelectAllList.coLocation_Name}</td>
										<td>${cSelectAllList.coPrice}</td>
										<td>${cSelectAllList.coAct_Time}</td>
										<td>${cSelectAllList.coEnd_Time}</td>
										<td>${cSelectAllList.coAct_Description}</td>
										<td><img style='display:block; width:64px;height:36px;' src="data:image/jpg;base64, ${cSelectAllList.coAct_ImageStr}" ></td>
									</tr>
							</c:forEach>
								</tbody>
						</table>
<script>
$(document).ready( function () {
    $('#cTable').DataTable({

    	
    } );
} );
</script>
