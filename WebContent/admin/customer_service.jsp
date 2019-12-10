<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function() {
		var sel = "${search_field}";
		$("#viewcount").val(sel).prop("selected", true);
	})
</script>
<script>
//엔터키를 치면 발신되게함
	$(document).ready(function() {
		$("#textMessage").keydown(function(key) {
			if (key.keyCode == 13) {
				sendMessage();
				return false;

			}
		});
	});
	//채팅내용이 많아지면 스크롤바가 자동으로 내려감
	window.setInterval(function() {
        var elem = document.getElementById('messageTextArea');
        elem.scrollTop = elem.scrollHeight;
    }, 0);
</script>
<style>
#messageTextArea {background:#ebecf0; color:black;
font-family :'나눔고딕', 'Malgun Gothic', sans-serif;
border-radius: 7px;
}
#chat { position:fixed; right:0 ; bottom:3em ; z-index:999 !important;
width:300px;
    height:400px;
}
.chat{margin-left:85% !important;}
#chatbar {background:#2565ae; color:white;
border-radius: 7px;
font-family :'나눔고딕', 'Malgun Gothic', sans-serif; text-align:center;
}
#textMessage {background:white; color:black;
border-radius: 7px;
font-family :'나눔고딕', 'Malgun Gothic', sans-serif; }
#sendbox {float:right;}
#send{background:#2565ae; color:white;  }
#send:hover {background:#4fc3f7}
#dis{background:red; color:white; }
</style>
<c:if test="${listcount > 0 }">
	<div class="center-block">
		<form class="search_member size" action="adminPage.net">
			<div class="input-group select-wrapper">

				<select id="viewcount" name="search_field">
					<option value="0">ID</option>
					<option value="1" selected>이름</option>
					<option value="2">주소</option>
					<option value="3">성별</option>
				</select> <input id="search_word" name="search_word" type="text"
					class="form-control" placeholder="Search" value="${search_word}">
				<button id="search_btn" class="btn btn-primary small" type="submit">검색</button>

			</div>
		</form>
	</div>

	<%-- 회원이 있는 경우 --%>
	<div class="container container1">

		<table class="table t1">
			<caption>회원 목록</caption>
			<thead>
				<tr>
					<th colspan="2"><select class="form-control" id="viewcount3">
							<option value="1">1</option>
							<option value="3">3</option>
							<option value="5">5</option>
							<option value="7">7</option>
							<option value="10" selected>10</option>
					</select></th>
					<th colspan="1"></th>
					<th colspan="1"><font size=2>${listcount }명</font></th>
				</tr>
				<tr>
					<th width="20%">번호</th>
					<th width="35%">아이디</th>
					<th></th>
					<th width="45%">상담선택</th>
				</tr>
			</thead>
			<tbody class="tb1">
				<c:set var="num" value="${listcount-(page-1)*10}" />
				<%-- listAction에 limit 변경시 곱하는 값도 같이 변경해야함 --%>
				<c:forEach var="c" items="${ServiceList}">
					<tr>
						<td><c:out value="${num }" />
							<%-- num 출력 --%> <c:set var="num" value="${num-1}" /> <%-- num = num-1 의미함 --%>
						</td>
						<td><c:if test="${c.id != 'admin@mfe.com'}">
								<div>${c.id}</div>
								
							</c:if></td>
						<td></td>
						<td>
							<button id="chat_btn" class="btn btn-primary small" value="${c.id}" onclick="">상담하기</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="center-block block1">
		<div class="row">
			<div class="col huWidth">
				<ul class="pagination pa1 huWidth">
					<c:if test="${page <= 1 }">
						<li class="page-item"><a class="page-link" href="#">이전&nbsp;</a>
						</li>
					</c:if>
					<c:if test="${page > 1 }">
						<li class="page-item"><a
							href="adminPage.net?page=${page-1}&search_field=${search_field}&search_word=${search_word}"
							class="page-link">이전</a>&nbsp;</li>
					</c:if>

					<c:forEach var="a" begin="${startpage }" end="${endpage }">
						<c:if test="${a == page }">
							<li class="page-item"><a class="page-link current"
								href="adminPage.net?page=${a }&search_field=${search_field}&search_word=${search_word}">${a }</a>
							</li>
						</c:if>
						<c:if test="${a != page }">
							<li class="page-item"><a
								href="adminPage.net?page=${a }&search_field=${search_field}&search_word=${search_word}"
								class="page-link">${a }</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${page >= maxpage }">
						<li class="page-item"><a class="page-link" href="#">&nbsp;다음</a>
						</li>
					</c:if>
					<c:if test="${page < maxpage }">
						<li class="page-item"><a
							href="adminPage.net?page=${page+1}&search_field=${search_field}&search_word=${search_word}"
							class="page-link">&nbsp;다음</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<div id="chat">
		<div id="_chatbox" style="visibility: visibility">
			<!-- 결과 메시지 보여주는 창 -->
			<div id="chatbar">고객 상담</div>
			<textarea id="messageTextArea" class="idc" rows="10" cols="50"></textarea>						
			<div><input id="textMessage" type="text" ></div>			
			<div id="sendbox">
				<input onclick="sendMessage()" id="send" value="보내기" type="button">			
				</div>

		</div>

	</div>
</c:if>
<script>
	webSocket = new WebSocket("ws://localhost:8088/te/websocket?" + '${id}');
	messageTextArea = document.getElementById("messageTextArea");

	//웹 소켓이 연결되었을 때 호출되는 이벤트
	webSocket.onopen = function(message) {
		messageTextArea.value += "상담이 시작됩니다..\n";
	};
	//웹 소켓이 닫혔을 때 호출되는 이벤트
	webSocket.onclose = function(message) {
		messageTextArea.value += "상담이 종료되었습니다..\n";
	};
	//웹 소켓이 에러가 났을 때 호출되는 이벤트
	webSocket.onerror = function(message) {
		messageTextArea.value += "error...\n";
	};
	//웹 소켓에서 메시지가 날라왔을 때 호출되는 이벤트
	webSocket.onmessage = function(message) {

		messageTextArea.value += message.data + "\n";
	};

	function sendMessage() {
		
		var message = document.getElementById("textMessage");
		id = "${id}";
		//messageTextArea.value += id+ "(님) : " +  message.value + "\n"; 

		//웹소켓으로 textMessage객체의 값을 보낸다.
	    
		webSocket.send(id + "(님) : " + message.value);

		//textMessage객체의 값 초기화
		message.value = "";

	}
	//웹소켓 종료
	function disconnect() {
		webSocket.close();
	}
</script>

<!--  회원이 없는 경우 -->
<c:if test="${listcount == 0 }">
	<font size=5>등록된 회원이 없습니다.</font>
</c:if>
<br>


