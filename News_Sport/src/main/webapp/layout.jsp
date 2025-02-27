<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<jsp:include page="/WEB-INF/views/Header.jsp" />

	<!-- Hero Section Begin -->
	<section class="hero-section set-bg"
		data-setbg="assets/img/hero/hero-1.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hs-item">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="hs-text">
										<h4>30 september 2020 / 9:00 GMT+0000</h4>
										<h2>Airrosten VS Lerenort in London</h2>
										<a href="#" class="primary-btn">More Details</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Trending News Section Begin -->
	<div class="trending-news-section">
		<div class="container">
			<div class="tn-title">
				<i class="fa fa-caret-right"></i> Trending News
			</div>
			<div class="news-slider owl-carousel">
				<c:forEach items="${listrending}" var="item">
					<div class="nt-item">${item.title }</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Trending News Section End -->

	<!-- Match Section Begin -->
	<section class="match-section set-bg"
		data-setbg="assets/img/match/match-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="ms-content">
						<h4>Next Match</h4>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-1.jpg" alt="">
											<h6>Cambodia</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>VS</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-2.jpg" alt="">
											<h6>Qatar</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-3.jpg" alt="">
											<h6>Australia</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>VS</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-4.jpg" alt="">
											<h6>Iraq</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-5.jpg" alt="">
											<h6>Ucraina</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>VS</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-6.jpg" alt="">
											<h6>Jordan</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="ms-content">
						<h4>Recent Results</h4>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-1.jpg" alt="">
											<h6>Darussalam</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>1 : 2</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-2.jpg" alt="">
											<h6>Ucraina</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-3.jpg" alt="">
											<h6>Japan</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>1 : 2</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-4.jpg" alt="">
											<h6>Philippines</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mc-table">
							<table>
								<tbody>
									<tr>
										<td class="left-team"><img
											src="assets/img/match/tf-5.jpg" alt="">
											<h6>Kyrgyz</h6></td>
										<td class="mt-content">
											<div class="mc-op">Ucraina vs England</div>
											<h4>1 : 2</h4>
											<div class="mc-op">15 September 2019</div>
										</td>
										<td class="right-team"><img
											src="assets/img/match/tf-6.jpg" alt="">
											<h6 class="mi-right">Pakistan</h6></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Match Section End -->

	<!-- Soccer Section Begin -->
	<section class="soccer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-0">
					<div class="section-title">
						<h3>Các tin nổi bật</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach items="${listrending}" var="item">
					<div class="col-lg-3 col-sm-6 p-0">
						<div class="soccer-item set-bg" data-setbg="${item.image }">
							<div class="si-tag">${item.categoryName}</div>
							<div class="si-text">
								<h5>
									<a href="articles?id=${item.id}">${item.title}</a>
								</h5>
								<ul>
									<li><i class="fa fa-calendar"></i> May 19, 2019</li>
									<li><i class="fa fa-edit"></i> 3 Comment</li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Soccer Section End -->

	<!-- Latest Section Begin -->
	<section class="latest-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-title latest-title">
						<h3>
							Tin Tức <span>Mới</span>
						</h3>
						<ul>
							<c:forEach items="${listcate}" var="item">
								<li><a href="javascript:void(0);"
									onclick="loadArticlesByCategory(${item.id})">${item.name}</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="news-item left-news">
								<div class="ni-pic set-bg"
									data-setbg="assets/img/news/latest-b.jpg">
									<div class="ni-tag">Soccer</div>
								</div>
								<div class="ni-text">
									<h4>
										<a href="#">Once You Learn These Hard Truths About Life,
											You'll Become</a>
									</h4>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
									<p>It’s that time again when people start thinking about
										their New Years Resolutions. Usually they involve, losing
										weight, quitting smoking, and joining a gym, just to mention a
										few.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6" id = "articles-container" >
							
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="section-title">
						<h3>
							Bảng xếp hạng <span>Bóng đá</span>
						</h3>
					</div>
					<div class="points-table">
						<table>
							<thead>
								<tr>
									<th class="th-o">Pos</th>
									<th>Team</th>
									<th class="th-o">P</th>
									<th class="th-o">W</th>
									<th class="th-o">L</th>
									<th class="th-o">PTS</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-1.jpg" alt=""> <span>Afghanis</span>
									</td>
									<td>22</td>
									<td>2</td>
									<td>5</td>
									<td>72</td>
								</tr>
								<tr>
									<td>2</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-2.jpg" alt=""> <span>Australia</span>
									</td>
									<td>20</td>
									<td>3</td>
									<td>4</td>
									<td>71</td>
								</tr>
								<tr>
									<td>3</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-3.jpg" alt=""> <span>Qatar</span>
									</td>
									<td>18</td>
									<td>4</td>
									<td>4</td>
									<td>68</td>
								</tr>
								<tr>
									<td>4</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-4.jpg" alt=""> <span>Cambodia</span>
									</td>
									<td>17</td>
									<td>2</td>
									<td>7</td>
									<td>64</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-5.jpg" alt=""> <span>Uzbekistan</span>
									</td>
									<td>17</td>
									<td>2</td>
									<td>6</td>
									<td>60</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-6.jpg" alt=""> <span>Turkme</span>
									</td>
									<td>161</td>
									<td>1</td>
									<td>8</td>
									<td>57</td>
								</tr>
								<tr>
									<td>7</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-7.jpg" alt=""> <span>Sri
											Lanka</span></td>
									<td>15</td>
									<td>4</td>
									<td>8</td>
									<td>52</td>
								</tr>
								<tr>
									<td>8</td>
									<td class="team-name"><img
										src="assets/img/flag/flag-8.jpg" alt=""> <span>Myanmar</span>
									</td>
									<td>14</td>
									<td>3</td>
									<td>7</td>
									<td>48</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="p-all">View All</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Section End -->

	<!-- Video Section Begin -->
	<section class="video-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h3>Video nổi bật</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="video-slider owl-carousel">
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="assets/img/videos/video-1.jpg">
							<div class="vi-title">
								<h5>A World Of Infinite Opportunities</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="assets/img/videos/play.png" alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="assets/img/videos/video-2.jpg">
							<div class="vi-title">
								<h5>Video Games Playing With Imagination</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="assets/img/videos/play.png" alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="assets/img/videos/video-3.jpg">
							<div class="vi-title">
								<h5>Home Audio Recording For Everyone</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="assets/img/videos/play.png" alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="assets/img/videos/video-4.jpg">
							<div class="vi-title">
								<h5>What If They Let You Run The Hubble</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="assets/img/videos/play.png" alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="video-item set-bg"
							data-setbg="assets/img/videos/video-4.jpg">
							<div class="vi-title">
								<h5>What If They Let You Run The Hubble</h5>
							</div>
							<a href="https://www.youtube.com/watch?v=dhYOPzcsbGM"
								class="play-btn video-popup"><img
								src="assets/img/videos/play.png" alt=""></a>
							<div class="vi-time">11:13</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Video Section End -->

	<!-- Popular News Section Begin -->
	<section class="popular-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="section-title">
						<h3>
							Popular <span>Post</span>
						</h3>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="news-item popular-item set-bg"
								data-setbg="assets/img/news/popular-b.jpg">
								<div class="ni-tag tenis">Tenis</div>
								<div class="ni-text">
									<h5>
										<a href="#">England reach World Cup last 16 with
											hard-fought win over Argentina</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-1.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">There’s a great history of the winner Sandia</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-2.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">It’ll be a tough game and a physical game</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-3.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">If we don’t score we can’t get frustrated</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="news-item popular-item set-bg"
								data-setbg="assets/img/news/popular-b.jpg">
								<div class="ni-tag football">Football</div>
								<div class="ni-text">
									<h5>
										<a href="#">We are playing history and Argentina at the
											World Cup, says Phil Neville</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-5.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">Le Havre does have a growing fan club</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-6.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">It will be hard to break them down</a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
							<div class="news-item">
								<div class="ni-pic">
									<img src="assets/img/news/ln-7.jpg" alt="">
								</div>
								<div class="ni-text">
									<h5>
										<a href="#">We’ve never seen them as organised </a>
									</h5>
									<ul>
										<li><i class="fa fa-calendar"></i> May 19, 2019</li>
										<li><i class="fa fa-edit"></i> 3 Comment</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="section-title">
						<h3>
							Follow <span>Us</span>
						</h3>
					</div>
					<div class="follow-links">
						<ul>
							<li class="facebook"><i class="fa fa-facebook"></i>
								<div class="fl-name">Facebook</div> <span class="fl-fan">2.530
									Fans</span></li>
							<li class="twitter"><i class="fa fa-twitter"></i>
								<div class="fl-name">Twitter</div> <span class="fl-fan">2.046
									Fans</span></li>
							<li class="google"><i class="fa fa-google"></i>
								<div class="fl-name">Google</div> <span class="fl-fan">1.170
									Fans</span></li>
						</ul>
					</div>
					<div class="vote-option set-bg"
						data-setbg="assets/img/news/vote-bg.jpg">
						<div class="vo-text">
							<h5>In your opinion, which country will win this year</h5>
							<div class="vt-item">
								<input type="radio" name="like-team" id="one"> <label
									for="one">Germany</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="two"> <label
									for="two">Brazil</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="three"> <label
									for="three">Myanmar</label>
							</div>
							<div class="vt-item">
								<input type="radio" name="like-team" id="four"> <label
									for="four">Argentina</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Popular News Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="/WEB-INF/views/Footer.jsp" />
	