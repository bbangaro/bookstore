<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 수정 및 삭제</title>
<script>
	function update_go(frm) {
		frm.action = "QnAUpdateController";
		frm.submit();
	}
	function delete_go(frm) {
		frm.action = "QnADeleteController";
		frm.submit();
	}
</script>
</head>
<body>
<div id="container">

	<p><a href="QnAListController">[목록으로 이동]</a></p>
	
	<form method="post">
		<table border>
			<tbody>
				<tr>
					<th>카테고리</th>
					<td>${vo.category }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${vo.memberId }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${vo.subject }</tr>
				<tr>
					<td colspan="2">${vo.rContent }</td>
				</tr>
				<tr>
					<td>${vo.upload }</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="button" value="수 정"
							onclick="update_go(this.form)">
						<input type="button" value="삭 제"
							onclick="delete_go(this.form)">
					</td>
				</tr>
			</tfoot>
		</table>
	</form>	
</div>
</body>
</html>