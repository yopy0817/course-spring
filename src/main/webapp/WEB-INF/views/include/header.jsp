<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<header>
        <div class="container-fluid">
            <div class="row">
                <div class="container">
                    <div class="navbar">
                        <div class="navbar-header">
                            
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="${pageContext.request.contextPath }"><img width="30" src="${pageContext.request.contextPath }/resources/img/logo.svg" alt="Brand"></a>
                        </div>

                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <!-- 스프링 하드코딩 메뉴 -->
                                <%-- 
                                <li class="active"><a href="${pageContext.request.contextPath }">메인</a></li>
                                <li><a href="${pageContext.request.contextPath }/freeBoard/freeList">커뮤니티</a></li>
                                <li><a href="${pageContext.request.contextPath }/snsBoard/snsList">SNS</a></li>
                            	 --%>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <!--드롭다운으로 로그인 추가 -->
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">${sessionScope.user_id == null ? '로그인': '마이페이지' }
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                    	<c:choose>
                                    	<c:when test="${sessionScope.user_id == null }">	
                                        <li><a href="${pageContext.request.contextPath }/user/userJoin"><span class="glyphicon glyphicon-user"></span>Join</a></li>
                                        <li><a href="${pageContext.request.contextPath }/user/userLogin"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                                        <li><a href="${pageContext.request.contextPath }/user/userMypage"><span class="glyphicon glyphicon-user"></span>MyPage</a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li><a href="${pageContext.request.contextPath }/user/userMypage"><span class="glyphicon glyphicon-user"></span>MyPage</a></li>
                                        <li><a href="${pageContext.request.contextPath }/user/userLogout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                                        </c:otherwise>
                                        </c:choose>
                                    </ul>
                                </li>
                            </ul>

                            <form class="navbar-form navbar-right" action="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <div class="input-group-btn">
                                        
                                        <button class="btn btn-primary" type="submit">
                                           	 검색
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <script>
    	//스프링 메뉴처리
    	var ul = document.querySelector("#myNavbar ul");
    	var str = "";
    	fetch("${pageContext.request.contextPath}/menuList").then(function(response) {
    		return response.json();
    	}).then(function(data) {
    		console.log(data)
			
    		for(var i = 0; i < data.length; i++) {
    			str += "<li class='active'><a href='${pageContext.request.contextPath }"+data[i].menu_url +"'>"+ data[i].dep1_name +"</a></li>"
 	   		}
    		ul.innerHTML = str;
    		
   	}) 
    </script>
    
    
    
    
    
    
    
    
