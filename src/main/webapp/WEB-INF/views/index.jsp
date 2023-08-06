<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./resources/css/main.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/f04d79a672.js" crossorigin ="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@1,500&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrap {
    width: 100%;
    font-size: 1.4em;
    background-color: red;
}

.content.active {
	display: flex;
	flex-direction: row;
	width: 90%;
	transition-duration: 800ms;
}


   
</style>
</head>
<body>
	<%@ include file="common/header.jsp" %>
    <div class="wrap">    
	    <%@ include file="common/sidebar.jsp" %>
	    <div class="content" style="font-size: 200px; background-image: url('./resources/images/code.jpg'); width: 97.3%;" ></div>
	    	<div class="content content-explain" style="font-size: 100%;">
	    
	    
		   <!--  <table>
		    	<tr>
		    		<td style="font-size: 9px;"> 책 제목 <input type="text" value="" name="title">
		    			 생성user-id <input type="text" value="" name="crea_id">
		    			<button id="add_btn">항목 추가</button>
		    		</td>
		    	</tr>
		    </table> -->
	    	<%-- <table>
	    	<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.IDX}</td>
		    		<td>${list.TITLE}</td>
		    		<td>${list.HIT_CNT}</td>
		    		<td>${list.CREA_DATE}</td>
		    		<td>${list.CREA_ID}</td>
		    		<td><a href="deleteList.do?idx=${list.IDX}"><button>삭제</button></a></td>
		    		<td><a href="updateList.do?idx=${list.IDX}"><button>수정</button></a></td>
				</tr>
	    	</c:forEach>
	    	</table> 서버 개발 기록 정리.--%>
	    	<div style="display:table; width:500px; margin-top: 45px; margin-left: 60px;">
		        <div style="display:table-row">
		            <div class ="A" style="display:table-cell">No.</div>
		            <div class ="B" style="display:table-cell">제목</div>
		            <div class ="C" style="display:table-cell">개수</div>
		            <div class ="D" style="display:table-cell">주문일자</div>
		            <div class ="E" style="display:table-cell">주문ID</div>
		            <div class ="F" style="display:table-cell">D</div>
		           
		        </div>
		        <c:forEach items="${list}" var="list">
					<div style="display:table-row">
						<div class ="A" style="display:table-cell">${list.IDX}</div>
						<div class ="B" style="display:table-cell">${list.TITLE}</div>
						<div class ="C" style="display:table-cell">${list.HIT_CNT}</div>
						<div class ="D" style="display:table-cell">${list.CREA_DATE}</div>
						<div class ="E" style="display:table-cell">${list.CREA_ID}</div>
						<div class ="F" style="display:table-cell">
							<a href="deleteList.do?idx=${list.IDX}"><button>삭제</button></a>
							<a href="updateList.do?idx=${list.IDX}"><button>수정</button></a>
						</div>
					</div>
		    	</c:forEach>		        
	 		</div>
    	</div>
    </div>
</body>

<script>
	$('#add_btn').click(()=>{
		
		let title = $("input[name='title']").val();
		let crea_id = $("input[name='crea_id']").val();
			
		location.href = "createListOne.do?title=" + title + "&crea_id=" + crea_id;
	})
</script>

</html>

