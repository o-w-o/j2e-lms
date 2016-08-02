<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
    //将项目的根取出来，页面中不再使用相对路径
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
        + request.getServerName() + ":"
        + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">

    <head>
        <meta charset="UTF-8">
        <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
        <title>教务系统</title>

        <!-- css -->
        <link href="<%=path%>/css/base.min.css" rel="stylesheet" />
        <link href="<%=path%>/css/project.min.css" rel="stylesheet" />
        <link href="<%=path%>/css/lms.css" rel="stylesheet" />

        <script src="<%=path%>/js/jquery.min.js"></script>
        <script src="<%=path%>/js/vue.js"></script>
        <script src="<%=path%>/js/bootstrap-treeview.js"></script>
        <style>
            body{
                height: 100%;
                width: 100%;
                padding: 0;
                margin: 0;
                overflow: hidden;
                background-color: #F5F5F5;
            }
            a {
                color: #8b95cb;
            }
            user-home
            user-settings
            user-content{
                display: block;
            }
            user-home,user-settings{
                height: 100%;
                width: 100%;
                padding: 0;
                margin: 0;
                overflow-y: scroll;
            }
            user-home{
                
            }
            user-settings{
                position: absolute;
                left: -100%;
            }
            .header::after {
                box-shadow: 2px 1px 2px rgba(0,0,0,.5);
                content: "";
            }
            user-content{
                display: block;
                background-color: #F5F5F5;
            }
            .btn-card-darken{
                background: #444 !important;
            }
            form .btn-card{
                margin-top: 5em;
            }
            .sample-height{
                min-height: 1500px;
            }
            
            /*like github*/
            .vcard-avatar{
                padding: .5em 0;
            }
            .vcard-avatar img {
                border-radius: 0px;
                box-shadow: 0 0 1px rgba(0,0,0,.5);
                margin: 8px 0;
            }
            .vcard-names {
                line-height: 1;
                color: #473E3E;
                font-weight: 500;
                margin-top: 12px !important;
                margin-bottom: 12px !important;
            }
            .vcard-fullname {
                font-size: 25px;
                line-height: 30px;
            }
            .vcard-id {
                font-size: 15px;
                font-style: normal;
                font-weight: 300;
                line-height: 24px;
                color: #666;
            }
            .user-profile-edit{
                color: lightgray;
            }
            .vcard-details {
                list-style: none;
                border-top: 1px solid whitesmoke;
                border-bottom:  1px solid whitesmoke;
                padding: 1em 0;
                margin: 1.2em auto;
            }
            .vcard-detail{
                margin: 0;
                padding: .3em 0;
                color: #473E3E;
                font-size: 14px;
                
            }
            .vcard-detail .icon{
                color: #8b95cb;
                margin-right: .8em;
            }
            .vcard-stats {
                text-align: center;
            }
            .vcard-stat-heading{
                margin-top: 1em;
                font-size: 20px;
                line-height: 30px;
            }
            .vcard-stat {
                float: left;
                width: 29%;
                margin: 2%;
                padding: 10px;
                font-size: 11px;
                text-transform: capitalize;
                position: relative;
                background: whitesmoke;
                height: 60px;
                border-radius: 1px;
            }
            .vcard-stat-count {
                font-size: 28px;
                font-weight: 600;
                line-height: 1;
            }
            .vcard-stat > .text-muted {
                color: #767676 !important;
                float: left;
                position: absolute;
                bottom: .5em;
                width: 100%;
                left: 0;
            }
            .header-logo, .header-text {
                line-height: 56px;
            }
            
            .collapsing {
            }
            .fix-tile-style > .tile{
                width: 100%;
                margin: 0;
            }
            .fix-modal-align{
                margin-right: -15px;
            }
            .menu-scroll {
                width: 80%;
                box-shadow: 0 0 10px rgba(0,0,0,.5);
            }
            .menu-content > .menu-logo:first-child {
                margin-top: -15px;
            }
            .nav-drawer.nav-drawer-md .menu-scroll {
                box-shadow: 0 0 2px rgba(0,0,0,.5);
                -webkit-transform: none;
                transform: none;
                width: 265px;
                background-color: rgb(252, 252, 252);
                background-size: cover;

            }
            .nav-drawer.nav-drawer-md {
                background-color: transparent;
                display: block !important;
                overflow: visible;
                width: 265px;
                z-index: 30;
            }
            .nav-drawer.nav-drawer-md.menu-left ~ .content,
            .nav-drawer.nav-drawer-md.menu-left ~ .footer,
            .nav-drawer.nav-drawer-md.menu-left ~ .header {
                margin-left: 265px;
            }
            .menu-top {
                background-color: #3f51b5;
                color: #fff;
                position: relative;
                z-index: 1;    
                margin-bottom: 2em;
                box-shadow: 2px 0px 2px rgba(0,0,0,0.5);
            }
            .menu-logo {
                color: #3F51B5;
            }
            .menu-logo[href]:focus, .menu-logo[href]:hover {
                color: #3F51B5;
            }
            .menu-content > .vcard{
                margin-right: auto;
                margin-left: auto;
                padding-right: 16px;
                padding-left: 16px;
            }
            .menu-backdrop.in {
                opacity: 1;
            }
            .menu-backdrop {
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                background-color: rgba(0,0,0,0.15);
                opacity: 0;
                right: 0;
                bottom: 0;
                -webkit-transition: opacity .3s cubic-bezier(.4,0,.2,1);
                transition: opacity .3s cubic-bezier(.4,0,.2,1);
                z-index: 30;
            }
            .menu-content {
                margin-top: 0.5em;
                padding-bottom: 8px;
            }
            .menu-content .nav a:hover{
                background-color: transparent;
                color: #6C7AC5;
            }
            .menu-content .nav .a:focus, .menu-content .nav .a:hover, .menu-content .nav a:focus, .menu-content .nav a:hover {
                background-color: transparent;
            }
            .menu-collapse-toggle, .menu-collapse-toggle-close {
                background-color: rgba(221, 221, 221, 0.3);
            }
            .fix-menu-nav{
                border-right: 1px solid whitesmoke;
                min-height: 600px;
            }
            .fix-menu-nav>ul{
                background-color: transparent;
            }
            .fix-menu-nav>ul>li{
                padding: 0 0 1em 0;
            }
            .fix-menu-nav>ul>li>a,
            .fix-menu-nav>ul>li>a:hover{
                background-color: whitesmoke !important;
            }
            
            
            .nav-drawer.nav-drawer-md.hide{
                display: none !important;
            }
            .hide-ubox{
                margin-left: 0px !important;
            }
        </style>
    </head>
    <body class="page-brand container-full" id="lms_stu">

        <user-home>
            <!--aside -->
            <aside id="menu-ubox" class="menu menu-left nav-drawer nav-drawer-md" >
                <div class="menu-scroll">
                    <div class="menu-content">
                        <a class="menu-logo" href="#">{{name}}</a>
                        <div class="vcard">

                            <a href="/account" alt="Change your avatar" class="vcard-avatar">
                                <img alt="" class=" img-rounded" src="<%=path%>/images/avatar.jpg" height="230" width="230">
                            </a>

                            <h1 class="vcard-names">
                                <!--<div class="vcard-fullname" >{{name}}</div>-->
                                <div class="vcard-id" >ID: {{sn}} ( {{grade}}级 )</div>
                            </h1>

                            <div class="user-profile-edit">
                                <a data-toggle="tab" href="#tab-personalInfo" onclick="toggleSettingContent()">编辑个人信息 <span class="icon">edit</span></a>

                            </div>

                            <ul class="vcard-details">
                                <li alt="Home location" class="vcard-detail" title="China">
                                    <span class="icon">location_on</span> {{college}}
                                </li>
                                <li alt="Email" class="vcard-detail">
                                    <span class="icon">chat</span> 扣扣: {{qq}}
                                </li>
                                <li alt="Member since" class="vcard-detail ">
                                    <span class="icon">access_time</span>
                                    加入时间: <span title="Jun 9, 2015, 2:36 PM GMT+8" class="join-date">Jun 9, 2015</span>
                                </li>
                            </ul>

                            <!--个人状态 O-->
                            <div class="vcard-stats">
                                <!--<h3 class="vcard-stat-heading">个人状态</h3>-->
                                <a class="vcard-stat" href="#">
                                    <strong class="vcard-stat-count">63</strong>
                                    <span class="text-muted">未完成作业</span>
                                </a>
                                <a class="vcard-stat" data-toggle="tab"  href="#tab-course-selected" onclick="toggleSettingContent()">
                                    <strong class="vcard-stat-count">2</strong>
                                    <span class="text-muted">已选课程</span>
                                </a>
                                <a class="vcard-stat" data-toggle="tab"  href="#tab-course-selectable" onclick="toggleSettingContent()">
                                    <strong class="vcard-stat-count">10</strong>
                                    <span class="text-muted">可选课程</span>
                                </a>
                                <a class="vcard-stat" data-toggle="tab"  href="#tab-course-permit" onclick="toggleSettingContent()">
                                    <strong class="vcard-stat-count">10</strong>
                                    <span class="text-muted">已批准课程</span>
                                </a>
                                <a class="vcard-stat" data-toggle="tab"  href="#tab-course-notpermit" onclick="toggleSettingContent()">
                                    <strong class="vcard-stat-count">10</strong>
                                    <span class="text-muted">未批准课程</span>
                                </a>
                            </div>
                            <!--个人状态 X-->

                        </div>
                    </div>
                </div>
            </aside>

            <!--header-->
            <header class="header header-brand header-waterfall ui-header">
                <ul class="nav nav-list pull-left">
                    <li>
                        <a href="#menu-ubox" id="anchor-ubox" onclick="toggleUbox()">
                            <span class="icon icon-lg">menu</span>
                        </a>
                    </li>
                </ul>
                <span class="header-logo" >教务系统 | 学生页面</span>
                <ul class="nav nav-list pull-right">
                    <li>
                        <a data-toggle="menu" href="#menu-settings" id="anchor-menu" onclick="toggleUserSettings()">
                            <span class="icon icon-lg">settings</span>
                        </a>
                    </li>
                </ul>
            </header>

            <!--content-->
            <user-content class="content" id="ucontent" style="min-height:2000px">
                <div class=" space-block"></div>
                <jsp:include page="../student/IncludeContent.jsp" />
            </user-content>

            <!--footer-->
            <footer class="ui-footer footer">
                <div class="container">
                    <p>河南大学</p>
                </div>
            </footer>
        </user-home>
    
        <user-settings>
            <jsp:include page="../student/IncludeSetting.jsp" />
        </user-settings>
        

    

        <!--ScrollUp 触发器-->
        <div class="fbtn-container" id="scrollUp" hidden>
            <div class="fbtn-inner">
                <a class="fbtn fbtn-brand waves-attach waves-circle">
                    <span class="fbtn-text fbtn-text-left">返回顶部</span>
                    <span class="fbtn-ori icon">keyboard_arrow_up</span>
                </a>
            </div>
        </div>



        <!-- js -->

        <script src="<%=path%>/js/api.json.student.js" type="text/javascript"></script>
        <script src="<%=path%>/js/base.min.js" type="text/javascript"></script>
        <script src="<%=path%>/js/project.min.js" type="text/javascript"></script>        
        <script src="<%=path%>/js/tinymce/tinymce.min.js" type="text/javascript"></script>
        <script src="<%=path%>/js/configure.js" type="text/javascript"></script>
        <!--<script src="http://open.iciba.com/huaci/huaci.js"></script>-->
        
    </body>
</html>