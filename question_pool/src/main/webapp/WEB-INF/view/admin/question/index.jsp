<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript" src="/question_pool/smarteditor/js/HuskyEZCreator.js"></script>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
	var oEditors;
	$(function(){
		oEditors = setEditor("content");
	});
	
	function goSave(){
		if($("#title").val() == ''){
			alert('제목을 입력하세요');
			$("title").focus();
			return;
		}
		oEditors.getById['content'].exec("UPDATE_CONTENTS_FIELD",[]);
		$("#frm").submit();
	}
</script>
<style>

</style>
</head>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2>문제등록-[ㅇㅇ대학교 ㅇㅇ년도 ㅇㅇ학기]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<form method="post" name="frm" id="frm" action="insert.do" enctype="multipart/form-data">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col width="10%" />
									<col width="15%" />
									<col width="10%" />
									<col width="10%" />
									<col width="10%" />
									<col width="15%" />
								</colgroup>
								<tbody>
									<c:forEach var="vo" items="${list}">
									<tr>
										<th scope="row"><label for="">문제번호</label></th>
										<td colspan="10">
											${vo.question_realnum }
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">문제</label></th>
										<td colspan="10">
											${vo.question_content }
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">지문</label></th>
										<td colspan="10">
											참조번호&nbsp;<input type="text" id="question_ref" name="question_ref" title="참조번호를 입력해주세요" style="width:100px;" /><br><br>
											<textarea id="passage" name="passage" title="지문을 입력해주세요" rows="10" style="width:100%;"></textarea>	
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">보기</label></th>
										<td colspan="10">
											<input type="RADIO" name="example" value="a">&nbsp;&nbsp;&nbsp;
											(A) <input type="text" name="example_content" style="width:500px;"><br><br>
											<input type="RADIO" name="example" value="b">&nbsp;&nbsp;&nbsp;
											(B) <input type="text" name="example_content" style="width:500px;"><br><br>
											<input type="RADIO" name="example" value="c">&nbsp;&nbsp;&nbsp;
											(C) <input type="text" name="example_content" style="width:500px;"><br><br>
											<input type="RADIO" name="example" value="d">&nbsp;&nbsp;&nbsp;
											(D) <input type="text" name="example_content" style="width:500px;"><br><br>
											<input type="RADIO" name="example" value="e">&nbsp;&nbsp;&nbsp;
											(E) <input type="text" name="example_content" style="width:500px;">
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">해설</label></th>
										<td colspan="10">
											<textarea id="explanation" name="explanation" title="해설을 입력해주세요" rows="10" style="width:100%;"></textarea>	
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">첨부파일</label></th>
										<td colspan="10">
											<input type="file" id="filename_tmp" name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." />	
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="btn">
								<div class="btnRight">
									<input type="submit" class="btns" value="등록" style="width:250px;height:50px;">
								</div>
							</div>
							</form>
							<!--//btn-->
						</div>
						<!-- //bread -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>