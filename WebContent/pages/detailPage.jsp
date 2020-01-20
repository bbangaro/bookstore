<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
<%-- <c:set var="b_code" value="b_code" > --%>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<title>책이름</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script>

	
	console.log("${param.bCode}");
	console.log(${param.bCode});
	function eBook() {
		location.href = "/bookstore/eBookListController?bCode=${param.bCode }";
	}
	
	function cart() {
		if (${empty sessionScope.id}) {
			alert("로그인이 필요한 서비스입니다.");
			location.href = "/bookstore/login.jsp";
		} else {
			location.href ='/bookstore/AddProductController';
		}
	}
	
	function buy() {
		if (${empty sessionScope.id}) {
			alert("로그인이 필요한 서비스입니다.");
			location.href = "/bookstore/login.jsp";
		} else {
			location.href ='/bookstore/PayDirectController';
		}
	}
</script>

<style>

body{
font-family: sans-serif;
}
/* 기본 중앙정렬 틀 */
.review, .header-book, .main-book {
	background-color: #fefefe;
	margin: 2% auto 3% auto;
	width: 55%;
}
/* header 시작 */
header ul {
	list-style: none;
	padding-left: 0px;
}

.header-book {
	display: flex;
}

.tit {
	font-size: 20px;
	font-family:sans-serif;
	padding-left: 30px;
}

.checke {
	color: orange;
}

