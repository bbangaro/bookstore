	
	

	function getDataBtn(requestNum) {
			getXMLMembers(requestNum);
			
			$("#listToggle"+requestNum).contents().slideToggle();
			
//			$("#tbody"+requestNum).toggle();
//			$("#commentTbody"+requestNum).toggle();
	};	
	
	function getXMLMembers(requestNum){
		const numUrl = "getXmlRequest?requestNum=" + requestNum;
		$.ajax({
			url : numUrl,
			type : "get",
			dataType : "xml",
			//data : "name=" + name +&age=27", //서버로 전달할 데이터 작성
			//data : $('#inputForm').serialize(), //form 데이터 파라미터 전달
			success : function(data){
				
				var tbody = "";
				//전달받은 xml 데이터 처리
				// <member>태그들이 찾아짐 .fine("태그명")
				// 태그 안에 있는 텍스트 값 찾기 .text()
				// 태그방식이니까 돔 객체 사용하듯
				$(data).find("book").each(function(){
					tbody += "<br>";
					tbody += "<tr>";
					tbody += "<td>" + $(this).find("rContent").text() + "</td>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<td><img src='upload/" + $(this).find("upload").text() + "' width='50%' height='50%'></td>";
					tbody += "<td></td>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<br>";
				});
				$("#tbody"+requestNum).html(tbody);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("원리스트 소환 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		reqComment(requestNum);
	}
	
	function commentInsert(requestNum) {
		let selector = "#content"+requestNum;
		
		const numUrl = "GetJXmlReqCommentWriteController";	
		$.ajax({
			url : numUrl,
			type : "post",
			dataType : "xml",
			data : {"memberId":sessionId, "content":$(selector).val(), "requestNum":requestNum, "password":sessionPwd},
			success : function(data){
			
			reqComment(requestNum);
				
		},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 코멘트 입력처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
	
	 function commentUpdate(cIdx, requestNum){
		    var a ='';
		    
		    a += '<div class="input-group">';
		    a += '<input type="text" class="form-control" name="content_'+cIdx+'" value="'+ $(this).find("cComment").text()+'"/>';
		    a += '<span class="input-group-btn"><button class="btn btn-outline-info" type="button" onclick="commentUpdateProc('+cIdx+","+ requestNum +');">수정</button> </span>';
		    a += '</div>';
		    
		    $('.commentList'+cIdx).html(a);
		}
	 
	 function commentUpdateProc(cIdx, requestNum){
		 console.log($("#requestNum"));
		 console.log(requestNum);
		    var updateContent = $('[name=content_'+cIdx+']').val();
		    const numUrl = "GetXmlReqUpdateCommentController"	
		    $.ajax({
		        url : numUrl,
		        type : 'post',
		        data : {'content' : updateContent, 'cIdx' : cIdx},
		        success : function(data){
		        	
		           getXMLMembers(requestNum);
		           
		        },
				error : function(jqXHR, textStatus, errorThrown){
					alert("Ajax 코멘트 수정처리 실패 : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
						+ "textStatus : " + textStatus +"\n"
						+ "errorThrown : " + errorThrown);
				}
			});
		}
	function commentDelete(cIdx, requestNum) {
		console.log("cIdx"+cIdx);
		console.log("$(cIdx)"+$(cIdx));
		
		const numUrl = "GetXmlReqCommentDeleteController"	
		$.ajax({
			url : numUrl,
			type : "POST",
			dataType : "xml",
			data : {"cIdx":parseInt(cIdx)},
			success : function(data){
				
			//cIdx(parseInt($("#cIdx").text()));
			getXMLMembers(requestNum);
		},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
	
	function reqComment(requestNum){
	const numUrl = "getXmlRequestComment?requestNum=" + requestNum;
	$.ajax({
		url : numUrl,
		type : "get",
		dataType : "xml",
		success : function(data){
			
			var commentTbody = "";
				commentTbody += "<form id='rForm' method='POST'}> ";
				commentTbody += "<div class='panel panel-white post panel-shadow'>";
					
				commentTbody += "<div class='post-footer'>";
				commentTbody += "<div class='input-group'>";
				commentTbody += "<input class='form-control' placeholder='Add a comment' type='text' name='content' id='content"+requestNum+"'>";
				commentTbody += "</div>";
				commentTbody += "<span class='input-group-addon'> <button type='button' class='btn btn-outline-light text-dark btn-sm' onclick='commentInsert("+requestNum+")'>댓글달기</button> </span>";
				commentTbody += "<input type='hidden' name='requestNum' value="+requestNum+">";
				commentTbody += "<input type='hidden' name='memberId' value='"+sessionId+"'>";
				commentTbody += "<input type='hidden' name='password' value='"+sessionPwd+"'>";
				commentTbody += "</form> ";
				
			$(data).find("comment").each(function(){
				
				commentTbody += "<ul class='comments-list'>";
				commentTbody += "<li class='comment'><a class='pull-left' href='#'> <img class='avatar' src='http://bootdey.com/img/Content/user_1.jpg' alt='avatar'> </a>";
				commentTbody += "<div class='comment-body'>";
				commentTbody += "<div class='comment-heading'>";
				commentTbody += "<h4 class='user'>"+ $(this).find("cId").text() +"</h4>";
				commentTbody += "<h5 class='time'>5 minutes ago</h5>";
				commentTbody += "</div>";
				commentTbody += "<div class='commentList"+ $(this).find("cIdx").text()+"'> <p>"+ $(this).find("cComment").text() +"</p>";
				if(sessionId ==  $(this).find("cId").text() ) {
				commentTbody += "<span class='input-group-addon'> <button type='button' class='btn btn-outline-light text-dark btn-sm' onclick='commentUpdate("+$(this).find("cIdx").text()+","+requestNum+")'>수정</button> ";
				commentTbody += "<button type='button' class='btn btn-outline-light text-dark btn-sm' onclick='commentDelete("+ $(this).find("cIdx").text()+","+requestNum+")'>삭제</button> </span></div>";
				}
				commentTbody += "</div></li>";
				commentTbody += "</ul>";
				});
				commentTbody += "</div>";
				commentTbody += "</div>";
				
				
			$("#commentTbody"+requestNum).html(commentTbody);
	
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("댓글 소환 메서드 Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		
	
	}
	
	
	function reqDelete(requestNum) {
		if(confirm("글을 삭제하시겠습니까?") == true){
			location.href="ReqDeleteOKController?requestNum=" + requestNum; 
		}
			
	};
	
	