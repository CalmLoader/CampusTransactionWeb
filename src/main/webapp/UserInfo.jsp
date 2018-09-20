<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017/12/2
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Trade</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="./layui/css/layui.css" rel="stylesheet">
    <style>
        .max {
            width: 200px;
            height: auto;
        }

        .min {
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button> <a class="navbar-brand" href="#">Transaction</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Kinds<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-default">
                            Submit
                        </button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li id="LoginBar">
                            <a id="loginAndRegister" href="#loginAndRegisterWindow" role="button" class="btn" data-toggle="modal">Login</a>

                            <div class="modal fade" id="loginAndRegisterWindow" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title" >
                                                Login
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <form method="post" action="login.action" id="LoginForm">
                                                <div class="form-group has-success has-feedback">
                                                    <label class="control-label" for="InputUser">User</label>
                                                    <input type="text" class="form-control" id="InputUser" placeholder="User" name="user.username">
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputPassword">Password</label>
                                                    <input type="password" id="InputPassword" class="form-control" name="user.password" placeholder="Password">
                                                </div>
                                                <div class="form-group" align="right">
                                                    <a id="Register" href="#RegisterWindow" role="button" class="btn" data-toggle="modal">Register</a>
                                                    <button type="submit" class="btn btn-primary bottom-right" >Submit</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="RegisterWindow" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title" >
                                                Register
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <form method="post" action="Register.action" id="registerForm">
                                                <div id="registerUser" class="form-group">
                                                    <label class="control-label" for="user.username">User</label>
                                                    <input type="text" onblur="checkUserName()" class="form-control" id="user.username" placeholder="User" name="user.username"  aria-describedby="InputUserSuccess1">
                                                    <span aria-hidden="true"></span>
                                                </div>
                                                <div id="registerPassword" class="form-group " >
                                                    <label for="user.password">Password</label>
                                                    <input type="password" id="user.password" onblur="CheckPassword()"  class="form-control" name="user.password" placeholder="Password" aria-describedby="InputPasswordSuccess1">
                                                    <span  aria-hidden="true"></span>
                                                </div>
                                                <div id="registerConfirmPassword"class="form-group" >
                                                    <label for="ConfirmPassword1">ConfirmPassword</label>
                                                    <input type="password" onblur="ConfirmPassword()" id="ConfirmPassword1" class="form-control" name="password" placeholder="Password" >
                                                    <span aria-hidden="true"></span>
                                                </div>
                                                <div id="registerEmail" class="form-group" >
                                                    <label for="user.email">E-mail</label>
                                                    <input type="text" id="user.email" onblur="CheckEmail(this)" class="form-control" name="user.email" placeholder="Email">
                                                    <span aria-hidden="true"></span>
                                                </div>
                                                <div class="form-group" align="right">
                                                    <button id="registerButton" type="submit" class="btn btn-primary bottom-right" disabled="disabled">Submit</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<strong class="caret"></strong></a>
                            <ul class="dropdown-menu nav nav-pills nav navbar-nav">

                                <li>
                                    <a href="/Home.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="#">Collections<span class="badge pull-right">16</span></a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">MyTransactions <span class="badge pull-right">5</span></a>
                                </li>
                                <li>
                                    <a href="#">SomeNotices<span class="badge pull-right">42</span></a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>

    <div class="modal fade" id="ExitConfirmWindow" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        Logout
                    </h4>
                </div>
                <div class="modal-body">
                    Do you want to logout?
                </div>
                <div class="modal-footer">
                    <a href="/Home.jsp" role="button" class="btn btn-default" onclick="LoginOut()">Yes</a>
                    <button type="button" data-dismiss="modal" class="btn btn-primary">
                        No
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <h2>
            Hottest
        </h2>
        <p>
            Book:《One Hundred Years of Solitude》
        </p>
        <a class="btn btn-primary btn-large" href="#">Learn detail>></a>
    </div>
    <div class="row">
        <div class="col-md-12">

            <div class="tabbable" id="tabArea">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#Collections" onclick="fresh()" data-toggle="tab">Collections</a>
                    </li>
                    <li>
                        <a href="#Transcations" data-toggle="tab">Transcations</a>
                    </li>
                    <li>
                        <a href="#Notices"  data-toggle="tab">Notices</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="Collections">
                        <div class="page-header">
                            <h1>
                                <small>There are your collections</small>
                            </h1>
                        </div>
                        <div class="panel-group" id="myCollections">

                        </div>
                        <%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">--%>
                            <%--<legend>常规时间线</legend>--%>
                        <%--</fieldset>--%>
                        <%--<ul class="layui-timeline">--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<h3 class="layui-timeline-title">8月18日</h3>--%>
                                    <%--<p>--%>
                                        <%--layui 2.0 的一切准备工作似乎都已到位。发布之弦，一触即发。--%>
                                        <%--<br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。--%>
                                        <%--<br>无论它能走多远，抑或如何支撑？至少我曾倾注全心，无怨无悔 <i class="layui-icon"></i>--%>
                                    <%--</p>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<h3 class="layui-timeline-title">8月16日</h3>--%>
                                    <%--<p>杜甫的思想核心是儒家的仁政思想，他有<em>“致君尧舜上，再使风俗淳”</em>的宏伟抱负。个人最爱的名篇有：</p>--%>
                                    <%--<ul>--%>
                                        <%--<li>《登高》</li>--%>
                                        <%--<li>《茅屋为秋风所破歌》</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<h3 class="layui-timeline-title">8月15日</h3>--%>
                                    <%--<p>--%>
                                        <%--中国人民抗日战争胜利日--%>
                                        <%--<br>常常在想，尽管对这个国家有这样那样的抱怨，但我们的确生在了最好的时代--%>
                                        <%--<br>铭记、感恩--%>
                                        <%--<br>所有为中华民族浴血奋战的英雄将士--%>
                                        <%--<br>永垂不朽--%>
                                    <%--</p>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">过去</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                        <%--</ul>--%>

                        <%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">--%>
                            <%--<legend>简约时间线：大事记</legend>--%>
                        <%--</fieldset>--%>
                        <%--<ul class="layui-timeline">--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">2018年，layui 5.0 发布。并发展成为中国最受欢迎的前端UI框架（期望）</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">2017年，layui 里程碑版本 2.0 发布</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">2016年，layui 首个版本发布</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">2015年，layui 孵化</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li class="layui-timeline-item">--%>
                                <%--<i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>--%>
                                <%--<div class="layui-timeline-content layui-text">--%>
                                    <%--<div class="layui-timeline-title">更久前，轮子时代。维护几个独立组件：layer等</div>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    </div>
                    <div class="tab-pane" id="Transcations">
                        <div class="page-header">
                            <h1>
                                <small>There are your transcations</small>
                            </h1>
                        </div>
                        <div class="panel-group" id="Items">

                        </div>
                    </div>

                    <div class="tab-pane" id="Notices">
                        <div class="page-header">
                            <h1>
                                <small>There are your notices</small>
                            </h1>
                        </div>
                        <div class="panel-group" id="myNotices">

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
<script src="./layui/layui.js"></script>
<script>
    window.onload=function () {
        $.getJSON("LoadMyItems.action",function (data) {
            $.each(data,function (i, item) {
                    $('#Items').append("<div class=\"panel panel-default\">    \n" +
                        "\n" +
                        "                                    <div class=\"panel-heading\">           \n" +
                        "                                        <div class=\"row\">\n" +
                        "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                        "                                                <a href=\"#panel-element-"+i+500+"\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">"+item.title+"</a>\n" +
                        "                                            </div>\n" +
                        "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                        "                                                <a name=\""+item.id+"\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">"+item.hot+"</a>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                    <div id=\"panel-element-"+i+500+"\" class=\"panel-collapse collapse\">\n" +
                        "                                        <div class=\"panel-body\">\n" +
                        "                                            "+item.detail+"\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                </div>");
            });
        });

        $.getJSON("LoadMyCollections.action",function (data) {
            $.each(data,function (i, item) {
                $('#myCollections').append("<div class=\"panel panel-default\">    \n" +
                    "\n" +
                    "                                    <div class=\"panel-heading\">           \n" +
                    "                                        <div class=\"row\">\n" +
                    "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                    "                                                <a href=\"#panel-element-"+i+"\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">"+item.title+"</a>\n" +
                    "                                            </div>\n" +
                    "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                    "                                                <a onclick=\"addHot(this)\" name=\""+item.id+"\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">"+item.hot+"</a>\n" +
                    "                                            </div>\n" +
                    "                                        </div>\n" +
                    "                                    </div>\n" +
                    "                                    <div id=\"panel-element-"+i+"\" class=\"panel-collapse collapse\">\n" +
                    "                                        <div class=\"panel-body\">\n" +
                    "                                            "+"<div class=\"media\">\n" +
                    "                                            <img alt=\"Bootstrap Media Preview\" src=\""+item.pic+"\" onclick=\"ChangPic(this)\" class=\"media-object pull-left max\">\n" +
                    "                                            <div class=\"media-body\">\n" +
                    "                                                <h4 class=\"media-heading\">"+item.title+"" +
                    "                                                </h4>"+item.detail+"" +
                    "                                                <div class=\"media\">\n" +
                    "                                                        <div class=\"media-body\">\n" +
                    "                                                            <h3 class=\"media-heading\">\n" +
                    "                                                                Contact\n" +
                    "                                                            </h3><a href=\"#\" class=\"pull-left\"> "+item.contact+"</a>\n" +
                    "                                                        </div>\n" +
                    "                                                </div>\n" +
                    "                                            </div>\n" +
                    "                                        </div>"+"\n" +
                    "                                        </div>\n" +
                    "                                    </div>\n" +
                    "                                </div>");
            });
        });
        $.get('HasLogin.action',function (msg) {
            var bar=$('#LoginBar');
            if(msg!=="none")
            {
                bar.empty();
                var str=msg+"您好！"
                bar.append("<a class=\"navbar-header btn\" href=\"#ExitConfirmWindow\" role=\"button\" data-toggle=\"modal\">"+str+"</a>");
            }
            else
            {
                console.log("no");
            }
        });
    }

    function LoginOut(){
        $.post('loginout.action');
    }

    var active = {
        confirmTrans: function(){
            //配置一个透明的询问框
            layer.msg('请先登录<!--<br>合理搭配，展示不一样的风格-->', {
                time: 20000,   //20s后自动关闭
                btn: ['明白了', '哦'],
                success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: '#ExitConfirmWindow'
                    });
                }
            });
        }
        ,notice: function(){
            //示范一个公告层
            layer.open({
                type: 1
                ,title: false //不显示标题栏
                ,closeBtn: false
                ,area: '300px;'
                ,shade: 0.8
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,btn: ['火速围观', '残忍拒绝']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                ,success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: 'http://www.layui.com/'
                        ,target: '_blank'
                    });
                }
            });
        }
        ,offset: function(othis){
            var type = othis.data('type')
                ,text = othis.text();

            layer.open({
                type: 1
                ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                ,id: 'layerDemo'+type //防止重复弹出
                ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                ,btn: '关闭全部'
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        }
    };

    $('#attempt').on('click', function(){
        var othis = $(this), method = othis.data('method');
        $.get('HasLogin.action',function (msg) {
            if(msg==="none")
            {
                active[method] ? active[method].call(this, othis) : '';
            }
        });
    });
</script>
</body>
</html>