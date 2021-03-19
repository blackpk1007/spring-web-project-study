<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Tables</title>

  <!-- Custom fonts for this template -->
  <link href="/resources/vender/fontawesome-free//resources/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/resources/vender/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
</head>

<body id="page-top">

<%@include file="../includes/header.jsp" %>


		 <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <div class="panel-heading">Board List Page
          	<button id="regBtn" type="button" class="btn btn-xs pull-right">Register New Board</button>
          </div>
          <h1 class="h3 mb-2 text-gray-800">Tables</h1>
<!--          <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> -->

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>작성일</th>
                      <th>수정일</th>
                      <th>###</th>
                    </tr>
                  </thead>
                  <c:forEach items="${list}" var="board">
                  	<tr>
                  		<td><c:out value="${board.bno}" /></td>
                  		<td><a class='move' href='<c:out value="${board.bno}"/>'><c:out value="${board.title}"/></a></td>
                  		<td><c:out value="${board.writer}" /></td>
                  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
                  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}" /></td>
                  	</tr>
                  </c:forEach>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Office</th>
                      <th>Age</th>
                      <th>Start date</th>
                      <th>Salary</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  </tbody>
                </table>
                <div class='row'>
                	<div class="col-lg-12">
                	
                	<form id='searchForm' action="/board/list" method='get'>
                		<select name='type'>
                			<option value="" 
                				<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
                			<option value="T"
                				<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
                			<option value="C"
                				<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
                			<option value="W"
                				<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
                			<option value="TC"
                				<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목 or 내용</option>
                			<option value="TW"
                				<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목 or 작성자</option>
                			<option value="TWC"
                				<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목 or 내용 or 작성자</option>
                		</select>
                		<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' />
                		<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
                		<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
                		<button class='btn btn-default'>Search</button>
                	</form>
                	</div>
                </div>
                <!-- start Pagination -->
                <div class='pull-right'>
                	<ul class='pagination'>
                		<c:if test="${pageMaker.prev}">
                			<li class="paginate_button previous"><a href="${pageMaker.startPage - 1}">Previous</a></li>
                		</c:if>
                		
                		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                			<li class="paginate_button ${pageMaker.cri.pageNum == num ? " active":""} "><a href="${num}">${num}</a>
                			</li>
                		</c:forEach>
                		
                		<c:if test="${pageMaker.next}">
                			<li class="paginate_button"><a href="${pageMaker.endPage + 1}">Next</a></li>
                		</c:if>
                	</ul>
                </div>
                <form id='actionForm' action="/board/list" method='get'>
                	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
                	<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
                	<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
                	<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
                </form>
                <!-- end Pagination -->
                   <!-- Modal 추가 -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                	<div class="modal-dialog">
                		<div class="modal-content">
                			<div class="modal-header">
                				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
                			</div>
                			<div class="modal-body">처리가 완료되었습니다.</div>
                			<div class="modal-footer">
                				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                				<button type="button" class="btn btn-primary">Save changes</button>
                			</div>
                		</div>
                		<!-- Modal content -->
                	</div>
                	<!-- Modal dialog -->  
              </div>
              <!-- Modal -->
            </div>
          </div>
  
        </div>
        <!-- /.container-fluid -->


      </div>
      <!-- End of Main Content -->
<%@include file="../includes/footer.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
	
		var result = '<c:out value="${result}"/>';
	
		checkModal(result);
	
		history.replaceState({},null, null); //뒤로가기했을시 모달창이 안뜨게하는것
	
		function checkModal(result){
		
			if(result === '' || history.state){  //history.state 뒤로가기했을시 모달창이 안뜨게하는것 
				return;
			}
		
			if(parseInt(result) > 0){
			
				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			}
		
			$("#myModal").modal("show");
		}
	
	$("#regBtn").on("click", function(){
		
		self.location = "/board/register";
	});
	
	var actionForm = $("#actionForm");
	
	$(".paginate_button a").on("click", function(e){
		
		e.preventDefault();
		
		console.log('click');
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
	$(".move").on("click", function(e){
		
		e.preventDefault();
		actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
		actionForm.attr("action", "/board/get");
		actionForm.submit();
	})
	
	var searchForm = $("#searchForm");
	
	$("#searchForm button").on("click", function(e){
		
		if(!searchForm.find("option:selected").val()){
			alert("검색종류를 선택하세요")
			return false;
		}
		
		if(!searchForm.find("input[name='keyword']").val()){
			alert("키워드를 입력하세요")
			return false;
		}
		
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		
		searchForm.submit();
	});
});
</script>
</body>

</html>
  