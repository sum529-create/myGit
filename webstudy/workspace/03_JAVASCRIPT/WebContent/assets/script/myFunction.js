/**
 * 
 */


/* 	console.log(Math.round(123.456 * 1/100)/(1/100));	// 십의 자리 반올림
	console.log(Math.round(123.456 * 1/10)/(1/10));	// 일의 자리 반올림
	console.log(Math.round(123.456 * 1)/1);			// 정수 반올림
	console.log(Math.round(123.456 * 10)/10);		// 소수 1자리 반올림
	console.log(Math.round(123.456 * 100)/100);		// 소수 2자리 반올림
	console.log(Math.round(123.456 * 1000)/1000);	// 소수 3자리 반올림 */

	// n 자리로 반올림 갓을 반환하는 myRound 함수
	function myRound(n, digits){
		digits || (digits= 0);	// default 처리,   digits의 전달이 없으면 digits은 0으로 처리
		return Math.round(n * Math.pow(10, digits))/Math.pow(10, digits);
	}

	// 04_함수/quiz01.html
	function watch(){
			setTimeout(function(){
				var now = new Date();
				document.getElementById('year').textContent = now.getFullYear();
				document.getElementById('month').textContent = fillZero(now.getMonth()+1, 2); // 두자리 맞춘다.
				document.getElementById('date').textContent = fillZero(now.getDate(),2);
				document.getElementById('hour').textContent = now.getHours();
				document.getElementById('minute').textContent = fillZero(now.getMinutes(),2);
				document.getElementById('second').textContent = fillZero(now.getSeconds(),2);
			
				// 재귀 호출
				watch();
			}, 1000);
	};	
	

	// 04_함수/quiz02.html
	function fillZero(n, digits){
		digits || (digits = 0);
		var strN = '' + n;
		
		while(strN.length != digits){
			strN = '0' + strN;
		}
		return strN;
	}
