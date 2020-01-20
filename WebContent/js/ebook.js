// 슬라이드
$(function() {

	$('.slider').each(function() {
		var $this = $(this);
		var $group = $this.find('.slide_group');
		var $slides = $this.find('.slide');
		var bulletArray = [];
		var currentIndex = 0;
		var timeout;

		function move(newIndex) {
			var animateLeft, slideLeft;

			advance();

			if ($group.is(':animated') || currentIndex === newIndex) {
				return;
			}

			bulletArray[currentIndex].removeClass('active');
			bulletArray[newIndex].addClass('active');

			if (newIndex > currentIndex) {
				slideLeft = '100%';
				animateLeft = '-100%';
			} else {
				slideLeft = '-100%';
				animateLeft = '100%';
			}

			$slides.eq(newIndex).css({
				display : 'block',
				left : slideLeft
			});
			$group.animate({
				left : animateLeft
			}, function() {
				$slides.eq(currentIndex).css({
					display : 'none'
				});
				$slides.eq(newIndex).css({
					left : 0
				});
				$group.css({
					left : 0
				});
				currentIndex = newIndex;
			});
		}

		function advance() {
			
			
			clearTimeout(timeout);
			timeout = setTimeout(function() {
				if (currentIndex < ($slides.length - 1)) {
					move(currentIndex + 1);
				} else {
					move(0);
				}
			}, 40000000000000);
			
			
		}

		$('.next_btn').on('click', function() {
			if (currentIndex < ($slides.length - 1)) {
				move(currentIndex + 1);
			} else {
				move(0);
			}
		});

		$('.previous_btn').on('click', function() {
			if (currentIndex !== 0) {
				move(currentIndex - 1);
			} else {
				move(3);
			}
		});

		$.each($slides, function(index) {
			var $button = $('<a class="slide_btn">&bull;</a>');

			if (index === currentIndex) {
				$button.addClass('active');
			}
			$button.on('click', function() {
				move(index);
			}).appendTo('.slide_buttons');
			bulletArray.push($button);
		});

		advance();
	});


});


var audio = new Audio();
var playStat = false;

function playEbook(eNum, eText){
	console.log("e북 번호 : " + eNum);
	console.log("텍스트 : " + eText);	

	$.ajax({
		url : "GelXmleBookPlayController",
		type : "POST",
		data: {
			"eNum" : eNum,
			"playText" : eText
		},
		dataType: "html",
		success : function(data){
			console.log('음성 결과 확인');
			setTimeout(playText(eNum), 1000);
		},
		error : function(jqXHR, textStatus, errorThrown){
			alert("원리스트 소환 처리 실패 : \n"
				+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
				+ "textStatus : " + textStatus +"\n"
				+ "errorThrown : " + errorThrown);
		}
	});
}

function playText(eNum) {
	audio.src = "ebook/"+eNum+".mp3";

	if(playStat) {
		audio.stop();
		// 현재 상태 toggle
		//playStat = !playStat;
	}
	else {
	audio.oncanplaythrough = function(){
	// 현재 상태 toggle
	playStat = !playStat;
	audio.play();
		}	
	}
//	
//	// 현재 재생중이면 오디오 중지
//	if(playStat) audio.stop();
//	
//	audio.oncanplaythrough = function() {
//		audio.play();
//		console.log("mp3 재생");
//	}
};









