<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017/12/2
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <script src="./js/bootstrap.min.js"></script>
    <link href="./css/style.css" rel="stylesheet">
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/scripts.js"></script>
</head>
<body>
<div class="container-fluid">

    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button> <a class="navbar-brand" href="#">Brand</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">Link</a>
                        </li>
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
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
                            <input type="text" class="form-control" />
                        </div>
                        <button type="submit" class="btn btn-default">
                            Submit
                        </button>
                    </form>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Login</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<strong class="caret"></strong></a>
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
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="tabbable" id="tabs-842822">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-586846" data-toggle="tab">Section 1</a>
                    </li>
                    <li>
                        <a href="#panel-673246" data-toggle="tab">Section 2</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-586846">
                        <p>
                            I'm in Section 1.
                        </p>
                    </div>
                    <div class="tab-pane" id="panel-673246">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>
                </div>
            </div>
            <ul class="nav nav-pills">
                <li class="active">
                    <a href="#"> <span class="badge pull-right">42</span> Home</a>
                </li>
                <li>
                    <a href="#"> <span class="badge pull-right">16</span> More</a>
                </li>
            </ul>
            <div class="jumbotron">
                <h2>
                    Hello, world!
                </h2>
                <p>
                    This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
                </p>
                <p>
                    <a class="btn btn-primary btn-large" href="#">Learn more</a>
                </p>
            </div>
            <div class="page-header">
                <h1>
                    LayoutIt! <small>Interface Builder for Bootstrap</small>
                </h1>
            </div>
            <h2>
                Heading
            </h2>
            <p>
                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
            <div class="media">
                <a href="#" class="pull-left"><img alt="Bootstrap Media Preview" src="http://lorempixel.com/64/64/" class="media-object" /></a>
                <div class="media-body">
                    <h4 class="media-heading">
                        Nested media heading
                    </h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    <div class="media">
                        <a href="#" class="pull-left"><img alt="Bootstrap Media Another Preview" src="http://lorempixel.com/64/64/" class="media-object" /></a>
                        <div class="media-body">
                            <h4 class="media-heading">
                                Nested media heading
                            </h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                        </div>
                    </div>
                </div>
            </div>
            <ul class="pagination">
                <li>
                    <a href="#">Prev</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">Next</a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
