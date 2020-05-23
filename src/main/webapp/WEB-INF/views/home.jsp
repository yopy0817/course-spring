<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>인덱스를 만들어 보자</title>

    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <style type="text/css">
        .carousel-control.right,
        .carousel-control.left {
            background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, 0) 100%)
        }
        section {
        	margin-top: 50px;
        }
        
    </style>
    
</head>

<body>
    
    <%@ include file="include/header.jsp" %>
    <!--본문 -->
    <section>
        <!--슬라이드 시작-->
        <div class="container-fluid">
            <div class="row">
                <!--슬라이드 리스트 클래스 선언 패딩 전부 0으로 조정-->
                <!--개발자도구 그라디언 확인후 직접들어가서 수정한다-->
                <!--a 태그로 이미지를 감싸줄 수 있다-->
                <div class="col-xs-12 slide-list">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <a href="###">
                                <img src="resources/img/slide1.jpg" alt="슬라이드1">
                                </a>
                            </div>
                            <div class="item">
                                <a href="##">
                                <img src="resources/img/slide2.jpg" alt="슬라이드2">
                                </a>
                            </div>
                            <div class="item">
                                <a href="##">
                                <img src="resources/img/slide3.jpg" alt="슬라이드3">
                                </a>
                            </div>
                        </div>

                        <!-- 좌우 위치 버튼 없애고 싶으면 지울수도 있다 -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!--슬라이드 끝-->
        
    </section>

    
    <!--본문 -->
    <section>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h2>강의<small>강의 준비중입니다</small></h2>
                </div>
            </div>
            <!--새로운 그리드 잡기-->
            <div class="row">
                <!--xs사이즈에서는 12칸을 다잡는다. (1개씩보임)-->
                <ul class="col-xs-12 prod-list">
                    <!--sm사이즈에서는 6칸을 잡는다 (2개씩보임)-->
                    <li class="col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img/box1.jpg" alt="자바">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <li class="col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img/box2.jpg" alt="jsp">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <!--md사이즈에서는 3칸씩 잡는다. sm사이즈에서는 6칸씩 잡는다-->
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <!--이번 에는 md사이즈에서 6칸 (2개씩). sm사이즈에서 12칸 (1개씩)-->
                    <li class="col-md-6 col-sm-12">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <!--md사이즈에서 (4개씩), sm사이즈에서 (2개씩) -->
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                    <li class="col-md-3 col-sm-6">
                        <a href="##" class="prod-link">
                            <img src="resources/img2/img_ready.png">
                            <span class="arrow"><i class="glyphicon glyphicon-menu-right"></i></span>
                            <span class="arrow hover">상세보기<i class="glyphicon glyphicon-menu-right"></i></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

	<%@ include file="include/footer.jsp" %>
	
</body>
</html>