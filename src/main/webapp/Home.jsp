<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017/12/2
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
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
                            <ul class="dropdown-menu  nav nav-pills nav navbar-nav">
                                <li>
                                    <a onclick="Kind(this)">eat</a>
                                </li>
                                <li>
                                    <a onclick="Kind(this)">play</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a onclick="Kind(this)">book</a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" id="SearchBox" class="form-control">
                        </div>
                        <button type="submit" onclick="Search()" class="btn btn-default">
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
                                                <div id="registerConfirmPassword" class="form-group" >
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
                            <a id="PersonalCenter"  href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<strong class="caret"></strong></a>
                            <ul class="dropdown-menu nav nav-pills nav navbar-nav">

                                <li>
                                    <a href="/Home.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="/UserInfo.jsp">Collections<span class="badge pull-right">16</span></a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/UserInfo.jsp">MyTransactions <span class="badge pull-right">5</span></a>
                                </li>
                                <li>
                                    <a href="/UserInfo.jsp">SomeNotices<span class="badge pull-right">42</span></a>
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
                    <h4 class="modal-title">
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
    <div align="center">
        <div align="center" class="layui-carousel" id="PicAnim" style="margin-top: 0px;margin-bottom: 15px">
            <div carousel-item="">
                <div style="background-color:transparent;font-size: 20px;" >
                    <img src="./image/First.svg"/>
                </div>
                <div style="background-color: transparent">
                    <img src="./image/Second.svg"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">

            <div class="tabbable" id="tabArea">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#TranscationArea" onclick="fresh()" data-toggle="tab">TranscationArea</a>
                    </li>
                    <li>
                        <a href="#EditMyTrade" data-method="confirmTrans1" id="attempt" data-toggle="tab">EditMyTrade</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="TranscationArea">
                        <div class="page-header">
                            <h1>
                                Start! <small>There are many things</small>
                            </h1>
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
                        <div class="panel-group" id="GoodItems">
                            <%--<div class="panel panel-default">--%>
                            <%--<div class="panel-heading">--%>
                            <%--<div class="row">--%>
                            <%--<div align="left" class="col-md-10">--%>
                            <%--<a href="#panel-element-3" data-parent="#panel" data-toggle="collapse"--%>
                            <%--class="panel-title"> &lt;%&ndash;<span class="badge pull-right">16</span>&ndash;%&gt;--%>
                            <%--Cat</a>--%>
                            <%--</div>--%>
                            <%--<div align="right" class="col-md-2">--%>
                            <%--<a onclick="addHot(this)" name="1" class="glyphicon glyphicon-fire btn"--%>
                            <%--style="color: red" role="button">25</a>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--<div id="panel-element-3" class="panel-collapse collapse">--%>
                            <%--<div class="panel-body">--%>
                            <%--<div class="media">--%>
                            <%--<img alt="Bootstrap Media Preview" src="./image/example.jpg" class="media-object pull-left">--%>
                            <%--<div class="media-body">--%>
                            <%--<h4 class="media-heading">--%>
                            <%--Nested media heading--%>
                            <%--</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus--%>
                            <%--scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in--%>
                            <%--vulputate at, tempus viverra turpis.sdfsfsdfdddddddddddddddddddddddddddd--%>
                            <%--<div class="media">--%>
                            <%--<div class="media-body">--%>
                            <%--<h3 class="media-heading">--%>
                            <%--Contact--%>
                            <%--</h3><a href="#" class="pull-left"> 18398602325</a>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>

                        </div>
                        <ul class="pagination" id="pageNumber">
                            <li>
                                <a onclick="Currentgood(this)" class="btn" role="button">Prev</a>
                            </li>
                            <li>
                                <a onclick="Currentgood(this)" role="button" class="btn">1</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-pane" id="EditMyTrade">
                        <div class="page-header">
                            <h1>
                                Then!<small>Please edit your trades</small>
                            </h1>
                        </div>
                        <div>
                            <form method="post" action="AddItems.action" class="form-group">
                                <div>
                                    <label for="title" style="font-size: 20px;">Title</label>
                                    <input class="form-control" style="width: 30%" type="text" name="goodItems.title" id="title">
                                </div>
                                <div>
                                    <label for="detail">Content</label>
                                    <textarea name="goodItems.detail" id="detail" cols="30" rows="10" class="form-control" style="resize: none;"></textarea>
                                </div>
                                <div>
                                    <label for="contact">Contact</label>
                                    <input class="form-control" style="width: 30%" type="text" name="goodItems.contact" id="contact">
                                </div>
                                <%--<div>--%>
                                <%--<label>Type</label>--%>
                                <%--<div>--%>
                                <%--<input class="layui-form-radio" type="radio" name="type" value="男" title="男" checked="">--%>
                                <%--<input type="radio" name="type" value="女" title="女">--%>
                                <%--<input type="radio" name="type" value="禁" title="禁用">--%>
                                <%--</div>--%>
                                <%--</div>--%>
                                <div>
                                    <label >Picture</label>
                                </div>
                                <div>
                                    <%--<div class="layui-upload-drag" id="UpPic">--%>
                                        <%--<i class="layui-icon"></i>--%>
                                        <%--<p>点击上传，或将文件拖拽到此处</p>--%>
                                    <%--</div>--%>
                                        <i class="layui-icon">&#xe67c;</i>UpLoadPic
                                        <input type="button" class="layui-btn" id="UpLoad" lay-data="{url: 'upload.action', accept: 'images'}">
                                </div>

                                <div align="left">
                                    <input role="button" id="AddItemsButton"  style="margin-top:15px" class="btn-primary btn" type="submit" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="./layui/layui.js"></script>
