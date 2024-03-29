<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
</head>
<body> 
<div id="wrap">
<input type="hidden" name="td_no" value="${data.td_no}">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2>시험일정 - [읽기]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col width="10%" />
									<col width="15%" />
									<col width="10%" />
									<col width="15%" />
									<col width="25%" />
									<col width="25%" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="">제목</label></th>
										<td colspan="10">
											${data.td_title }
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">내용</label></th>
										<p><span>번호 :  <strong> ${data.td_no}</strong>  |  작성자 :  <strong>관리자</strong> | 조회수 :  <strong>${data.td_readcount }</strong>  |  작성일 :  <strong><fmt:formatDate value="${data.td_date }" pattern="yyyy-MM-dd HH:mm:ss"/></strong> </span></p>
										<td colspan="10">
											${data.td_content }
											
											<c:if test="${!empty data.td_file_real }">											
												<img src="/question_pool/upload/${data.td_file_real }">											
											</c:if>
											<c:if test="${empty data.td_file_real }">											
												<img src="">											
											</c:if>																							
										</td>									
									</tr>
									<tr>
										<th scope="row"><label for="">첨부파일</label></th>
										<td colspan="10">
												<div class="file">
													<a href="/question_pool/common/download.jsp?path=/upload/&org=${data.td_file_org}&real=${data.td_file_real}" 
                       								target="_blank">${data.td_file_org } </a>
												</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="testdate.do"><strong>목록</strong></a>
								</div>
								<div class="btnRight">
									<a class="btns" style="cursor:pointer;" href="edit.do?td_no=${data.td_no }"><strong>수정</strong></a>
									<a class="btns" style="cursor:pointer;" href=""><strong>답변</strong></a>
								</div>
							</div>
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