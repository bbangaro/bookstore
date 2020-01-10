<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책이름</title>

<style>

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
	background-color: #fefefe;
	margin: 2% auto 3% auto;
	border: 1px solid #888;
	width: 55%;
	z-index: 2;
}

.header-book-title {
	padding-left: 5px;
}

hr {
	width: 65%;
	border: 1px solid #888;
}

/* 메인시작  */
.main-book, main-book {
	margin: 2% auto 3% auto;
	border: 1px solid #888;
	width: 55%;
}

.main-book-flex {
	display: flex; background-color : #fefefe;
	border: 1px solid #888;
	margin: 2% auto 3% auto;
	width: 55%;
	text-align: center;
	background-color: #fefefe;
}

.review {
	width: 100%;
	height: 100%;
}

.review:hover {
	background-color: red;
}
/* 메인끝  */
</style>
</head>
<body>
	<%@ include file="include/top.jsp"%>
	<header>
		<div class="header-book">
			<div>
				<a><img class="img-size"
					src="images/${requestScope.b_code.bImage }" alt=""></a>
			</div>

			<div class="header-book-title">
				<div class="tit">
					<ul class="">
						<li><strong>책제목</strong>
							<div>${requestScope.b_code.bName}</div></li>
						<li><strong>저자</strong>
							<div>${requestScope.b_code.writerName}</div></li>
						<li><strong>출판사</strong>
							<div>${requestScope.b_code.bCompany}</div></li>
						<li><strong>종이책</strong>
							<div>
								<i>${requestScope.b_code.salePrice}</i>원 <br>
								<p>
									(<s>${requestScope.b_code.bPrice},</s>10% 할인)
								</p>
							</div></li>
					</ul>
				</div>
				<div>
					<button>장바구니 담기</button>
					<button>바로구매</button>
					<button>e북으로 보기</button>
				</div>
			</div>
		</div>
	</header>

	<hr>

	<main>
		<div class="main-book">
			<ul>
				<li><strong>목차</strong>
					<div>${requestScope.b_code.contents}</div></li>
				<li><strong>책소개</strong>
					<div>${requestScope.b_code.content}</div></li>
			</ul>
		</div>

		<hr>

		<div class="main-book-flex">
			<div class="review">
				<a href="#" class="blue02" onclick="">마이리뷰</a>
			</div>

			<div class="review">
				<a href="#" class="blue02" onclick="">QnA</a>
			</div>

			<div class="review">
				<a href="#" class="blue02" onclick="">이벤트</a>
			</div>
	</div>
	
		<div>
			<!-- 마이리뷰 시작  -->
			<div>
				<div>
					<!-- 리스트 타이틀 시작 -->
						<div >
							<div >
								<form>
									<div>
										<textarea name="tag_save" cols="87" rows="3" style="resize: none;"></textarea>
									</div>
									<div>
										<input type="button" value="리뷰등록">
									</div>
								</form>
							</div>
						</div>
						
					<!--// 리스트 타이틀 끝-->
						<hr>
						
						<div></div>
						<div>등록된 리뷰가 없습니다.</div>
						<!-- 더보기 버튼 -->
						<div></div>
					</div>
				</div>
				<div></div>
					<!--// 마이리뷰 끝  -->
			</div>
	
		<hr>




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
						미개봉시, eBook은 결제 후 다운로드 받지 않은 상태에서 20일 이내)<br>
					<br>o 파본 등 상품결함 시 '문제점 발견 후 30일(단, 수령일로 부터 3개월)' 이내
					</td>
				</tr>
				<tr>
					<td>반품/교환 비용</td>
					<td>o 변심 혹은 구매착오의 경우에만 반송료 고객 부담<br>o 해외직배송도서의 변심 혹은
						구매착오로 인한 취소/반품은 판매가의 20% 취소수수료 고객 부담<br>
					<br>* 취소수수료 : 수입제반비용(국내 까지의 운송비, 관세사비, 보세창고료, 내륙 운송비, 통관비 등)과
						재고리스크(미판매 리스크, 환차손)에 따른 비용 등<br> 단, 아래의 주문/취소 조건인 경우, 취소 수수료
						면제<br> &nbsp;- 오늘 00시~06시 주문을 오늘 06시 이전 취소<br> &nbsp;-
						오늘 06시 이후 주문 후 다음 날 06시 이전 취소<br>

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





	<%@ include file="include/bottom.jsp"%>


</body>
</html>