<%--<script>--%>
<%--//一般直接写在一个js文件中--%>
<%--layui.use(['layer', 'form'], function(){--%>
<%--var layer = layui.layer--%>
<%--,form = layui.form;--%>
<%--layer.msg('Hello World');--%>
<%--});--%>
<%--</script>--%>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
<script src="js/checkUser.js"></script>
<script src="./layui/layui.js"></script>
<%--<script src="./js/mylayui.js"></script>--%>
<script src="js/LoadPage1.js"></script>
<script>

    function CostumeLoad(data) {
        $.each(data,function (i, item) {
            $('#GoodItems').append("<div class=\"panel panel-default\">    \n" +
                "\n" +
                "                                    <div class=\"panel-heading\">           \n" +
                "                                        <div class=\"row\">\n" +
                "                                            <div align=\"left\" class=\"col-md-10\">\n" +
                "                                                <a href=\"#panel-element-" + i + "\" data-parent=\"#panel\" data-toggle=\"collapse\" class=\"panel-title\">" + item.title + "</a>\n" +
                "                                            </div>\n" +
                "                                            <div align=\"right\" class=\"col-md-2\">\n" +
                "                                                <a onclick=\"addHot(this)\" name=\"" + item.id + "\" class=\"glyphicon glyphicon-fire btn\" style=\"color: red\" role=\"button\">" + item.hot + "</a>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                    <div id=\"panel-element-" + i + "\" class=\"panel-collapse collapse\">\n" +
                "                                        <div class=\"panel-body\">\n" +
                "                                            " + "<div class=\"media\">\n" +
                "                                            <img alt=\"Bootstrap Media Preview\" src=\"" + item.pic + "\" onclick=\"ChangPic(this)\" class=\"media-object pull-left min\">\n" +
                "                                            <div class=\"media-body\">\n" +
                "                                                <h4 class=\"media-heading\">" + item.title + "" +
                "                                                </h4>" + item.detail + "" +
                "                                                <div class=\"media\">\n" +
                "                                                        <div class=\"media-body\">\n" +
                "                                                            <h3 class=\"media-heading\">\n" +
                "                                                                Contact\n" +
                "                                                            </h3><a href=\"#\" class=\"pull-left\"> " + item.contact + "</a>\n" +
                "                                                        </div>\n" +
                "                                                </div>\n" +
                "                                            </div>\n" +
                "                                        </div>" + "\n" +
                "                                        </div>\n" +
                "                                    </div>\n" +
                "                                </div>");
        });
    }

    function addHot(msg) {
        var hot=parseInt(msg.innerHTML.toString());
        var name=parseInt(msg.name.toString());
        hot=hot+1;
        msg.innerHTML=hot.toString();
        $.post('AddHot.action',{"goodItems.hot":hot,"goodItems.id":name});
    }
    function LoginOut(){
        $.post('loginout.action');
    }

    function Kind(msg) {
        var str=msg.innerHTML.toString();
        $.post('LoadItemsByKinds.action',{"goodItems.type":str},function (data) {
            $('#GoodItems').empty();
            CostumeLoad(data);
        })
    }

    function Search() {
        var str=$('#SearchBox').val().toString();
        $.post('LoadItemsByKinds.action',{"goodItems.type":str},function (data) {
            $('#GoodItems').empty();
            CostumeLoad(data);
        })
        //$.post()
    }


    layui.use('upload', function(){
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#UpLoad' //绑定元素
            ,url: 'upload.action' //上传接口
            ,auto: false
            ,bindAction: '#AddItemsButton'
//            ,done: function(res){
//                //上传完毕回调
//            }
//            ,error: function(){
//                //请求异常回调
//            }
        });
    });
</script>
<script>
    layui.use(['carousel', 'form'], function(){
        var carousel = layui.carousel
            ,form = layui.form;

        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#PicAnim'
            ,interval: 1800
            ,anim: 'fade'
            ,height: '120px'
        });
    });

    var active = {
        confirmTrans1: function(){
            //配置一个透明的询问框
            layer.msg('Please login!', {
                time: 20000,   //20s后自动关闭
                btn: ['Understand', 'Let see see!'],
                success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: '/Home.jsp'
                        //onClick:'window.location.href=#loginAndRegisterWindow'
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

    $('#attempt,#PersonalCenter').on('click', function(){
        var othis = $(this), method = othis.data('method');
        $.get('HasLogin.action',function (msg) {
            if(msg==="none")
            {
                active[method] ? active[method].call(this, othis) : '';
                $('#AddItemsButton').attr('disabled','disabled');
            }
            else
            {
                $('#AddItemsButton').removeAttr('disabled');
            }
        });
    });
</script>
</body>
</html>