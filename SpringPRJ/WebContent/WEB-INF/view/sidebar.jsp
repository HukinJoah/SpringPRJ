<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/sessionValue.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <a class="navbar-brand pt-0" href="/home.do">
        <img src="/assets/img/brand/blue.png" class="navbar-brand-img" alt="...">
      </a>
      <!-- User -->
      <ul class="nav align-items-center d-md-none">
        <li class="nav-item dropdown">
          <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ni ni-bell-55"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" aria-labelledby="navbar-default_dropdown_1">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">
                <img alt="Image placeholder" src="./assets/img/theme/team-1-800x800.jpg">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Welcome!</h6>
            </div>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-single-02"></i>
              <span>My profile</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-settings-gear-65"></i>
              <span>Settings</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-calendar-grid-58"></i>
              <span>Activity</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-support-16"></i>
              <span>Support</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#!" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Logout</span>
            </a>
          </div>
        </li>
      </ul>
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="./index.html">
                <img src="./assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <!-- Form -->
        <form class="mt-4 mb-3 d-md-none">
          <div class="input-group input-group-rounded input-group-merge">
            <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fa fa-search"></span>
              </div>
            </div>
          </div>
        </form>
        <!-- Navigation -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.single('home')" style="cursor:pointer">
              <i class="ni ni-tv-2 text-primary"></i> 홈
            </a>
          </li>
          <%if("".equals(usrID)){%>
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.single('login')" style="cursor:pointer">
              <i class="ni ni-key-25 text-info"></i> 로그인
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.usr('register')"  style="cursor:pointer">
              <i class="ni ni-circle-08 text-pink"></i> 회원가입
            </a>
          </li>
          <%} else { %>
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.single('logout')" style="cursor:pointer">
              <i class="ni ni-key-25 text-red"></i>로그아웃
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.singleUsrParam('profile','<%=usrID%>')" style="cursor:pointer">
              <i class="ni ni-single-02 text-orange"></i>내 프로필
            </a>
          </li>
          <%} %>
          <%if("1".equals(CmmUtil.nvl(usrAdmin))) {%>
          <li class="nav-item">
            <a class="nav-link" onclick="pageMove.usr('list')" style="cursor:pointer">
              <i class="ni ni-badge text-purple"></i>회원관리
            </a>
          </li>
          <%} %>
          <li class="nav-item">
            <a class="nav-link" href="/usr/Profile.do">
              <i class="ni ni-planet text-green"></i>정보찾기
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/boardList.do">
              <i class="ni ni-bullet-list-67 text-purple"></i> 자유게시판
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./examples/tables.html">
              <i class="ni ni-bulb-61 text-yellow"></i> Q&A게시판
            </a>
          </li>
        </ul>
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
        <!-- Navigation -->
        <ul class="navbar-nav mb-md-3">
        </ul>
         <%@include file='/WEB-INF/view/jsCss.jsp'%>
      </div>
    </div>
  </nav>
 