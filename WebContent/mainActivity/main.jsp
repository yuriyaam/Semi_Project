<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>Music For Everyone</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	  
	  <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
      <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
      <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
	  <link rel="stylesheet" href="assets/css/main.css?ver=2" />
   </head>
   <body>
      <!-- 헤더 -->
         <header id="header">
            <h1><a href="#">MFE <span>by</span></a></h1>
            <div>
            <button type ="button" class = "btn btn-secondary"><span class = "glyphicon glyphicon-tasks" aria-hidden="true"></span></button>
            <!--  검색 텍스트 -->
        	 <input class = "search_Text"type="text" id ="search_Text" placeholder = "search...">
            <button id = "search_Button" type ="button" class = "btn btn-secondary"><span class = "glyphicon glyphicon-search" aria-hidden="true"></span></button>
            <jsp:include page="navbar.jsp"/>
            <a class = "global"href="#menu"><span class = "glyphicon glyphicon-th-large" aria-hidden="true"></span></a>
            </div>
         </header>

      <!-- 옆으로 확장되는 네비게이션 바 -->
         
         <nav id="menu">
            <ul class="links">
               <li><a href="BoardList.bo" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">자유게시판</a></li>
               <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">리뷰게시판</a></li>
               <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터 </a></li>
            </ul>
         </nav>

       	<section id="banner">
       		<div class ="inner">
       			<header>
       				<h1>Music For Everyone</h1>
       				<p>다양한 공연을 즐기세요</p>
       			</header>
       			<a href="#main" class="button big alt scrolly">Start</a>
       		</div>
       	</section>
        <div id="main">
        <section class = "listWrapper">
           <h4>맞춤형 콘서트</h4>
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"><button type ="button" class = "btn btn-secondary heart"><span class = "glyphicon glyphicon-heart-empty" aria-hidden="true"></span></button></div>
   	     </div>
   	     </section>
		<section class = "listWrapper">
		 <h4>힙합 콘서트</h4>
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
   	     </div>
   	     </section>
   	     <section class = "listWrapper">
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
   	     </div>
   	     </section>
   	     <section class = "listWrapper">
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
   	     </div>
   	     </section>
   	     <section class = "listWrapper">
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
   	     </div>
   	     </section>
   	     <section class = "listWrapper">
          <div class="slider">
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/240/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/241/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/242/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/243/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/244/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/239/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/249/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
     		<div class="item"><img src="http://picsum.photos/id/248/550/550"></div>
   	     </div>
   	     </section>
   	     </div>
  				
           

        

      <!-- Footer -->
         <footer id="footer">
            <div class="inner">
               <div class="flex flex-3">
                  <div class="col">
                     <h3>Contact us</h3>
                     <ul class="alt">
                        <li><a href="#">dkaskgkdua@mfe.com</a></li>
                        <li><a href="#">press@mfe.com</a></li>
                        <li><a href="#">Enjoy Your Life!</a></li>
                     </ul>
                  </div>
                  <div class="col">
                     <h3>MFE</h3>
                     <ul class="alt">
                        <li><a href="#">We are hiring!</a></li>
                        <li><a href="#">MFE Zone</a></li>
                     </ul>
                  </div>
                  <div class="col">
                     <h3>Legal</h3>
                     <ul class="alt">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Cookies Policy</a></li>
                        <li><a href="#">Giveaways T&C's</a></li>
                        <li><a href="#">Vouchers T&C's</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <ul class="icons">
                  <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                  <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                  <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                  <li><a href="#" class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
               </ul>
               &copy; Untitled. Design: <a href="https://templated.co">MFE-TEAM</a>. Images: <a href="https://unsplash.com">Coverr</a>. Video: <a href="https://coverr.co">Coverr</a>.
            </div>
         </footer>
         
         <!--  로그인 모달 -->
         <div class="modal" id="login_Modal">
    		<div class="modal-dialog">
     			 <div class="modal-content">
      
      			  <!-- Modal Header -->
      			  <div class="modal-header">
      			    <h4 class="modal-title">로그인</h4>
     			    <button type="button" class="close" data-dismiss="modal">&times;</button>
      			  </div>
        
        		  <!-- Modal body -->
       			  <div class="modal-body">
        			  <div class="container uniform">
        				<form method = "post" action="loginProcess.net" id = "login_form" >
						 <fieldset>
					    	<div class = "form-group">
								<label for ="login_id" class="modalBlack">아이디</label>
								<input type="text" class="form-control" id="login_id"
								   placeholder = "Enter id" name="login_id" required maxLength="30">
								<span id = "login_id_message"></span>
							</div>
							<div class = "form-group">
								<label for ="modal_pass" class="modalBlack">비밀번호</label>
								<input type="password" class="form-control" id="login_pass"
								   placeholder = "Enter password" name="login_pass" required>
							</div>
							<div class="6u$ 12u$(small)">
								<input type="checkbox" id="login_remember" name="login_remember" checked>
								<label for="login_remember">Remember me</label>
							</div>
							
						</fieldset>
						</form>
        			</div>
    	    	</div>
        
        <!-- Modal footer -->
       			 <div class="modal-footer">
        			<button id = "login_button" type="submit" class="btn btn-primary" >로그인</button>
         			<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
         			<button type="button" class="btn btn-info" data-dismiss="modal" data-toggle="modal" data-target="#addMember_Modal"> 회원가입</button>
     			 </div>
        
    		  </div>
    		</div>
  		</div>
         
          <!--  계정 모달 -->
         <div class="modal" id="account_Modal">
    		<div class="modal-dialog">
     			 <div class="modal-content">
      
      			  <!-- Modal Header -->
      			  <div class="modal-header">
      			    <h4 class="modal-title">계정 관리</h4>
     			    <button type="button" class="close" data-dismiss="modal">&times;</button>
      			  </div>
        
        		  <!-- Modal body -->
       			  <div class="modal-body">
        			  <div class="container uniform">
        				<form method = "post" action="#" id = "account_form" >
						 <fieldset>
					    	<a href="#">My page</a>
					    	<a href="logOut.net">Logout</a>
         					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						</fieldset>
						</form>
        			</div>
    	    	</div>
    		  </div>
    		</div>
  		</div>
         
         <!-- 회원가입 모달 -->
		<div class="modal" id="addMember_Modal">
    		<div class="modal-dialog">
     			 <div class="modal-content">
      
      			  <!-- Modal Header -->
      			  <div class="modal-header">
      			    <h4 class="modal-title">회원가입</h4>
     			    <button type="button" class="close" data-dismiss="modal">&times;</button>
      			  </div>
        
        		  <!-- Modal body -->
       			  <div class="modal-body">
        			  <div class="container">
        				<form action="joinProcess.net" id = "addMember_form" method="post">
						 <fieldset>
					    	<div class = "form-group">
								<label for ="addMember_id" class="modalBlack">아이디</label>
								<input type="text" class="form-control" id="addMember_id"
								   placeholder = "Enter id" name="addMember_id" required>
								<span id = "addMember_id_message"></span>
							</div>
							<div class = "form-group">
								<label for ="addMember_pass" class="modalBlack">비밀번호</label>
								<input type="password" class="form-control" id="addMember_pass"
								   placeholder = "Enter password" name="addMember_pass" required maxLength="12">
							</div>
							<div class = "form-group">
								<label for = "addMember_name" class="modalBlack">이름</label>
								<input type="text" id = "addMember_name" class="form-control" name = "addMember_name" placeholder="Enter name" required maxLength="15">
							</div>
							<div class = "form-group">
								<label for = "addMember_address" class="modalBlack">주소</label>
								<input type="text" id = "addMember_address"  class="form-control" name = "addMember_address" placeholder="Enter address" required>
							</div>
							<div class = "form-group">
								<label for = "addMember_phone_number" class="modalBlack">전화번호</label>
								<input type="text" id = "addMember_phone_number" class="form-control" name = "addMember_phone_number" placeholder="Enter birthday" required>
							</div>
							<div class = "form-group">
								<label class ="modalBlack">선호장르</label>
								<input type="checkbox" id="addMember_preference_balad" name="addMember_preference" value = "balad" checked>
								<label for="addMember_preference_balad">발라드</label>
								<input type="checkbox" id="addMember_preference_rock" name="addMember_preference" value = "rock">
								<label for="addMember_preference_rock">락/메탈</label>
								<input type="checkbox" id="addMember_preference_rap" name="addMember_preference" value ="rap">
								<label for="addMember_preference_rap">랩/힙합</label>
								<input type="checkbox" id="addMember_preference_jazz" name="addMember_preference" value = "jazz">
								<label for="addMember_preference_jazz">재즈/소울</label>
								<input type="checkbox" id="addMember_preference_classic" name="addMember_preference" value = "classic">
								<label for="addMember_preference_classic">클래식</label>
								<input type="checkbox" id="addMember_preference_pop" name="addMember_preference" value="pop">
								<label for="addMember_preference_pop">팝</label>
								<input type="checkbox" id="addMember_preference_edm" name="addMember_preference" value="EDM">
								<label for="addMember_preference_edm">EDM</label>
							</div>
							
							<div class="u$(small)">
								<div><label for="male" class = "modalBlack">성별</label></div>
								<input type="radio" id = "male" name="addMember_gender" value="1" checked>
								<label for="male" class ="modalBlack">남</label>
								<input type="radio" id = "female" name="addMember_gender" value="2">
								<label for="female" class ="modalBlack">여</label>
							</div>
						</fieldset>
						</form>
        			</div>
    	    	</div>
        
        <!-- Modal footer -->
       			 <div class="modal-footer">
        			<button type="submit" class="btn btn-primary">회원가입</button>
         			 <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
     			 </div>
        
    		  </div>
    		</div>
  		</div>
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         <script>
      
      	$(document).ready(function(){
      		var idCheck = false;
      		
      		$('#login_button').click(function() {
      			$('#login_form').submit();
      		})
      		
      		// ID keyup 이벤트(중복 확인)
			$("#addMember_id").on('keyup', function() {
				$("addMember_id_message").empty();
				// \w => [A-Za-z0-9_]
				var pattern = /^\w+@\w*[.]\w{3}$/;
				var id =$("#addMember_id").val();
				
				if(!pattern.test(id)) {
					$("#addMember_id_message").css('color', 'red')
										.html("이메일 형식으로 맞춰주세요.");
					idCheck = false;
					return;
				}
				$.ajax({
					url : "idcheck.net",
					data : {"id": id},
					success : function(rdata) {
						if(rdata == -1) {
							$("#addMember_id_message").css('color', 'green').html(
									"사용 가능한 아이디 입니다.");
							idCheck=true;
						} else {
							$("#addMember_id_message").css('color', 'blue').html(
									 "사용중인 아이디 입니다.");
							idCheck=false;
						}
					}//if
				});//ajax
			});// ID keyup 이벤트 종료
			$('#login_form').submit(function() {
				loginProcess.net
			})
			// 회원가입 유효성 검사
			$('#addMember_form').submit(function() {
				if($('#addMember_id').val()=="") {
					alert("ID를 입력하세요");
					$('#addMember_id').focus();
					return false;
				}
				if(idCheck == false) {
					alert("ID 중복되었습니다.");
					return false;
				}
				
				if($('#addMember_pass').val()=="") {
					alert("비밀번호를 입력하세요");
					$('#addMember_pass').focus();
					return false;
				}
				if($('#addMember_name').val()=="") {
					alert("이름을 입력하세요");
					$('#addMember_name').focus();
					return false;
				}
				if($('#addMember_age').val() =="") {
					alert("나이를 입력하세요.");
					$('#addMember_age').focus();
					return false;
				}
				if(!$.isNumeric($("input[name='age']").val())) {
					alert("나이는 숫자로 입력하세요");
					$("input[name='age']").val('');
					$("input[name='age']").focus();
					return false;
				}
				
				if($('input[type=radio]:checked').length==0) {
					alert("성별을 선택하세요");
					return false;
				}
			
			}); //회원가입 유효성 검사 종료
			
			
			// 검색 버튼 이벤트
			$('#search_Text').hide();
			
			$('#search_Button').click(function() {
				$('#search_Text').toggle();
				$('#search_Button').hide();
				$('#search_Text').focus();
			});
			$('#search_Text').blur(function() {
				$('#search_Button').show();
				$('#search_Text').val('');
				$('#search_Text').hide();
			});
			// 검색 이벤트 종료
			
			//슬릭 이벤트
		     $.noConflict();
		
		     $('.slider').slick({
		    	  centerMode: true,
		    	  slidesToShow: 7,
		    	  infinite :true,
		    	  slidesToscroll : 6,
		    	  responsive: [
		    	    {
		    	      breakpoint: 980,
		    	      settings: {
		    	        arrows: false,
		    	        centerMode: true,
		    	        infinite :true,
		    	        slidesToShow: 5,
		    	        slidesToscroll : 4
		    	      }
		    	    },
		    	    {
		    	      breakpoint: 620,
		    	      settings: {
		    	        arrows: false,
		    	        centerMode: true,
		    	        infinite :true,
		    	        slidesToShow: 3,
		    	        slidesToscroll : 2
		    	      }
		    	    }
		    	  ]
		    });  //슬릭 이벤트 종료
		     
      	});
         </script>
   </body>
</html>