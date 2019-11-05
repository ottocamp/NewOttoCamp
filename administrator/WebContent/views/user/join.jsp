<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>




		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/user/assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="<%= request.getContextPath() %>/resources/user/assets/media/favicons/favicon-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="<%= request.getContextPath() %>/resources/user/assets/media/favicons/apple-touch-icon-180x180.png">
        <!-- END Icons -->

        <!-- Stylesheets -->

        <!-- Fonts and Codebase framework -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,400i,600,700">
        <link rel="stylesheet" id="css-main" href="<%= request.getContextPath() %>/resources/user/assets/css/codebase.min.css?after">

        <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
        <!-- <link rel="stylesheet" id="css-theme" href="assets/css/themes/flat.min.css"> -->
        <!-- END Stylesheets -->
        
        
        
        <style>
        
        .toIn{
        	display: inline;

        }
        .col-12{
        	margin-bottom: 10px;
        }
        
        
        </style>
        
        
        
        
        
    </head>
    <body>

        <!-- Page Container -->
        <!--
            Available classes for #page-container:

        GENERIC

            'enable-cookies'                            Remembers active color theme between pages (when set through color theme helper Template._uiHandleTheme())

        SIDEBAR & SIDE OVERLAY

            'sidebar-r'                                 Right Sidebar and left Side Overlay (default is left Sidebar and right Side Overlay)
            'sidebar-mini'                              Mini hoverable Sidebar (screen width > 991px)
            'sidebar-o'                                 Visible Sidebar by default (screen width > 991px)
            'sidebar-o-xs'                              Visible Sidebar by default (screen width < 992px)
            'sidebar-inverse'                           Dark themed sidebar

            'side-overlay-hover'                        Hoverable Side Overlay (screen width > 991px)
            'side-overlay-o'                            Visible Side Overlay by default

            'enable-page-overlay'                       Enables a visible clickable Page Overlay (closes Side Overlay on click) when Side Overlay opens

            'side-scroll'                               Enables custom scrolling on Sidebar and Side Overlay instead of native scrolling (screen width > 991px)

        HEADER

            ''                                          Static Header if no class is added
            'page-header-fixed'                         Fixed Header

        HEADER STYLE

            ''                                          Classic Header style if no class is added
            'page-header-modern'                        Modern Header style
            'page-header-inverse'                       Dark themed Header (works only with classic Header style)
            'page-header-glass'                         Light themed Header with transparency by default
                                                        (absolute position, perfect for light images underneath - solid light background on scroll if the Header is also set as fixed)
            'page-header-glass page-header-inverse'     Dark themed Header with transparency by default
                                                        (absolute position, perfect for dark images underneath - solid dark background on scroll if the Header is also set as fixed)

        MAIN CONTENT LAYOUT

            ''                                          Full width Main Content if no class is added
            'main-content-boxed'                        Full width Main Content with a specific maximum width (screen width > 1200px)
            'main-content-narrow'                       Full width Main Content with a percentage width (screen width > 1200px)
        -->
        <div id="page-container" class="main-content-boxed">

            <!-- Main Container -->
            <main id="main-container">

                <!-- Page Content -->
                <div class="bg-body-dark bg-pattern" style="background-image: url('assets/media/various/bg-pattern-inverse.png');">
                    <div class="row mx-0 justify-content-center">
                        <div class="hero-static col-lg-6 col-xl-4">
                            <div class="content content-full overflow-hidden">
                                <!-- Header -->
                                <div class="py-30 text-center">
                                    
                                    <img src="<%= request.getContextPath() %>/resources/assets/images/logo_dark.png?after" style="width: 120px; height: 100px">
                                    
                                    <h1 class="h4 font-w700 mt-30 mb-10">회원가입</h1>
                                    <h2 class="h5 font-w400 text-muted mb-0"></h2>
                                </div>
                                <!-- END Header -->

                                <!-- Sign Up Form -->
                                <!-- jQuery Validation functionality is initialized with .js-validation-signup class in js/pages/op_auth_signup.min.js which was auto compiled from _es6/pages/op_auth_signup.js -->
                                <!-- For more examples you can check out https://github.com/jzaefferer/jquery-validation -->
                                <form class="js-validation-signup" action="<%= request.getContextPath() %>/insert.user" method="post" onsubmit="return joinValidate();">
                                    <div class="block block-themed block-rounded block-shadow">
                                        <div class="block-header bg-gd-emerald">
                                            <h3 class="block-title">양식을 작성해 주세요</h3>
                                            <div class="block-options">
                                                <button type="button" class="btn-block-option">
                                                    <i class="si si-wrench"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="block-content">
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">이름</label>
                                                    <input type="text" class="form-control" id="signup-userid" name="uname" placeholder="이름은 한글로만2~6자 입력">
                                                    <p id="namep1" class="toIn">&nbsp;</p><p id="namep2" class="toIn">&nbsp;</p><p id="namep3" class="toIn">&nbsp;</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">아이디</label>
                                                    <input type="text" class="form-control" id="signup-username" name="uid" placeholder="아이디는 영소문자로 시작해서 4~12자 입력(숫자 포함 가능)">
                                                     <h5 id="idp">&nbsp;</h5>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">이메일</label>
                                                    <input type="email" class="form-control" id="signup-email" name="uemail" placeholder="eg: john@example.com">
                                                     <h5 id="emailp"></h5>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">전화번호</label>
                                                    <input type="text" class="form-control" id="signup-phone" name="uphone" placeholder="eg: john@example.com">
                                                     <h5 id="phonep"></h5>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">비밀번호</label>
                                                    <input type="password" class="form-control" id="signup-password" name="upwd" placeholder="********">
                                                     <h5 id="pwdp">&nbsp;</h5>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-bottom: -5px">
                                                <div class="col-12">
                                                    <label for="">비밀번호 확인</label>
                                                    <input type="password" class="form-control" id="signup-password-confirm" name="upwd2" placeholder="********">
                                                     <h5 id="pwd2p">&nbsp;</h5>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-0">
                                                <div class="col-sm-6 push">
                                                    <div class="custom-control custom-checkbox">
