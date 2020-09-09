<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
        <c:import url="/WEB-INF/views/include/head.jsp"/>
	</head>
	<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
		<div id="wrap">
            <c:import url="/WEB-INF/views/include/header.jsp"/>
			<!-- 컨텐츠 -->
			<div id="content">
			    <!--서브 비주얼/타이틀-->
                <div class="visual-sub-vagas animal-vagas">
                    <div class="vsv-copy sub-title">
                       <div>
                            <ul class="navi">
                                <li><a href="#none">홈</a></li>
                                <li class="xi-angle-right"><a href="#none">공지사항</a></li>
                            </ul>
                        </div>
                        <h2><span>공지사항</span></h2>
                        <h3>'지금 달려갈 개'의 공지사항을 꼭 확인해주세요.</h3>
                    </div>
                </div>
			    <!--서브 비주얼/타이틀 끝-->
                
                <div class="subContent_wrap">
                    <!-- 좌측메뉴 -->
                    <c:import url="/WEB-INF/views/include/leftMenu.jsp"/>
                    <!-- 좌측메뉴 끝 -->

                    <div class="subContent">
                        <!--상세-->
                        <form name="formname" method="post" enctype="" action="" class="form-inline">
                        <div class="write-area">
                        
                            <h2>1번글 공지사항 수정</h2>
                            <p>수정사항을 입력해주세요.</p>
                            
                            <table>
                                <colgroup>
                                    <col width="20%">
                                    <col width="80%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <td>알림</td>
                                        <td><label><input type="radio"" name="" title=""/>필수여부</label></td>
                                    </tr>
                                    <tr>
                                        <td>제목</td>
                                        <td><input type="text" name="" title="" class="form-control w100p" placeholder="제목 입력" required/></td>
                                    </tr>
                      			    <tr>
                    			        <td>작성자</td>
                          			    <td><input type="text" name="" title="" class="form-control w100p" readonly value="관리자"></td>
                    			    </tr>                                    
                                    <tr>
                                        <td>내용</td>
                                        <td><textarea name="" rows="" cols="" class="form-control" style="resize: none; width:100%; min-height:300px; max-height:300px;"></textarea></td>
                                    </tr>
                                    <tr>
                          			    <td>첨부파일</td>
                       			        <td>
                          			    	<input type="file" name="" title="" class="mb5"><input type="checkbox" name="deleteFlag" id="" value=""> 파일삭제
                           			    	<input type="file" name="" title="" class="mb5"><input type="checkbox" name="deleteFlag" id="" value=""> 파일삭제
                               			    <input type="file" name="" title="" class="mb5"><input type="checkbox" name="deleteFlag" id="" value=""> 파일삭제
                          			    </td>
                        			</tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="write-btn">
                            <input type="button" class="btn btn-list" onclick="location.href='nlist.do'" value="목록으로">
                            <input type="reset" class="btn btn-cancel" value="취소하기">
                            <input type="submit" class="btn btn-success" value="작성하기">
                        </div>
                        </form>
                        <!-- 글쓰기 끝 -->
                    </div>
                </div>
            </div>
            <!-- 컨텐츠 끝 -->

            <c:import url="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</body>
</html>