<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- start banner Area -->
<section class="banner-area relative" id="home">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content col-lg-12">
				<h1 class="text-white">尋找您想要的課程</h1>
				<p class="text-white link-nav">
					<a href="index.html">首頁</a> <span class="lnr lnr-arrow-right"></span>
					<a href="<c:url value='/18/cSelectAllFront.ctrl' />">課程總覽</a>
				</p>
			</div>
		</div>
	</div>
</section>
<!-- End banner Area -->


<!-- Start blog-posts Area -->
			<section class="blog-posts-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 post-list blog-post-list">

<table id="cTableF" class="table table-bordered" width="100%"
	cellspacing="0">
	<thead>
		<tr>
			<th>課程編號</th>
			<th>課程名稱</th>
			<th>課程類型</th>
			<th>課程圖片</th>
		</tr>
	</thead>

	<tbody>
		<c:forEach var="cSelectAllListF" varStatus="stat" items="${cListF}">
			<tr>
				<td>${cSelectAllListF.coId}</td>
				<td>${cSelectAllListF.coTitle}</td>
				<td>${cSelectAllListF.coAct_Type}</td>
				<td><a href="<c:url value='/18/cCourseDetail.ctrl?coId=${cSelectAllListF.coId}' /> "><img style='display: block; width: 320px; height: 180px;'
					src="data:image/jpg;base64, ${cSelectAllListF.coAct_ImageStr}"></a></td>

			</tr>
		</c:forEach>
		
	</tbody>
</table>


<!-- End blog-posts Area -->
<div class="col-lg-4 sidebar">
							<div class="single-widget search-widget">
								<form class="example" action="#" style="margin:auto;max-width:300px">
								  <input type="text" placeholder="Search Posts" name="search2">
								  <button type="submit"><i class="fa fa-search"></i></button>
								</form>								
							</div>

							<div class="single-widget protfolio-widget">
								<img src="img/blog/user2.jpg" alt="">
								<a href="#"><h4>Adele Gonzalez</h4></a>
								<p>
									MCSE boot camps have its supporters and
									its detractors. Some people do not understand why you should have to spend money
									on boot camp when you can get.
								</p>
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="#"><i class="fa fa-behance"></i></a></li>
								</ul>								
							</div>

							<div class="single-widget category-widget">
								<h4 class="title">Post Categories</h4>
								<ul>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Techlology</h6> <span>37</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Lifestyle</h6> <span>24</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Fashion</h6> <span>59</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Art</h6> <span>29</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Food</h6> <span>15</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Architecture</h6> <span>09</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Adventure</h6> <span>44</span></a></li>
								</ul>
							</div>

							<div class="single-widget recent-posts-widget">
								<h4 class="title">Recent Posts</h4>
								<div class="blog-list ">
									<div class="single-recent-post d-flex flex-row">
										<div class="recent-thumb">
											<img class="img-fluid" src="img/blog/r1.jpg" alt="">
										</div>
										<div class="recent-details">
											<a href="blog-single.html">
												<h4>
													Home Audio Recording
													For Everyone
												</h4>
											</a>
											<p>
												02 hours ago
											</p>
										</div>
									</div>	
									<div class="single-recent-post d-flex flex-row">
										<div class="recent-thumb">
											<img class="img-fluid" src="img/blog/r2.jpg" alt="">
										</div>
										<div class="recent-details">
											<a href="blog-single.html">
												<h4>
													Home Audio Recording
													For Everyone
												</h4>
											</a>
											<p>
												02 hours ago
											</p>
										</div>
									</div>	
									<div class="single-recent-post d-flex flex-row">
										<div class="recent-thumb">
											<img class="img-fluid" src="img/blog/r3.jpg" alt="">
										</div>
										<div class="recent-details">
											<a href="blog-single.html">
												<h4>
													Home Audio Recording
													For Everyone
												</h4>
											</a>
											<p>
												02 hours ago
											</p>
										</div>
									</div>	
									<div class="single-recent-post d-flex flex-row">
										<div class="recent-thumb">
											<img class="img-fluid" src="img/blog/r4.jpg" alt="">
										</div>
										<div class="recent-details">
											<a href="blog-single.html">
												<h4>
													Home Audio Recording
													For Everyone
												</h4>
											</a>
											<p>
												02 hours ago
											</p>
										</div>
									</div>																																					
								</div>								
							</div>

							<div class="single-widget category-widget">
								<h4 class="title">Post Archive</h4>
								<ul>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Dec '17</h6> <span>37</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Nov '17</h6> <span>24</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Oct '17</h6> <span>59</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Sep '17</h6> <span>29</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Aug '17</h6> <span>15</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Jul '17</h6> <span>09</span></a></li>
									<li><a href="#" class="justify-content-between align-items-center d-flex"><h6>Jun '17</h6> <span>44</span></a></li>
								</ul>
							</div>			

							<div class="single-widget tags-widget">
								<h4 class="title">Tag Clouds</h4>
								 <ul>
								 	<li><a href="#">Lifestyle</a></li>
								 	<li><a href="#">Art</a></li>
								 	<li><a href="#">Adventure</a></li>
								 	<li><a href="#">Food</a></li>
								 	<li><a href="#">Techlology</a></li>
								 	<li><a href="#">Fashion</a></li>
								 	<li><a href="#">Architecture</a></li>
								 	<li><a href="#">Food</a></li>
								 	<li><a href="#">Technology</a></li>
								 </ul>
							</div>				

						</div>
					</div>
				</div>	
			</section>
			<!-- End blog-posts Area -->

<script>
	$(document).ready(function() {
		$('#cTableF').DataTable({

		});
	});
</script>