<!--                                                         <input type="checkbox" class="custom-control-input" id="signup-terms" name="signup-terms">
                                                        <label class="custom-control-label" for="signup-terms">약관에 동의 합니다</label> -->
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 text-sm-right push">
<!--                                                  <a class="link-effect text-muted mr-10 mb-5 d-inline-block" href="op_auth_signin3.html">
                                                  <i class="fa fa-book text-muted mr-5"></i>약관 읽어보기
                                                </a> -->
                                              
                                                    
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-content bg-body-light">
                                            <div class="form-group text-center">
                                                <a class="link-effect text-muted mr-10 mb-5 d-inline-block" href="#" data-toggle="modal" data-target="#modal-terms">
                                                    <button type="submit" class="btn btn-alt-success">가입하기</button>
                                                        		
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!-- END Sign Up Form -->
                                
                                <!-- 가입 유효성 검사 -->
                                <script>
                        		function joinValidate(){
                        			if(!(/^[가-힣]{2,6}$/.test($("input[name=uname]").val()))){
                        				alert('이름은 한글로만2~6자 입력');
                        				return false;
                        			}

                        			if(!(/^[a-z][a-z\d]{3,11}$/i.test($("input[name=uid]").val()))){
                        				alert('아이디는 영소문자로 시작해서 4~12자 입력(숫자 포함 가능)');
                        				return false;
                        			}

                        			if($("input[name=upwd]").val() != $("input[name=upwd2").val()){
                        				alert('비밀번호 불일치');
                        				return false;
                        			}
                        			

                        			return true;
                        		}
                        		
                        		//인풋태그 밑에 경고 등
                        		
                        		$("input[name=uname]").focusout(function(){
                        			$("#namep1").text("이름은").css("color","green");
                        			
                        			if(!(/^[가-힣]+$/.test($("input[name=uname]").val()))){
                        				$("#namep2").text(" 한글로만 ").css("color","red");
                        			}else{
                        				$("#namep2").text(" 한글로만 ").css("color","green");
                        			}
                        			
                        			if($("input[name=uname]").val().length>=2 && $("input[name=uname]").val().length<=6 ){
                        				$("#namep3").text(" 2~6자 입력 ").css("color","green");
                        			}else{
                        				$("#namep3").text(" 2~6자 입력 ").css("color","red");
                        			}
                        			
                        			
                        			
                        			
                        		});
                        		
                        		
                        		
                        		
                                
                        		
   
                                </script>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->

            </main>
            <!-- END Main Container -->
        </div>
        <!-- END Page Container -->



    </body>
</html>