header button {
	border: none;
	margin: 5px;
	padding: 10px;
	width: 200px;
	border-radius: 6px;
	cursor: pointer;
	background-image: linear-gradient(to left, #fda7df, #9980fa, #fda7df);
	background-size: 200%;
	transition: 0.6s;
}

.btn:hover {
	background-position: right;
}

.btn:active {
	position: relative;
	top: 5px
}

.fa-cart-arrow-down, .fa-credit-card, .fa-atlas {
	margin-right: 5px;
	font-size: 1.3rem;
}

/* header 끝 */
.header-book-title {
	padding-left: 5px;
}

hr {
	width: 65%;
	border: 1px solid #888;
}

/* 메인시작  */

/* 리뷰 테이블 */
.content-table, .star-rating{
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	width: 100%;
}

.content-table thead tr, .star-rating thead tr {
	background-image: linear-gradient(to left, #fcb6e3, #c9bdf7, #fcb6e3);
	width: 100%;
	text-align: left;
}

.content-table th, .content-table td,  .star-rating th,  .star-rating td {
	padding: 12px;
}

.content-table tbody tr,  .star-rating tbody tr{
	border-bottom: 1px solid #d1d0d0;
}

.content-table tbody tr:last-of-type,  .star-rating tbody tr:last-of-type {
	border-bottom: 2px solid #fcb6e3;
}

/* 리뷰끝 */

/* 메인끝  */
</style>
</head>

<body>

	<c:set var="b_Code" value="${param.bCode}" scope="session"></c:set>
	<%@ include file="../include/top.jsp"%> 
	<header>
		<div class="header-book">
			<div>
				<a><img
					src="../bookimg/${requestScope.bookvo.bImage }" width="480px" height="480px" alt=""></a>
			</div>

			<div class="header-book-title">
				<div class="tit">
					<ul class="">
						<li><strong>책제목</strong>
							<div>${requestScope.bookvo.bName}</div></li><br>
						<li><strong>저자</strong>
							<div>${requestScope.bookvo.writerName}</div></li><br>
						<li><strong>출판사</strong>
							<div>${requestScope.bookvo.bCompany}</div></li><br>
						<li><strong>종이책</strong>
							<div>
								<i>${requestScope.bookvo.salePrice}</i>원 <br>
								<p>
									(<s>${requestScope.bookvo.bPrice},</s>10% 할인)
								</p>
							</div></li><br>
					</ul>
				</div>
				<div>
					<button class="btn"
						onclick="cart()">
						<i class="fas fa-cart-arrow-down"></i>장바구니담기
					</button>
					<button class="btn" onclick="buy()">
						<i class="far fa-credit-card"></i>바로구매
					</button>
					
					<c:if test="${fn:startsWith(param.bCode, 'e')}">
						<button class="btn" onclick="eBook()">
							<i class="fas fa-atlas"></i>E/오디오북으로 보기
						</button>
					</c:if>
				</div>
			</div>
		</div>
	</header>

	<hr>

	<main>
		<div class="main-book">
			<ul>
				<li><strong style="font-size: 25px">목차</strong>
					<div>${requestScope.bookvo.contents}</div></li>
				<li><strong style="font-size: 25px">책소개</strong>
					<div>${requestScope.bookvo.content}</div></li>
			</ul>
		</div>

		<hr>

		<div class="review" style="margin: 0 auto 0 auto;">
					<h1>한줄 리뷰</h1>
			<table class="star-rating">
					<thead>
						<tr>
							<th><strong>별점</strong></th>
							<th><strong>제목</strong></th>
							<th><strong>내용</strong></th>
						</tr>
					</thead>

					<tbody class="starNext">
						<c:forEach var="list" items="${starList }" varStatus="status">

							<tr>
								<td><c:forEach var="i" begin="0" end="4">
										<c:if test="${i <= list.star-1 }">
											<span class="fa fa-star checke"></span>
										</c:if>
										<c:if test="${i > list.star-1 }">
											<span class="fa fa-star "></span>
										</c:if>
									</c:forEach>${list.star }점</td>

								<td>${list.title}</td>
								<td>${list.content}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
		
		
			<div class="atc_area">
				<div class="avg_area">
		
					<form action="/bookstore/startingAjax">
						<div class="box">
							<span class="fa fa-star checked" onclick="starmark(this)"
								id="1one"></span> <span class="fa fa-star checked"
								onclick="starmark(this)" id="2one"></span> <span
								class="fa fa-star checked" onclick="starmark(this)" id="3one"></span>
							<span class="fa fa-star checked" onclick="starmark(this)"
								id="4one"></span> <span class="fa fa-star checked"
								onclick="starmark(this)" id="5one"></span>
						</div>

						제목 <input type="text" class="star-title" name="title"
							style="margin-bottom: 5px;"><br>
						<textarea name="content" rows="5" cols="60" class="star-content"
							placeholder="내용 최대 4천자" style="resize: none;"></textarea>
						<button type="button" name="star" value="1" onclick="oneReviews()"
							formaction="/bookstore/startingAjax"">리뷰쓰기</button>
					</form>


				</div>

			


			</div>
			<a href="javascript:void(0);" class="view_toggle _toggleExpandReview"
				data-review-type="text"> <span class="mask"></span> <span
				class="view">리뷰펼치기</span>
			</a>


			
			<h1 id='tagre'>구매자 리뷰</h1>
			<table class="content-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>포토</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty reviewvo }">
							<tr>
								<td colspan="4">등록된 글이 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${not empty reviewvo}">
							<c:forEach var="vo" items="${reviewvo }" varStatus="reviewvoNum">
								<tr>
									<td>${vo.reviewNum}</td>
									<td>${vo.memberId}</td>
									<td><c:choose>
											<c:when test="${vo.level > 1 }">
												<c:forEach var="i" begin="1" end="${vo.level}" step="1">
													<span style="padding-left: 25px"></span>
												</c:forEach>
												└[답변]
												<a
													href="/bookstore/detail/CheckForm?reviewNum=${vo.reviewNum }">${vo.subject}</a>
											
											</c:when>
											<c:otherwise>
												<a
													href="/bookstore/detail/CheckForm?reviewNum=${vo.reviewNum }">${vo.subject}</a>
											</c:otherwise>
										</c:choose></td>
									<c:if test="${empty vo.upload }">
										<td></td>
									</c:if>

									<c:if test="${not empty vo.upload }">
										<td><img width="50" height="50"
											src="../upload/${vo.upload}"></td>
									</c:if>
								</tr>
							</c:forEach>
						</c:when>



					</c:choose>

				</tbody>


			</table>
			<c:set var="page"
				value="${(param.pageNum == null)? 1: param.pageNum}" />
			<c:set var="startNum" value="${page-(page-1) % 5}" />
			<div style="display: block; text-align: center; margin-top: -10px;">

				<c:if test="${startNum > 1}">
					<a
						href="/bookstore/detail/Page?bCode=${param.bCode }&pageNum=${startNum-1}">이전</a>
				</c:if>
				<c:if test="${startNum <= 1 }">
					<span onclick="alert('데이터가 없습니다')">이전</span>
				</c:if>


				<c:forEach var="i" begin="0" end="4">
					<c:choose>
						<c:when test="${startNum + i == param.pageNum }">
							<a style="background-color: tomato;"
								href="/bookstore/detail/Page?bCode=${param.bCode }&pageNum=${startNum+i}">${startNum + i}</a>
						</c:when>
						<c:otherwise>
							<a
								href="/bookstore/detail/Page?bCode=${param.bCode }&pageNum=${startNum+i}">${startNum + i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>



				<c:if test="${startNum+5 < lastPage / 5-1 }">
					<a
						href="/bookstore/detail/Page?bCode=${param.bCode }&pageNum=${startNum+5}">다음</a>
				</c:if>
				<c:if test="${startNum+5 >= lastPage / 5-1 }">
					<span onclick="alert('데이터가 없습니다')">다음</span>
				</c:if>
			</div>
			<button onclick="location.href='/bookstore/detail/session'">리뷰쓰기</button>
		</div>





		<hr>
		<div class="main-book">
			<div>반품/교환안내</div>
			<!--테이블 -->
			<table>
				<tr>
					<td>반품/교환 방법</td>
					<td>"나의계정&gt;주문조회&gt;반품/교환신청", <a
						href="/cs_center/wcs_ConsultQS.aspx?CategoryId1=76">1:1상담</a> &gt;
						<a href="/cs_center/wcs_ConsultQS.aspx?CategoryId1=76">반품/교환</a>
						또는 고객센터(1544-2514)<br> 판매자 배송상품은 판매자와 반품/교환이 협의된 상품에 한해 가능
					</td>
				</tr>
				<tr>
					<td>반품/교환 가능기간</td>
					<td>o 변심반품 수령 후 20일(단, 중고매장 상품은 구매 후 구매 다음날로 부터 7일, 회원직거래
						중고상품은 출고일로 부터 구매확정 전 상태로 6일, 전자책 단말기 등 전자제품은 수령 후 7일 이내 제품 포장
						미개봉시, eBook은 결제 후 다운로드 받지 않은 상태에서 20일 이내)<br> <br>o 파본 등
						상품결함 시 '문제점 발견 후 30일(단, 수령일로 부터 3개월)' 이내
					</td>
				</tr>
				<tr>
					<td>반품/교환 비용</td>
					<td>o 변심 혹은 구매착오의 경우에만 반송료 고객 부담<br>o 해외직배송도서의 변심 혹은
						구매착오로 인한 취소/반품은 판매가의 20% 취소수수료 고객 부담<br> <br>* 취소수수료 :
						수입제반비용(국내 까지의 운송비, 관세사비, 보세창고료, 내륙 운송비, 통관비 등)과 재고리스크(미판매 리스크,
						환차손)에 따른 비용 등<br> 단, 아래의 주문/취소 조건인 경우, 취소 수수료 면제<br>
						&nbsp;- 오늘 00시~06시 주문을 오늘 06시 이전 취소<br> &nbsp;- 오늘 06시 이후 주문
						후 다음 날 06시 이전 취소<br>

					</td>
				</tr>
				<tr>
					<td>반품/교환 불가 사유</td>
					<td>o 소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우<br> o 소비자의 사용, 포장
						개봉에 의해 상품 등의 가치가 현저히 감소한 경우<br> 예) 전자책 단말기,가전제품, 래핑이 제거된
						만화책/라이트노벨/수험서/문제집류<br> o 복제가 가능 또는 단기간 내 완독 가능 상품의 자체 포장이나
						래핑을 훼손한 경우<br> 예) 음반,DVD,비디오,Blu-ray,소프트웨어, 잡지, 영상 화보집<br>
						o 소비자 요청에 의한 주문 제작 상품(분철도서, POD 도서 등)<br> o 세트 상품 일부만 반품
						불가(전체 반품 후 낱권 재구매)<br> o 디지털 컨텐츠인 eBook, 오디오북 등을 1회 이상 다운로드
						받았거나, 대여 기간이 종료된 eBook 대여제 상품<br> o 시간의 경과에 의해 재판매가 곤란한 정도로
						가치가 현저히 감소한 경우(커피류 등)
					</td>
				</tr>
				<tr>
					<td>소비자 피해보상<br>환불지연에 따른 배상
					</td>
					<td>o 상품의 불량에 의한 반품, 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은
						소비자분쟁해결기준 (공정거래위원회 고시)에 준하여 처리됨<br>o 대금 환불 및 환불 지연에 따른 배상금 지급
						조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리함
					</td>
				</tr>


			</table>
		</div>


		<hr>



	</main>

	<br>
	<br>
	<br>
	<br>

	<script>
		var rating = "";
		function starmark(item) {
			var count = item.id[0];

			rating = count;
			var subid = item.id.substring(1);
			var stars = document.querySelectorAll(".checked");
			var jumsu = document.querySelector(".avg_area button");
			console.log(count);

			for (var i = 0; i < 5; i++) {

				if (i < count) {
					stars[i].style.color = "orange";
					jumsu.value = i + 1;

				} else {
					stars[i].style.color = "black";
				}

			}
		}

		function oneReviews() {

			var star = $(".avg_area button").val();
			var title = $(".star-title").val();
			var content = $(".star-content").val();

		
				$.ajax({
						url : '/bookstore/startingAjax',
						type : 'POST',
						data : {
							star : star,
							title : title,
							content : content
						},
						success : function(result) {

							var starNext = $("<tr></tr>");
						

							var star = $(".avg_area button").val();
							var title = $(".star-title").val();
							var content = $(".star-content").val();

							var td = $("<td></td>");
								var text = "";
									for (var i = 1; i <= 5; i++) { 
										if(i <= star){
											text += "<span class='fa fa-star checke'></span>"+'&nbsp';
										}else{
											text += "<span class='fa fa-star'></span>";
										}
									}
							td.append(text+'&nbsp'+star+"점");

							starNext.append(td);

							var sartTitle = $('<td>' + title + '</td>');

							starNext.append(sartTitle);

							var sartContent = $('<td>' + content + '</td>');

							starNext.append(sartContent);

							$(".starNext").append(starNext);
						}
					});

		}
	</script>





 <%@ include file="../include/bottom.jsp"%> --%>


</body>

</html>