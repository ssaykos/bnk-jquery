/**
 * 셀렉터 객체
 */
var selector = {
		configDiv1 : function() {
			$('div#selectorBox').remove();
			$('div#selectorOutbox')
			.append('<span id="selectorSimple">Simple</span>')
			.append('<div class="selectorJquery">jQuery</div>')
			.append('<span>basic</span>')
			.append('<div class="selectorJquery">example</div>');
		},
		/*엘리먼트에 접근해서 스타일 지정하기*/
		no1 : function() {
			this.configDiv1();
			$('span').addClass('fontColorRed');
			$('div.selectorJquery').addClass('bgColorYellow');
			$('span#selectorSimple').addClass('fontSize30')
			.addClass('fontStyleItalic');
			
		},
		/*한번에 다양한 엘리먼트에 접근하여 갯수와 텍스트 얻기*/
		no2 : function() {
			this.configDiv1();
			var result = '';
			var $searchElems = $('span, div.selectorJquery');
			result += '검색된 엘리먼트 수 :' + $searchElems.length + '\n';
			/* length 대신에 size()를 사용해도 가능하다. */
			/* each() 는 for-loop 기능*/
			$searchElems.each(function() {
				result += $(this).text()+'\n';
			});
			alert($.trim(result));
		},
		configDiv3 : function() {
			$('div#selectorBox').remove();
			$('div#selectorOutbox')
			.append('<table id="selectorTab">')
			.append('</table>');
			/*
			 * table 과 tr td 는 자스 내부적으로 볼때
			 * 다른 객체이다. 
			 * */
			$('#selectorTab')
			.append('<tr><td>하나</td><td>ONE</td></tr>')
			.append('<tr><td>둘</td><td>TWO</td></tr>')
			.append('<tr><td>셋</td><td>THREE</td></tr>')
			.append('<tr><td>넷</td><td>FOUR</td></tr>')
			.append('<tr><td>다섯</td><td>FIVE</td></tr>')
			
		},
		/*조건에 만족하는 짝수와 홀수에 위치한 엘리먼트 구별하기*/
		no3 : function() {
			this.configDiv3();
			$('tr:even').css('backgroundColor','pink'); /*backgroundColor 는 제이쿼리에서 키값*/
			$('tr:odd').css('backgroundColor','yellow');
		},
		/*n번째로 일치하는 엘리먼트 스타일 적용*/
		no3_1 : function() {
			this.configDiv3();
			/* eq(n) n번째로 일치하는 엘리먼트에 스타일을 적용시킨다.
			 * 인덱스는 0부터 시작하여 가로방향으로 진행하며 라인 끝에 다다르면
			 * 다음 라인 왼쪽부터 오른쪽으로 진행한다. 지그재그 방향이다.
			 * */
			$('td:eq(4)').css('backgroundColor','yellow');
			$('#selectorTab').addClass('tab');
		},
		
		no4 : function(){
			$('div#selectorBox').remove();
			$('div#selectorOutbox')
			.append('<div> <span class="item"> 아이디 * </span> <input id="userId" type="text" ></div>')
			.append('<div> <span class="item"> 이름   * </span> <input id="userName" type="text"></div>')
			.append('<div> <span class="item"> 암호   * </span> <input id="pwd" type="password"></div>')
			.append('<div> <span class="item"> 암호 확인  * </span> <input id="pwdConfirm" type="password"></div>')
			.append('<input type="button" id="regBtn" value="회원가입">  ');
			/*유효성 체크 : 입력한 값이 요구조건에 충족되는 지는 프로트단에서 먼저 걸러 내겠다.
			 *  => 애초에 잘못된 값이라면 서버로 보내지도 않겠다.
			 * */
			$('#regBtn').click(function() {
				/*
				 #userId:text 에서 : 마크는 
				 pseudo[su:do]- class  수도-클래스(의사클래스)라고 부른다.
				 원 단어 뜻은 거짓의 라는 뜻이지만 자스에서는
				 가상의 클래스을 뜻한다. 보통 엘리먼트의 속성 중에서
				 항상 있는 상태가 아닌 변화하는 상태를 나타낸다.
				 사용자가 클래스로 선언하지 않더라도 특정 이벤트를 
				 가지는 속성이라면 수도 클래스를 통해 상태값을 반환한다.
				 :text  외에도 다음과 같은 사례가 있다.
				 
				 a:hover { color: #ABCDEF; }
				 a:link { text-decoration: none; }
				 a:visited { color: blue; }
				 * */
				if($('#userId:text').val() == ""){
		        	 alert("아이디를 입력하세요.");     
		        	 return;   	 
		         }
		         var userName = $('#userName:text').val();
		         if(userName == ""){
		        	 alert("이름을 입력하세요.");     
		        	 return;   	 
		         }
		         
		         if( $("#pwd:password").val() =="" || 
		             $("#pwdConfirm:password").val() == ""){
		        	 alert("암호를 입력하세요.");     
		        	 return;   	 
		         }
		         if($("#pwd:password").val() !=
		             $("#pwdConfirm:password").val()) {
		                alert("암호가 일치하지 않습니다.");
		                return;
		         }
		         alert(userName+"님 회원 가입을 축하합니다.");
		     
		      /*회원가입을 마치면 입력값을 제거하는 기능*/
		     
		         $('#userId:text').val('');
		         $('#userName:text').val('');
		         $('#pwd:password').val('');
		         $('#pwdConfirm:password').val('');
			});
		         
		          
		},
		no5 : function() {
			$('div#selectorBox').remove();
			$('div#selectorOutbox')
			.append('<div> <span class="item"> 음악감상 </span> ')
			.append('<input type="checkbox" name="hobby" value="music"></div>')
			.append('<div><span class="item"> 요가 </span>')
			.append('<input type="checkbox" name="hobby" value="yoga"></div>')
			.append('<div><span class="item"> 독서 </span> ')
			.append('<input type="checkbox" name="hobby" value="reading"></div> ')
			.append('<div><input type="button" id="selectBtn" value="취미 선택"></div>')
			.append('<div id="contents"> 결과 </div>');
			
			$('#selectBtn:button').click(function(){
			      var checkedList = "";
			      var checkedConsole = "";
			      $("input[name='hobby']:checkbox:checked").each(function() {
			         checkedList += $(this).prev().text() + "\t";
			         checkedConsole += $(this).val() + "\t";
			      }); 
			      $('#contents').html(checkedList);
			      console.log(checkedConsole);
			   });
		}
		
}












