<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%-- <c:set var="b_code" value="b_code" > --%>
<head>
<meta charset="UTF-8">

<title>책이름</title>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
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

.img-size {
	height: 280px;
	width: 100%;
}

.header-book {
	display: flex;
}

header button {
	border: none;
	margin: 5px;
	padding: 10px;
	width: 180px;
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
.content-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	width: 100%;
}

.content-table thead tr {
	background-image: linear-gradient(to left, #fcb6e3, #c9bdf7, #fcb6e3);
	width: 100%;
	text-align: left;
}

.content-table th, .content-table td {
	padding: 12px;
}

.content-table tbody tr {
	border-bottom: 1px solid #d1d0d0;
}

.content-table tbody tr:last-of-type {
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
				<a><img class="img-size"
					src="../bookimg/${requestScope.bookvo.bImage }" alt=""></a>
			</div>

			<div class="header-book-title">
				<div class="tit">
					<ul class="">
						<li><strong>책제목</strong>
							<div>${requestScope.bookvo.bName}</div></li>
						<li><strong>저자</strong>
							<div>${requestScope.bookvo.writerName}</div></li>
						<li><strong>출판사</strong>
							<div>${requestScope.bookvo.bCompany}</div></li>
						<li><strong>종이책</strong>
							<div>
								<i>${requestScope.bookvo.salePrice}</i>원 <br>
								<p>
									(<s>${requestScope.bookvo.bPrice},</s>10% 할인)
								</p>
							</div></li>
					</ul>
				</div>
				<div>
					<button class="btn">
						<i class="fas fa-cart-arrow-down"></i>장바구니담기
					</button>
					<button class="btn">
						<i class="far fa-credit-card"></i>바로구매
					</button>
					<button class="btn">
						<i class="fas fa-atlas"></i>E북으로 보기
					</button>
				</div>
			</div>
		</div>
	</header>

	<hr>

	<main>
		<div class="main-book">
			<ul>
				<li><strong>목차</strong>
					<div>${requestScope.bookvo.contents}</div></li>
				<li><strong>책소개</strong>
					<div>${requestScope.bookvo.content}</div></li>
			</ul>
		</div>

		<hr>

	<div class="review" style="margin: 0 auto 0 auto;">
			<div class="atc_area">
				<div class="avg_area">
					<h1>한줄 리뷰</h1>
					<form name="">
						<div class="box">
							<span class="fa fa-star checked" onclick="starmark(this)"
								id="1one"></span> <span class="fa fa-star checked"
								onclick="starmark(this)" id="2one"></span> <span
								class="fa fa-star checked" onclick="starmark(this)" id="3one"></span>
							<span class="fa fa-star checked" onclick="starmark(this)"
								id="4one"></span> <span class="fa fa-star checked"
								onclick="starmark(this)" id="5one"></span>
						</div>
						제목 <input type="text" style="margin-bottom: 5px;"><br>
						<textarea rows="5" cols="60" placeholder="내용 최대 4천자"
							style="resize: none;"></textarea>
							
						
						<button>리뷰쓰기</button>
						
					</form>


				</div>
				<p class="subjcet">
					<strong>제목</strong><strong>작성자</strong><strong>작성일</strong>
				</p>
			
			</div>
			<a href="javascript:void(0);" class="view_toggle _toggleExpandReview"
				data-review-type="text"> <span class="mask"></span> <span
				class="view">리뷰펼치기</span>
			</a>



				<h1>구매자 리뷰</h1>
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
							<c:forEach var="vo" items="${reviewvo }"
								varStatus="reviewvoNum">
								<tr>
									<td>${vo.reviewNum}</td>
									<td>${vo.memberId}</td>
									<td><c:choose>
											<c:when test="${vo.level >1 }">
												<c:forEach begin="1" end="${vo.level}" step="1">
													<span style="padding-left: 10px"></span>
												</c:forEach>
												<span>[답변]</span>
																	<a href="/bookstore//detail/AddForm">	${vo.subject}</a>
															 	</c:when>
											<c:otherwise>
														<a  href="/bookstore//detail/AddForm">${vo.subject}</a>
											</c:otherwise>
										</c:choose></td>
									<td><img width="30" height="30" src="../upload/${vo.upload}"></td> 
								</tr>
							</c:forEach>
						</c:when>



					</c:choose>

				</tbody>


			</table>
			<button onclick="location.href='/bookstore//detail/AddForm'">리뷰쓰기</button>
		</div>





		<hr>
		<div class="main-book">
			<div>반품/교환안내</div>
			<!--테이블 -->
			<table border="0">
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<script>
		var rating="";
		function starmark(item){
		var count = item.id[0];
		
		rating = count;			
		var subid=item.id.substring(1);
		var stars =document.querySelectorAll(".checked");
		console.log(count);

		for(var i=0;i<5; i++){
			
			if(i<count){
				stars[i].style.color="orange";
			}else{
				stars[i].style.color="black";
			}
			
		}
		}
	</script>



	 <%@ include file="../include/bottom.jsp"%> 


</body>

</html>