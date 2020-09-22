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
                                <li class="xi-angle-right"><a href="#none">오늘의 이슈</a></li>
                            </ul>
                        </div>
                        <h2><span>오늘의 이슈</span></h2>
                        <h3>오늘의 이슈를 통해<br/>새로운 정보를 빠르게 찾아보세요.</h3>
                    </div>
                </div>
			    <!--서브 비주얼/타이틀 끝-->
                
                <div class="subContent_wrap">
                    <!-- 좌측메뉴 -->
                    <c:import url="/WEB-INF/views/include/leftMenu.jsp"/>
                    <!-- 좌측메뉴 끝 -->

                    <div class="subContent">
                        <!--서브 정렬-->       
                        <!--서브 정렬 끝-->
                        
                        <div class="sort-area">  
                            <h4>Top ${ page.listCount }개의 오늘의 이슈</h4>
                            <div>
                                <div>
                                <form action="" name="">
                                
                                <c:if test="${ order eq 'order'}">
                                    <a class="active" href="#none" onclick="moveSearch('order')">발행순</a>
                                    <a href="#none" onclick="moveSearch('view')">인기순</a>
                                </c:if>
                                <c:if test="${ order eq 'view'}">
                                    <a href="#none" onclick="moveSearch('order')">발행순</a>
                                    <a class="active" href="#none" onclick="moveSearch('view')">인기순</a>
                                </c:if>
                                
                                </form>
                                
                                <script>
	                                function moveSearch(order){
	                                	location.href="cissuelist.do?order=" + order;
	                                } 
                                </script>
                                
                                </div>
                            </div>
                        </div>
                        
                        <!--리스트-->
                        <div class="issueList">
                            <ul class="grid">
                                <li class="grid-sizer"></li>
                                
                                <!-- 이슈 리스트 출력 -->
                                <c:forEach items="${ requestScope.list }" var="c">
                              		<c:url var="cdeurl" value="cissuedetail.do">
	                                	<c:param name="partnerName" value="${ c.partnerName }" />
	                                	<c:param name="partnerImg" value="${ c.partnerImg }" />
	                                	<c:param name="thumbnail" value="${ c.thumbnail }" />
	                                	<c:param name="link" value="${ c.link }" />
                                	</c:url>
                                <li class="grid-item" onclick="location='${ cdeurl }'">
                                    <div>
                                        <a href="#none" class="xi-share-alt-o"></a>
                                        <img src="${ c.thumbnail }">
                                    </div>
                                    <dl>
                                        <dt><img src="${ c.partnerImg }"></dt>
                                        <dd>
                                            <h3>${ c.title }</h3>
                                            <p>
						                                                        작성자 : ${ c.partnerName }<br/>
						                     <c:if test="${ order eq 'order'}">
							                                                작성일 : ${ c.date }
						                     </c:if>
						                     <c:if test="${ order eq 'view'}">
						                                                         조회수 : <fmt:formatNumber value="${ c.readcount }" groupingUsed="true"/>
						                     </c:if>						                     
                                            </p>
                                        </dd>
                                    </dl>
                                </li>
                                </c:forEach>
                                
                            </ul>
                        </div>
                        <!-- 리스트 끝 -->
                    
                        <!-- 페이징 -->
                        <dl class="list-paging">
                            <dd>
	                            <!-- 이전 그룹 페이지 이동 -->
								<c:if test="${ (page.currentPage - 5) lt page.startPage and (page.currentPage - 5) ge 1 }">
									<c:url var="npurl1" value="cissuelist.do">
										<c:param name="page" value="${ page.startPage - 5 }" />
									</c:url>
									<a href="${ npurl1 }"><i class="xi-angle-left"></i></a>
								</c:if>
                                
								<!-- 현재 페이지가 속한 페이지그룹의 숫자 출력 처리  -->
								<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }" step="1">
									<c:if test="${ p eq page.currentPage }">
										<a href="#none" class="active">${ p }</a>
									</c:if>
									<c:if test="${ p ne page.currentPage }">
										<c:url var="npurl2" value="cissuelist.do">
											<c:param name="page" value="${ p }" />
										</c:url>
										<a href="${ npurl2 }">${ p }</a>
									</c:if>
								</c:forEach>
								
	                            <!-- 다음 그룹 페이지 이동 -->
								<c:if test="${ (page.currentPage + 5) gt page.endPage and page.endPage lt page.maxPage }">
									<c:url var="npurl3" value="cissuelist.do">
										<c:param name="page" value="${ page.startPage + 5 }" />
									</c:url>
									<a href="${ npurl3 }"><i class="xi-angle-right"></i></a>
								</c:if>
							
                            </dd>
                        </dl>
                        <!-- //페이징 -->
                    </div>
                </div>
            </div>
            <!-- 컨텐츠 끝 -->

            <c:import url="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</body>
</html>