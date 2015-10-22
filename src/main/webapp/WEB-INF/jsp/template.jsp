<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>


<div class="container theme-showcase" role="main">

    <!-- Main jumbotron for a primary marketing message or call to action -->


    <div class="page-header">
        <h1>Buttons</h1>
    </div>
    <p>
        <button type="button" class="btn btn-lg btn-default">Default</button>
        <button type="button" class="btn btn-lg btn-primary">Primary</button>
        <button type="button" class="btn btn-lg btn-success">Success</button>
        <button type="button" class="btn btn-lg btn-info">Info</button>
        <button type="button" class="btn btn-lg btn-warning">Warning</button>
        <button type="button" class="btn btn-lg btn-danger">Danger</button>
        <button type="button" class="btn btn-lg btn-link">Link</button>
    </p>
    <p>
        <button type="button" class="btn btn-default">Default</button>
        <button type="button" class="btn btn-primary">Primary</button>
        <button type="button" class="btn btn-success">Success</button>
        <button type="button" class="btn btn-info">Info</button>
        <button type="button" class="btn btn-warning">Warning</button>
        <button type="button" class="btn btn-danger">Danger</button>
        <button type="button" class="btn btn-link">Link</button>
    </p>
    <p>
        <button type="button" class="btn btn-sm btn-default">Default</button>
        <button type="button" class="btn btn-sm btn-primary">Primary</button>
        <button type="button" class="btn btn-sm btn-success">Success</button>
        <button type="button" class="btn btn-sm btn-info">Info</button>
        <button type="button" class="btn btn-sm btn-warning">Warning</button>
        <button type="button" class="btn btn-sm btn-danger">Danger</button>
        <button type="button" class="btn btn-sm btn-link">Link</button>
    </p>
    <p>
        <button type="button" class="btn btn-xs btn-default">Default</button>
        <button type="button" class="btn btn-xs btn-primary">Primary</button>
        <button type="button" class="btn btn-xs btn-success">Success</button>
        <button type="button" class="btn btn-xs btn-info">Info</button>
        <button type="button" class="btn btn-xs btn-warning">Warning</button>
        <button type="button" class="btn btn-xs btn-danger">Danger</button>
        <button type="button" class="btn btn-xs btn-link">Link</button>
    </p>


    <div class="page-header">
        <h1>Tables</h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-6">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td rowspan="2">1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@TwBootstrap</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-6">
            <table class="table table-condensed">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>


    <div class="page-header">
        <h1>Thumbnails</h1>
    </div>
    <img data-src="holder.js/200x200" class="img-thumbnail"
         alt="A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera">


    <div class="page-header">
        <h1>Labels</h1>
    </div>
    <h1>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h1>

    <h2>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h2>

    <h3>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h3>
    <h4>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h4>
    <h5>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h5>
    <h6>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </h6>

    <p>
        <span class="label label-default">Default</span>
        <span class="label label-primary">Primary</span>
        <span class="label label-success">Success</span>
        <span class="label label-info">Info</span>
        <span class="label label-warning">Warning</span>
        <span class="label label-danger">Danger</span>
    </p>


    <div class="page-header">
        <h1>Badges</h1>
    </div>
    <p>
        <a href="#">Inbox <span class="badge">42</span></a>
    </p>
    <ul class="nav nav-pills">
        <li class="active"><a href="#">Home <span class="badge">42</span></a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages <span class="badge">3</span></a></li>
    </ul>


    <div class="page-header">
        <h1>Dropdown menus</h1>
    </div>
    <div class="dropdown theme-dropdown clearfix">
        <a id="dropdownMenu1" href="#" role="button" class="sr-only dropdown-toggle"
           data-toggle="dropdown">Dropdown <span
                class="caret"></span></a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
            <li class="active" role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
        </ul>
    </div>


    <div class="page-header">
        <h1>Navs</h1>
    </div>
    <ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages</a></li>
    </ul>
    <ul class="nav nav-pills">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages</a></li>
    </ul>


    <div class="page-header">
        <h1>Navbars</h1>
    </div>

    <div class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Nav header</li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>

    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Nav header</li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>


    <div class="page-header">
        <h1>Alerts</h1>
    </div>
    <div class="alert alert-success" role="alert">
        <strong>Well done!</strong> You successfully read this important alert message.
    </div>
    <div class="alert alert-info" role="alert">
        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
    </div>
    <div class="alert alert-warning" role="alert">
        <strong>Warning!</strong> Best check yo self, you're not looking too good.
    </div>
    <div class="alert alert-danger" role="alert">
        <strong>Oh snap!</strong> Change a few things up and try submitting again.
    </div>


    <div class="page-header">
        <h1>Progress bars</h1>
    </div>
    <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
             style="width: 60%;"><span class="sr-only">60% Complete</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0"
             aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0"
             aria-valuemax="100" style="width: 20%"><span class="sr-only">20% Complete</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0"
             aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete (warning)</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0"
             aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete (danger)</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0"
             aria-valuemax="100" style="width: 60%"><span class="sr-only">100% Complete</span></div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 35%"><span
                class="sr-only">35% Complete (success)</span></div>
        <div class="progress-bar progress-bar-warning" style="width: 20%"><span
                class="sr-only">20% Complete (warning)</span></div>
        <div class="progress-bar progress-bar-danger" style="width: 10%"><span
                class='sr-only'>10% Complete (danger)</span>
        </div>
    </div>


    <div class="page-header">
        <h1>List groups</h1>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <ul class="list-group">
                <li class="list-group-item">Cras justo odio</li>
                <li class="list-group-item">Dapibus ac facilisis in</li>
                <li class="list-group-item">Morbi leo risus</li>
                <li class="list-group-item">Porta ac consectetur ac</li>
                <li class="list-group-item">Vestibulum at eros</li>
            </ul>
        </div>
        <!-- /.col-sm-4 -->
        <div class="col-sm-4">
            <div class="list-group">
                <a href="#" class="list-group-item active">
                    Cras justo odio
                </a>
                <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item">Morbi leo risus</a>
                <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                <a href="#" class="list-group-item">Vestibulum at eros</a>
            </div>
        </div>
        <!-- /.col-sm-4 -->
        <div class="col-sm-4">
            <div class="list-group">
                <a href="#" class="list-group-item active">
                    <h4 class="list-group-item-heading">List group item heading</h4>

                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam
                        eget
                        risus varius blandit.</p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">List group item heading</h4>

                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam
                        eget
                        risus varius blandit.</p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">List group item heading</h4>

                    <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam
                        eget
                        risus varius blandit.</p>
                </a>
            </div>
        </div>
        <!-- /.col-sm-4 -->
    </div>


    <div class="page-header">
        <h1>Panels</h1>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
        </div>
        <!-- /.col-sm-4 -->
        <div class="col-sm-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
        </div>
        <!-- /.col-sm-4 -->
        <div class="col-sm-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title">Panel title</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
        </div>
        <!-- /.col-sm-4 -->
    </div>


    <div class="page-header">
        <h1>Wells</h1>
    </div>
    <div class="well">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet
            non
            magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel
            scelerisque
            nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus,
            nisi
            erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
    </div>


    <div class="page-header">
        <h1>Carousel</h1>
    </div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img data-src="holder.js/1140x500/auto/#777:#555/text:First slide" alt="First slide">
            </div>
            <div class="item">
                <img data-src="holder.js/1140x500/auto/#666:#444/text:Second slide" alt="Second slide">
            </div>
            <div class="item">
                <img data-src="holder.js/1140x500/auto/#555:#333/text:Third slide" alt="Third slide">
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>


</div>
<!-- /container -->


///list


<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="Bootstrap, a sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.">
    <meta name="keywords"
          content="HTML, CSS, JS, JavaScript, framework, bootstrap, front-end, frontend, web development">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">

    <title>

        JavaScript &middot; Bootstrap

    </title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Optional Bootstrap Theme -->
    <link href="data:text/css;charset=utf-8," data-href="../dist/css/bootstrap-theme.min.css" rel="stylesheet"
          id="bs-theme-stylesheet">


    <!-- Documentation extras -->
    <link href="../assets/css/docs.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" href="/apple-touch-icon-precomposed.png">
    <link rel="icon" href="/favicon.ico">

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-146052-10', 'getbootstrap.com');
        ga('send', 'pageview');
    </script>

</head>
<body>
<center>
    <iframe id='a24de492' name='a24de492' src='http://ad.unseen.is/www/delivery/afr.php?zoneid=1&amp;cb=2433492'
            frameborder='0' scrolling='no' width='728' height='90'><a
            href='http://ad.unseen.is/www/delivery/ck.php?n=ae69e979&amp;cb=2433492' target='_blank'><img
            src='http://ad.unseen.is/www/delivery/avw.php?zoneid=1&amp;cb=2433492&amp;n=ae69e979' border='0'
            alt=''/></a></iframe>
</center>
<a class="sr-only sr-only-focusable" href="#content">Skip to main content</a>

<!-- Docs master nav -->
<header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse"
                    data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="../" class="navbar-brand">Bootstrap</a>
        </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li>
                    <a href="../getting-started">Getting started</a>
                </li>
                <li>
                    <a href="../css">CSS</a>
                </li>
                <li>
                    <a href="../components">Components</a>
                </li>
                <li class="active">
                    <a href="../javascript">JavaScript</a>
                </li>
                <li>
                    <a href="../customize">Customize</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://expo.getbootstrap.com"
                       onclick="ga('send', 'event', 'Navbar', 'Community links', 'Expo');">Expo</a></li>
                <li><a href="http://blog.getbootstrap.com"
                       onclick="ga('send', 'event', 'Navbar', 'Community links', 'Blog');">Blog</a></li>
            </ul>
        </nav>
    </div>
</header>


<!-- Docs page layout -->
<div class="bs-docs-header" id="content">
    <div class="container">
        <h1>JavaScript</h1>

        <p>Bring Bootstrap's components to life with over a dozen custom jQuery plugins. Easily include them all, or one
            by one.</p>

        <div id="carbonads-container">
            <div class="carbonad">
                <div id="azcarbon"></div>
                <script>var z = document.createElement("script");
                z.async = true;
                z.src = "http://engine.carbonads.com/z/32341/azcarbon_2_1_0_HORIZ";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(z, s);</script>
            </div>
        </div>

    </div>
</div>

<div class="container bs-docs-container">

    <div class="row">
        <div class="col-md-9" role="main">
            <div class="bs-docs-section">
                <h1 id="js-overview" class="page-header">Overview</h1>

                <h3 id="js-individual-compiled">Individual or compiled</h3>

                <p>Plugins can be included individually (using Bootstrap's individual <code>*.js</code> files), or all
                    at once (using <code>bootstrap.js</code> or the minified <code>bootstrap_3.3.5.min.js</code>).</p>

                <div class="bs-callout bs-callout-danger">
                    <h4>Using the compiled JavaScript</h4>

                    <p>Both <code>bootstrap.js</code> and <code>bootstrap_3.3.5.min.js</code> contain all plugins in a single
                        file. Include only one.</p>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Component data attributes</h4>

                    <p>Don't use data attributes from multiple plugins on the same element. For example, a button cannot
                        both have a tooltip and toggle a modal. To accomplish this, use a wrapping element.</p>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Plugin dependencies</h4>

                    <p>Some plugins and CSS components depend on other plugins. If you include plugins individually,
                        make sure to check for these dependencies in the docs. Also note that all plugins depend on
                        jQuery (this means jQuery must be included <strong>before</strong> the plugin files). <a
                                href="https://github.com/twbs/bootstrap/blob/v3.2.0/bower.json">Consult our <code>bower.json</code></a>
                        to see which versions of jQuery are supported.</p>
                </div>

                <h3 id="js-data-attrs">Data attributes</h3>

                <p>You can use all Bootstrap plugins purely through the markup API without writing a single line of
                    JavaScript. This is Bootstrap's first-class API and should be your first consideration when using a
                    plugin.</p>

                <p>That said, in some situations it may be desirable to turn this functionality off. Therefore, we also
                    provide the ability to disable the data attribute API by unbinding all events on the document
                    namespaced with <code>data-api</code>. This looks like this:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                            class="nb">document</span><span class="p">).</span><span class="nx">off</span><span
                            class="p">(</span><span class="s1">&#39;.data-api&#39;</span><span class="p">)</span></code></pre>
                </div>

                <p>Alternatively, to target a specific plugin, just include the plugin's name as a namespace along with
                    the data-api namespace like this:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                            class="nb">document</span><span class="p">).</span><span class="nx">off</span><span
                            class="p">(</span><span class="s1">&#39;.alert.data-api&#39;</span><span class="p">)</span></code></pre>
                </div>

                <h3 id="js-programmatic-api">Programmatic API</h3>

                <p>We also believe you should be able to use all Bootstrap plugins purely through the JavaScript API.
                    All public APIs are single, chainable methods, and return the collection acted upon.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.btn.danger&#39;</span><span
                            class="p">).</span><span class="nx">button</span><span class="p">(</span><span class="s1">&#39;toggle&#39;</span><span
                            class="p">).</span><span class="nx">addClass</span><span class="p">(</span><span class="s1">&#39;fat&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <p>All methods should accept an optional options object, a string which targets a particular method, or
                    nothing (which initiates a plugin with default behavior):</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myModal&#39;</span><span class="p">).</span><span class="nx">modal</span><span
                        class="p">()</span> <span class="c1">// initialized with defaults</span>
                    <span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">({</span> <span class="nx">keyboard</span><span
                            class="o">:</span> <span class="kc">false</span> <span class="p">})</span> <span class="c1">// initialized with no keyboard</span>
                    <span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span> <span
                            class="c1">// initializes and invokes show immediately</span></code></pre>
                </div>

                <p>Each plugin also exposes its raw constructor on a <code>Constructor</code> property: <code>$.fn.popover.Constructor</code>.
                    If you'd like to get a particular plugin instance, retrieve it directly from an element: <code>$('[rel="popover"]').data('popover')</code>.
                </p>

                <h3 id="js-noconflict">No conflict</h3>

                <p>Sometimes it is necessary to use Bootstrap plugins with other UI frameworks. In these circumstances,
                    namespace collisions can occasionally occur. If this happens, you may call <code>.noConflict</code>
                    on the plugin you wish to revert the value of.</p>

                <div class="highlight"><pre><code class="js"><span class="kd">var</span> <span class="nx">bootstrapButton</span>
                    <span class="o">=</span> <span class="nx">$</span><span class="p">.</span><span class="nx">fn</span><span
                            class="p">.</span><span class="nx">button</span><span class="p">.</span><span class="nx">noConflict</span><span
                            class="p">()</span> <span
                            class="c1">// return $.fn.button to previously assigned value</span>
                    <span class="nx">$</span><span class="p">.</span><span class="nx">fn</span><span
                            class="p">.</span><span class="nx">bootstrapBtn</span> <span class="o">=</span> <span
                            class="nx">bootstrapButton</span> <span class="c1">// give $().bootstrapBtn the Bootstrap functionality</span></code></pre>
                </div>

                <h3 id="js-events">Events</h3>

                <p>Bootstrap provides custom events for most plugins' unique actions. Generally, these come in an
                    infinitive and past participle form - where the infinitive (ex. <code>show</code>) is triggered at
                    the start of an event, and its past participle form (ex. <code>shown</code>) is triggered on the
                    completion of an action.</p>

                <p>As of 3.0.0, all Bootstrap events are namespaced.</p>

                <p>All infinitive events provide <code>preventDefault</code> functionality. This provides the ability to
                    stop the execution of an action before it starts.</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myModal&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;show.bs.modal&#39;</span><span class="p">,</span> <span
                        class="kd">function</span> <span class="p">(</span><span class="nx">e</span><span
                        class="p">)</span> <span class="p">{</span>
                    <span class="k">if</span> <span class="p">(</span><span class="o">!</span><span
                            class="nx">data</span><span class="p">)</span> <span class="k">return</span> <span
                            class="nx">e</span><span class="p">.</span><span class="nx">preventDefault</span><span
                            class="p">()</span> <span class="c1">// stops modal from being shown</span>
                    <span class="p">})</span></code></pre>
                </div>

                <h3 id="js-disabled">No special fallbacks when JavaScript is disabled</h3>

                <p>Bootstrap's plugins don't fall back particularly gracefully when JavaScript is disabled. If you care
                    about the user experience in this case, use <a
                            href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript"><code>&lt;noscript&gt;</code></a>
                    to explain the situation (and how to re-enable JavaScript) to your users, and/or add your own custom
                    fallbacks.</p>

                <div class="bs-callout bs-callout-warning" id="callout-third-party-libs">
                    <h4>Third-party libraries</h4>

                    <p><strong>Bootstrap does not officially support third-party JavaScript libraries</strong> like
                        Prototype or jQuery UI. Despite <code>.noConflict</code> and namespaced events, there may be
                        compatibility problems that you need to fix on your own.</p>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="transitions" class="page-header">Transitions
                    <small>transition.js</small>
                </h1>

                <h3>About transitions</h3>

                <p>For simple transition effects, include <code>transition.js</code> once alongside the other JS files.
                    If you're using the compiled (or minified) <code>bootstrap.js</code>, there is no need to include
                    this&mdash;it's already there.</p>

                <h3>What's inside</h3>

                <p>Transition.js is a basic helper for <code>transitionEnd</code> events as well as a CSS transition
                    emulator. It's used by the other plugins to check for CSS transition support and to catch hanging
                    transitions.</p>
            </div>

            <div class="bs-docs-section">
                <h1 id="modals" class="page-header">Modals
                    <small>modal.js</small>
                </h1>

                <h2 id="modals-examples">Examples</h2>

                <p>Modals are streamlined, but flexible, dialog prompts with the minimum required functionality and
                    smart defaults.</p>

                <div class="bs-callout bs-callout-warning" id="callout-stacked-modals">
                    <h4>Overlapping modals not supported</h4>

                    <p>Be sure not to open a modal while another is still visible. Showing more than one modal at a time
                        requires custom code.</p>
                </div>
                <div class="bs-callout bs-callout-warning" id="callout-modal-markup-placement">
                    <h4>Modal markup placement</h4>

                    <p>Always try to place a modal's HTML code in a top-level position in your document to avoid other
                        components affecting the modal's appearance and/or functionality.</p>
                </div>
                <div class="bs-callout bs-callout-warning">
                    <h4>Mobile device caveats</h4>

                    <p>There are some caveats regarding using modals on mobile devices. <a
                            href="../getting-started/#support-fixed-position-keyboards">See our browser support docs</a>
                        for details.</p>
                </div>

                <h3>Static example</h3>

                <p>A rendered modal with header, body, and set of actions in the footer.</p>

                <div class="bs-example bs-example-modal">
                    <div class="modal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span
                                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title">Modal title</h4>
                                </div>
                                <div class="modal-body">
                                    <p>One fine body&hellip;</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;modal fade&quot;</span><span
                        class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-dialog&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-content&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-header&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;close&quot;</span>
                    <span class="na">data-dismiss=</span><span class="s">&quot;modal&quot;</span><span class="nt">&gt;&lt;span</span>
                    <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                            class="nt">&gt;</span><span class="ni">&amp;times;</span><span class="nt">&lt;/span&gt;&lt;span</span>
                    <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span><span class="nt">&gt;</span>Close<span
                            class="nt">&lt;/span&gt;&lt;/button&gt;</span>
                    <span class="nt">&lt;h4</span> <span class="na">class=</span><span
                            class="s">&quot;modal-title&quot;</span><span class="nt">&gt;</span>Modal title<span
                            class="nt">&lt;/h4&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;modal-body&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;p&gt;</span>One fine body<span class="ni">&amp;hellip;</span><span class="nt">&lt;/p&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-footer&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-dismiss=</span><span class="s">&quot;modal&quot;</span><span
                            class="nt">&gt;</span>Close<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>Save changes<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span><span class="c">&lt;!-- /.modal-content --&gt;</span>
                    <span class="nt">&lt;/div&gt;</span><span class="c">&lt;!-- /.modal-dialog --&gt;</span>
                    <span class="nt">&lt;/div&gt;</span><span class="c">&lt;!-- /.modal --&gt;</span></code></pre>
                </div>

                <h3>Live demo</h3>

                <p>Toggle a modal via JavaScript by clicking the button below. It will slide down and fade in from the
                    top of the page.</p>
                <!-- sample modal content -->
                <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span
                                        aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
                            </div>
                            <div class="modal-body">
                                <h4>Text in a modal</h4>

                                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

                                <h4>Popover in a modal</h4>

                                <p>This <a href="#" role="button" class="btn btn-default popover-test" title="A Title"
                                           data-content="And here's some amazing content. It's very engaging. right?">button</a>
                                    should trigger a popover on click.</p>

                                <h4>Tooltips in a modal</h4>

                                <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#"
                                                                                                         class="tooltip-test"
                                                                                                         title="Tooltip">that
                                    link</a> should have tooltips on hover.</p>

                                <hr>

                                <h4>Overflowing text to show scroll behavior</h4>

                                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                    facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac,
                                    vestibulum at eros.</p>

                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                    lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

                                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                    scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non
                                    metus auctor fringilla.</p>

                                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                    facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac,
                                    vestibulum at eros.</p>

                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                    lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

                                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                    scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non
                                    metus auctor fringilla.</p>

                                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                    facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac,
                                    vestibulum at eros.</p>

                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                    lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

                                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                    scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non
                                    metus auctor fringilla.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <div class="bs-example" style="padding-bottom: 24px;">
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        Launch demo modal
                    </button>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span
                        class="c">&lt;!-- Button trigger modal --&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span> <span class="na">data-target=</span><span
                            class="s">&quot;#myModal&quot;</span><span class="nt">&gt;</span>
                    Launch demo modal
                    <span class="nt">&lt;/button&gt;</span>

                    <span class="c">&lt;!-- Modal --&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;modal fade&quot;</span> <span class="na">id=</span><span class="s">&quot;myModal&quot;</span>
                    <span class="na">tabindex=</span><span class="s">&quot;-1&quot;</span> <span class="na">role=</span><span
                            class="s">&quot;dialog&quot;</span> <span class="na">aria-labelledby=</span><span class="s">&quot;myModalLabel&quot;</span>
                    <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-dialog&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-content&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-header&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;close&quot;</span>
                    <span class="na">data-dismiss=</span><span class="s">&quot;modal&quot;</span><span class="nt">&gt;&lt;span</span>
                    <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                            class="nt">&gt;</span><span class="ni">&amp;times;</span><span class="nt">&lt;/span&gt;&lt;span</span>
                    <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span><span class="nt">&gt;</span>Close<span
                            class="nt">&lt;/span&gt;&lt;/button&gt;</span>
                    <span class="nt">&lt;h4</span> <span class="na">class=</span><span
                            class="s">&quot;modal-title&quot;</span> <span class="na">id=</span><span class="s">&quot;myModalLabel&quot;</span><span
                            class="nt">&gt;</span>Modal title<span class="nt">&lt;/h4&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;modal-body&quot;</span><span class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-footer&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-dismiss=</span><span class="s">&quot;modal&quot;</span><span
                            class="nt">&gt;</span>Close<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>Save changes<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-warning">
                    <h4>Make modals accessible</h4>

                    <p>Be sure to add <code>role="dialog"</code> to <code>.modal</code>, <code>aria-labelledby="myModalLabel"</code>
                        attribute to reference the modal title, and <code>aria-hidden="true"</code> to tell assistive
                        technologies to skip the modal's DOM elements.</p>

                    <p>Additionally, you may give a description of your modal dialog with <code>aria-describedby</code>
                        on <code>.modal</code>.</p>
                </div>

                <div class="bs-callout bs-callout-info">
                    <h4>Embedding YouTube videos</h4>

                    <p>Embedding YouTube videos in modals requires additional JavaScript not in Bootstrap to
                        automatically stop playback and more. <a
                                href="http://stackoverflow.com/questions/18622508/bootstrap-3-and-youtube-in-modal">See
                            this helpful Stack Overflow post</a> for more information.</p>
                </div>

                <h2 id="modals-sizes">Optional sizes</h2>

                <p>Modals have two optional sizes, available via modifier classes to be placed on a
                    <code>.modal-dialog</code>.</p>

                <div class="bs-example">
                    <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal
                    </button>
                    <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal
                    </button>
                </div>
                <div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Large modal --&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span> <span class="na">data-target=</span><span
                            class="s">&quot;.bs-example-modal-lg&quot;</span><span class="nt">&gt;</span>Large
                    modal<span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal fade bs-example-modal-lg&quot;</span>
                    <span class="na">tabindex=</span><span class="s">&quot;-1&quot;</span> <span class="na">role=</span><span
                            class="s">&quot;dialog&quot;</span> <span class="na">aria-labelledby=</span><span class="s">&quot;myLargeModalLabel&quot;</span>
                    <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-dialog modal-lg&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-content&quot;</span><span
                            class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>

                    <span class="c">&lt;!-- Small modal --&gt;</span>
                    <span class="nt">&lt;button</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span> <span class="na">data-target=</span><span
                            class="s">&quot;.bs-example-modal-sm&quot;</span><span class="nt">&gt;</span>Small
                    modal<span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal fade bs-example-modal-sm&quot;</span>
                    <span class="na">tabindex=</span><span class="s">&quot;-1&quot;</span> <span class="na">role=</span><span
                            class="s">&quot;dialog&quot;</span> <span class="na">aria-labelledby=</span><span class="s">&quot;mySmallModalLabel&quot;</span>
                    <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-dialog modal-sm&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;modal-content&quot;</span><span
                            class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <!--  Modal content for the above example -->
                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
                     aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span
                                        aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myLargeModalLabel">Large modal</h4>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog"
                     aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span
                                        aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="mySmallModalLabel">Small modal</h4>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <h2 id="modals-remove-animation">Remove animation</h2>

                <p>For modals that simply appear rather than fade in to view, remove the <code>.fade</code> class from
                    your modal markup.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;modal&quot;</span> <span
                        class="na">tabindex=</span><span class="s">&quot;-1&quot;</span> <span
                        class="na">role=</span><span class="s">&quot;dialog&quot;</span> <span class="na">aria-labelledby=</span><span
                        class="s">&quot;&quot;</span> <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                        class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h2 id="modals-usage">Usage</h2>

                <p>The modal plugin toggles your hidden content on demand, via data attributes or JavaScript. It also
                    adds <code>.modal-open</code> to the <code>&lt;body&gt;</code> to override default scrolling
                    behavior and generates a <code>.modal-backdrop</code> to provide a click area for dismissing shown
                    modals when clicking outside the modal.</p>

                <h3>Via data attributes</h3>

                <p>Activate a modal without writing JavaScript. Set <code>data-toggle="modal"</code> on a controller
                    element, like a button, along with a <code>data-target="#foo"</code> or <code>href="#foo"</code> to
                    target a specific modal to toggle.</p>

                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span>
                        <span class="na">data-target=</span><span class="s">&quot;#myModal&quot;</span><span class="nt">&gt;</span>Launch
                        modal<span class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <h3>Via JavaScript</h3>

                <p>Call a modal with id <code>myModal</code> with a single line of JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">(</span><span class="nx">options</span><span
                            class="p">)</span></code></pre>
                </div>

                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-backdrop=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 50px;">type</th>
                            <th style="width: 50px;">default</th>
                            <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>backdrop</td>
                            <td>boolean or the string <code>'static'</code></td>
                            <td>true</td>
                            <td>Includes a modal-backdrop element. Alternatively, specify <code>static</code> for a
                                backdrop which doesn't close the modal on click.
                            </td>
                        </tr>
                        <tr>
                            <td>keyboard</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Closes the modal when escape key is pressed</td>
                        </tr>
                        <tr>
                            <td>show</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Shows the modal when initialized.</td>
                        </tr>
                        <tr>
                            <td>remote</td>
                            <td>path</td>
                            <td>false</td>
                            <td><p>If a remote URL is provided, <strong>content will be loaded one time</strong> via
                                jQuery's <code>load</code> method and injected into the <code>.modal-content</code> div.
                                If you're using the data-api, you may alternatively use the <code>href</code> attribute
                                to specify the remote source. An example of this is shown below:</p>

                                <div class="highlight">
                                    <pre><code class="html"><span class="nt">&lt;a</span> <span
                                            class="na">data-toggle=</span><span class="s">&quot;modal&quot;</span> <span
                                            class="na">href=</span><span class="s">&quot;remote.html&quot;</span> <span
                                            class="na">data-target=</span><span class="s">&quot;#modal&quot;</span><span
                                            class="nt">&gt;</span>Click me<span
                                            class="nt">&lt;/a&gt;</span></code></pre>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->

                <h3>Methods</h3>

                <h4>.modal(options)</h4>

                <p>Activates your content as a modal. Accepts an optional options <code>object</code>.</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myModal&#39;</span><span class="p">).</span><span class="nx">modal</span><span
                        class="p">({</span>
                    <span class="nx">keyboard</span><span class="o">:</span> <span class="kc">false</span>
                    <span class="p">})</span></code></pre>
                </div>

                <h4>.modal('toggle')</h4>

                <p>Manually toggles a modal. <strong>Returns to the caller before the modal has actually been shown or
                    hidden</strong> (i.e. before the <code>shown.bs.modal</code> or <code>hidden.bs.modal</code> event
                    occurs).</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">(</span><span class="s1">&#39;toggle&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.modal('show')</h4>

                <p>Manually opens a modal. <strong>Returns to the caller before the modal has actually been
                    shown</strong> (i.e. before the <code>shown.bs.modal</code> event occurs).</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.modal('hide')</h4>

                <p>Manually hides a modal. <strong>Returns to the caller before the modal has actually been
                    hidden</strong> (i.e. before the <code>hidden.bs.modal</code> event occurs).</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myModal&#39;</span><span
                            class="p">).</span><span class="nx">modal</span><span class="p">(</span><span class="s1">&#39;hide&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h3>Events</h3>

                <p>Bootstrap's modal class exposes a few events for hooking into modal functionality.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.modal</td>
                            <td>This event fires immediately when the <code>show</code> instance method is called. If
                                caused by a click, the clicked element is available as the <code>relatedTarget</code>
                                property of the event.
                            </td>
                        </tr>
                        <tr>
                            <td>shown.bs.modal</td>
                            <td>This event is fired when the modal has been made visible to the user (will wait for CSS
                                transitions to complete). If caused by a click, the clicked element is available as the
                                <code>relatedTarget</code> property of the event.
                            </td>
                        </tr>
                        <tr>
                            <td>hide.bs.modal</td>
                            <td>This event is fired immediately when the <code>hide</code> instance method has been
                                called.
                            </td>
                        </tr>
                        <tr>
                            <td>hidden.bs.modal</td>
                            <td>This event is fired when the modal has finished being hidden from the user (will wait
                                for CSS transitions to complete).
                            </td>
                        </tr>
                        <tr>
                            <td>loaded.bs.modal</td>
                            <td>This event is fired when the modal has loaded content using the remote option.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myModal&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;hidden.bs.modal&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">(</span><span class="nx">e</span><span
                            class="p">)</span> <span class="p">{</span>
                    <span class="c1">// do something...</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="dropdowns" class="page-header">Dropdowns
                    <small>dropdown.js</small>
                </h1>

                <h2 id="dropdowns-examples">Examples</h2>

                <p>Add dropdown menus to nearly anything with this simple plugin, including the navbar, tabs, and
                    pills.</p>

                <h3>Within a navbar</h3>

                <div class="bs-example">
                    <nav id="navbar-example" class="navbar navbar-default navbar-static" role="navigation">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse"
                                        data-target=".bs-example-js-navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Project Name</a>
                            </div>
                            <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
                                <ul class="nav navbar-nav">
                                    <li class="dropdown">
                                        <a id="drop1" href="#" role="button" class="dropdown-toggle"
                                           data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Action</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Another action</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Something else
                                                here</a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Separated link</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" id="drop2" role="button" class="dropdown-toggle"
                                           data-toggle="dropdown">Dropdown 2 <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Action</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Another action</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Something else
                                                here</a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Separated link</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li id="fat-menu" class="dropdown">
                                        <a href="#" id="drop3" role="button" class="dropdown-toggle"
                                           data-toggle="dropdown">Dropdown 3 <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Action</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Another action</a>
                                            </li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Something else
                                                here</a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="http://twitter.com/fat">Separated link</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- /.nav-collapse -->
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                    <!-- /navbar-example -->
                </div>
                <!-- /example -->

                <h3>Within pills</h3>

                <div class="bs-example">
                    <ul class="nav nav-pills">
                        <li class="active"><a href="#">Regular link</a></li>
                        <li class="dropdown">
                            <a id="drop4" role="button" data-toggle="dropdown" href="#">Dropdown <span
                                    class="caret"></span></a>
                            <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a>
                                </li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another
                                    action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something
                                    else here</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated
                                    link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a id="drop5" role="button" data-toggle="dropdown" href="#">Dropdown 2 <span
                                    class="caret"></span></a>
                            <ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a>
                                </li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another
                                    action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something
                                    else here</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated
                                    link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a id="drop6" role="button" data-toggle="dropdown" href="#">Dropdown 3 <span
                                    class="caret"></span></a>
                            <ul id="menu3" class="dropdown-menu" role="menu" aria-labelledby="drop6">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a>
                                </li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another
                                    action</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something
                                    else here</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated
                                    link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /pills -->
                </div>
                <!-- /example -->


                <h2 id="dropdowns-usage">Usage</h2>

                <p>Via data attributes or JavaScript, the dropdown plugin toggles hidden content (dropdown menus) by
                    toggling the <code>.open</code> class on the parent list item.</p>

                <p>On mobile devices, opening a dropdown adds a <code>.dropdown-backdrop</code> as a tap area for
                    closing dropdown menus when tapping outside the menu, a requirement for proper iOS support. <strong
                            class="text-danger">This means that switching from an open dropdown menu to a different
                        dropdown menu requires an extra tap on mobile.</strong></p>

                <p>Note: The <code>data-toggle="dropdown"</code> attribute is relied on for closing dropdown menus at an
                    application level, so it's a good idea to always use it.</p>

                <h3>Via data attributes</h3>

                <p>Add <code>data-toggle="dropdown"</code> to a link or button to toggle a dropdown.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;dropdown&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">data-toggle=</span><span class="s">&quot;dropdown&quot;</span>
                    <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;</span>Dropdown
                    trigger<span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;dropdown-menu&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;menu&quot;</span> <span class="na">aria-labelledby=</span><span
                            class="s">&quot;dLabel&quot;</span><span class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/ul&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>
                <p>To keep URLs intact, use the <code>data-target</code> attribute instead of <code>href="#"</code>.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;dropdown&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">id=</span><span class="s">&quot;dLabel&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;button&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;dropdown&quot;</span> <span class="na">data-target=</span><span
                            class="s">&quot;#&quot;</span> <span class="na">href=</span><span class="s">&quot;/page.html&quot;</span><span
                            class="nt">&gt;</span>
                    Dropdown <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;caret&quot;</span><span
                            class="nt">&gt;&lt;/span&gt;</span>
                    <span class="nt">&lt;/a&gt;</span>


                    <span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;dropdown-menu&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;menu&quot;</span> <span class="na">aria-labelledby=</span><span
                            class="s">&quot;dLabel&quot;</span><span class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/ul&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h3>Via JavaScript</h3>

                <p>Call the dropdowns via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.dropdown-toggle&#39;</span><span
                            class="p">).</span><span class="nx">dropdown</span><span class="p">()</span></code></pre>
                </div>
                <div class="bs-callout bs-callout-info">
                    <h4><code>data-toggle="dropdown"</code> still required</h4>

                    <p>Regardless of whether you call your dropdown via JavaScript or instead use the data-api, <code>data-toggle="dropdown"</code>
                        is always required to be present on the dropdown's trigger element.</p>
                </div>

                <h3>Options</h3>

                <p><em>None</em></p>

                <h3>Methods</h3>
                <h4>$().dropdown('toggle')</h4>

                <p>Toggles the dropdown menu of a given navbar or tabbed navigation.</p>

                <h3>Events</h3>

                <p>All dropdown events are fired at the <code>.dropdown-menu</code>'s parent element.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.dropdown</td>
                            <td>This event fires immediately when the show instance method is called. The toggling
                                anchor element is available as the <code>relatedTarget</code> property of the event.
                            </td>
                        </tr>
                        <tr>
                            <td>shown.bs.dropdown</td>
                            <td>This event is fired when the dropdown has been made visible to the user (will wait for
                                CSS transitions, to complete). The toggling anchor element is available as the <code>relatedTarget</code>
                                property of the event.
                            </td>
                        </tr>
                        <tr>
                            <td>hide.bs.dropdown</td>
                            <td>This event is fired immediately when the hide instance method has been called. The
                                toggling anchor element is available as the <code>relatedTarget</code> property of the
                                event.
                            </td>
                        </tr>
                        <tr>
                            <td>hidden.bs.dropdown</td>
                            <td>This event is fired when the dropdown has finished being hidden from the user (will wait
                                for CSS transitions, to complete). The toggling anchor element is available as the
                                <code>relatedTarget</code> property of the event.
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- ./bs-table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myDropdown&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;show.bs.dropdown&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="scrollspy" class="page-header">ScrollSpy
                    <small>scrollspy.js</small>
                </h1>

                <h2 id="scrollspy-examples">Example in navbar</h2>

                <p>The ScrollSpy plugin is for automatically updating nav targets based on scroll position. Scroll the
                    area below the navbar and watch the active class change. The dropdown sub items will be highlighted
                    as well.</p>

                <div class="bs-example">
                    <nav id="navbar-example2" class="navbar navbar-default navbar-static" role="navigation">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse"
                                        data-target=".bs-example-js-navbar-scrollspy">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Project Name</a>
                            </div>
                            <div class="collapse navbar-collapse bs-example-js-navbar-scrollspy">
                                <ul class="nav navbar-nav">
                                    <li><a href="#fat">@fat</a></li>
                                    <li><a href="#mdo">@mdo</a></li>
                                    <li class="dropdown">
                                        <a href="#" id="navbarDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="navbarDrop1">
                                            <li><a href="#one" tabindex="-1">one</a></li>
                                            <li><a href="#two" tabindex="-1">two</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#three" tabindex="-1">three</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
                        <h4 id="fat">@fat</h4>

                        <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they
                            sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan.
                            Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts,
                            williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund
                            culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel
                            keffiyeh artisan ullamco consequat.</p>
                        <h4 id="mdo">@mdo</h4>

                        <p>Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard
                            aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles.
                            Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1
                            sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer
                            vice keytar deserunt.</p>
                        <h4 id="one">one</h4>

                        <p>Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights
                            adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam.
                            High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est
                            adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus
                            consectetur fanny pack iphone.</p>
                        <h4 id="two">two</h4>

                        <p>In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats
                            sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer.
                            Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse.
                            Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan
                            tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf
                            voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk
                            brooklyn nesciunt.</p>
                        <h4 id="three">three</h4>

                        <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they
                            sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan.
                            Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts,
                            williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund
                            culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel
                            keffiyeh artisan ullamco consequat.</p>

                        <p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id
                            assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of
                            them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold
                            out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut
                            helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor
                            veniam. Anim mollit minim commodo ullamco thundercats.
                        </p>
                    </div>
                </div>
                <!-- /example -->


                <h2 id="scrollspy-usage">Usage</h2>

                <h3>Requires relative positioning</h3>

                <p>No matter the implementation method, scrollspy requires the use of <code>position: relative;</code>
                    on the element you're spying on. In most cases this is the <code>&lt;body&gt;</code>.</p>

                <h3>Via data attributes</h3>

                <p>To easily add scrollspy behavior to your topbar navigation, add <code>data-spy="scroll"</code> to the
                    element you want to spy on (most typically this would be the <code>&lt;body&gt;</code>). Then add
                    the <code>data-target</code> attribute with the ID or class of the parent element of any Bootstrap
                    <code>.nav</code> component.</p>

                <div class="highlight"><pre><code class="css"><span class="nt">body</span> <span class="p">{</span>
                    <span class="k">position</span><span class="o">:</span> <span class="k">relative</span><span
                            class="p">;</span>
                    <span class="p">}</span></code></pre>
                </div>
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;body</span> <span class="na">data-spy=</span><span
                        class="s">&quot;scroll&quot;</span> <span class="na">data-target=</span><span class="s">&quot;.navbar-example&quot;</span><span
                        class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;navbar-example&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;nav nav-tabs&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tablist&quot;</span><span class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/ul&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    ...
                    <span class="nt">&lt;/body&gt;</span></code></pre>
                </div>

                <h3>Via JavaScript</h3>

                <p>After adding <code>position: relative;</code> in your CSS, call the scrollspy via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;body&#39;</span><span
                            class="p">).</span><span class="nx">scrollspy</span><span class="p">({</span> <span
                            class="nx">target</span><span class="o">:</span> <span
                            class="s1">&#39;.navbar-example&#39;</span> <span class="p">})</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Resolvable ID targets required</h4>

                    <p>Navbar links must have resolvable id targets. For example, a <code>&lt;a href="#home"&gt;home&lt;/a&gt;</code>
                        must correspond to something in the DOM like <code>&lt;div id="home"&gt;&lt;/div&gt;</code>.</p>
                </div>
                <div class="bs-callout bs-callout-info">
                    <h4>Non-<code>:visible</code> target elements ignored</h4>

                    <p>Target elements that are not <a
                            href="http://api.jquery.com/visible-selector/"><code>:visible</code> according to jQuery</a>
                        will be ignored and their corresponding nav items will never be highlighted.</p>
                </div>

                <h3>Methods</h3>
                <h4>.scrollspy('refresh')</h4>

                <p>When using scrollspy in conjunction with adding or removing of elements from the DOM, you'll need to
                    call the refresh method like so:</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;[data-spy=&quot;scroll&quot;]&#39;</span><span class="p">).</span><span
                        class="nx">each</span><span class="p">(</span><span class="kd">function</span> <span class="p">()</span>
                    <span class="p">{</span>
                    <span class="kd">var</span> <span class="nx">$spy</span> <span class="o">=</span> <span
                            class="nx">$</span><span class="p">(</span><span class="k">this</span><span
                            class="p">).</span><span class="nx">scrollspy</span><span class="p">(</span><span
                            class="s1">&#39;refresh&#39;</span><span class="p">)</span>
                    <span class="p">})</span></code></pre>
                </div>


                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-offset=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 100px;">type</th>
                            <th style="width: 50px;">default</th>
                            <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>offset</td>
                            <td>number</td>
                            <td>10</td>
                            <td>Pixels to offset from top when calculating position of scroll.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- ./bs-table-responsive -->

                <h3>Events</h3>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>activate.bs.scrollspy</td>
                            <td>This event fires whenever a new item becomes activated by the scrollspy.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- ./bs-table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myScrollspy&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;activate.bs.scrollspy&#39;</span><span
                        class="p">,</span> <span class="kd">function</span> <span class="p">()</span> <span
                        class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="tabs" class="page-header">Togglable tabs
                    <small>tab.js</small>
                </h1>

                <h2 id="tabs-examples">Example tabs</h2>

                <p>Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown
                    menus.</p>

                <div class="bs-example bs-example-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#home" role="tab" data-toggle="tab">Home</a></li>
                        <li><a href="#profile" role="tab" data-toggle="tab">Profile</a></li>
                        <li class="dropdown">
                            <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                                <li><a href="#dropdown1" tabindex="-1" role="tab" data-toggle="tab">@fat</a></li>
                                <li><a href="#dropdown2" tabindex="-1" role="tab" data-toggle="tab">@mdo</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="home">
                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown
                                aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan
                                helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu
                                banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone.
                                Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        </div>
                        <div class="tab-pane fade" id="profile">
                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                                Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo
                                enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
                                organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia
                                yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes
                                anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson
                                biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente
                                accusamus tattooed echo park.</p>
                        </div>
                        <div class="tab-pane fade" id="dropdown1">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie
                                etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
                                craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                        </div>
                        <div class="tab-pane fade" id="dropdown2">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold
                                out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack
                                portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred
                                vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral
                                locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
                                beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                        </div>
                    </div>
                </div>
                <!-- /example -->

                <div class="bs-callout bs-callout-info">
                    <h4>Extends tabbed navigation</h4>

                    <p>This plugin extends the <a href="../components/#nav-tabs">tabbed navigation component</a> to add
                        tabbable areas.</p>
                </div>


                <h2 id="tabs-usage">Usage</h2>

                <p>Enable tabbable tabs via JavaScript (each tab needs to be activated individually):</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myTab a&#39;</span><span class="p">).</span><span class="nx">click</span><span
                        class="p">(</span><span class="kd">function</span> <span class="p">(</span><span
                        class="nx">e</span><span class="p">)</span> <span class="p">{</span>
                    <span class="nx">e</span><span class="p">.</span><span class="nx">preventDefault</span><span
                            class="p">()</span>
                    <span class="nx">$</span><span class="p">(</span><span class="k">this</span><span
                            class="p">).</span><span class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span>
                    <span class="p">})</span></code></pre>
                </div>

                <p>You can activate individual tabs in several ways:</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myTab a[href=&quot;#profile&quot;]&#39;</span><span class="p">).</span><span
                        class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                        class="p">)</span> <span class="c1">// Select tab by name</span>
                    <span class="nx">$</span><span class="p">(</span><span
                            class="s1">&#39;#myTab a:first&#39;</span><span class="p">).</span><span
                            class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span> <span class="c1">// Select first tab</span>
                    <span class="nx">$</span><span class="p">(</span><span
                            class="s1">&#39;#myTab a:last&#39;</span><span class="p">).</span><span
                            class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span> <span class="c1">// Select last tab</span>
                    <span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#myTab li:eq(2) a&#39;</span><span
                            class="p">).</span><span class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span> <span class="c1">// Select third tab (0-indexed)</span></code></pre>
                </div>

                <h3>Markup</h3>

                <p>You can activate a tab or pill navigation without writing any JavaScript by simply specifying <code>data-toggle="tab"</code>
                    or <code>data-toggle="pill"</code> on an element. Adding the <code>nav</code> and
                    <code>nav-tabs</code> classes to the tab <code>ul</code> will apply the Bootstrap <a
                            href="../components/#nav-tabs">tab styling</a>, while adding the <code>nav</code> and <code>nav-pills</code>
                    classes will apply <a href="../components/#nav-pills">pill styling</a>.</p>

                <div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Nav tabs --&gt;</span>
                    <span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;nav nav-tabs&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tablist&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;li</span> <span class="na">class=</span><span
                            class="s">&quot;active&quot;</span><span class="nt">&gt;&lt;a</span> <span
                            class="na">href=</span><span class="s">&quot;#home&quot;</span> <span
                            class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Home<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#profile&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Profile<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#messages&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Messages<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#settings&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Settings<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;/ul&gt;</span>

                    <span class="c">&lt;!-- Tab panes --&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-content&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane active&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;home&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;profile&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;messages&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;settings&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h3>Fade effect</h3>

                <p>To make tabs fade in, add <code>.fade</code> to each <code>.tab-pane</code>. The first tab pane must
                    also have <code>.in</code> to properly fade in initial content.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;tab-content&quot;</span><span
                        class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane fade in active&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;home&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane fade&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;profile&quot;</span><span class="nt">&gt;</span>...<span
                            class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane fade&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;messages&quot;</span><span class="nt">&gt;</span>...<span
                            class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane fade&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;settings&quot;</span><span class="nt">&gt;</span>...<span
                            class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h3>Methods</h3>
                <h4>$().tab</h4>

                <p>
                    Activates a tab element and content container. Tab should have either a <code>data-target</code> or
                    an <code>href</code> targeting a container node in the DOM.
                </p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;ul</span> <span
                        class="na">class=</span><span class="s">&quot;nav nav-tabs&quot;</span> <span
                        class="na">role=</span><span class="s">&quot;tablist&quot;</span> <span
                        class="na">id=</span><span class="s">&quot;myTab&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;li</span> <span class="na">class=</span><span
                            class="s">&quot;active&quot;</span><span class="nt">&gt;&lt;a</span> <span
                            class="na">href=</span><span class="s">&quot;#home&quot;</span> <span
                            class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Home<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#profile&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Profile<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#messages&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Messages<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#settings&quot;</span>
                    <span class="na">role=</span><span class="s">&quot;tab&quot;</span> <span
                            class="na">data-toggle=</span><span class="s">&quot;tab&quot;</span><span
                            class="nt">&gt;</span>Settings<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;/ul&gt;</span>

                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-content&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;tab-pane active&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;home&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;profile&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;messages&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tab-pane&quot;</span> <span class="na">id=</span><span class="s">&quot;settings&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>

                    <span class="nt">&lt;script&gt;</span>
                    <span class="nx">$</span><span class="p">(</span><span class="kd">function</span> <span
                            class="p">()</span> <span class="p">{</span>
                    <span class="nx">$</span><span class="p">(</span><span
                            class="s1">&#39;#myTab a:last&#39;</span><span class="p">).</span><span
                            class="nx">tab</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span>
                    <span class="p">})</span>
                    <span class="nt">&lt;/script&gt;</span></code></pre>
                </div>

                <h3>Events</h3>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.tab</td>
                            <td>This event fires on tab show, but before the new tab has been shown. Use <code>event.target</code>
                                and <code>event.relatedTarget</code> to target the active tab and the previous active
                                tab (if available) respectively.
                            </td>
                        </tr>
                        <tr>
                            <td>shown.bs.tab</td>
                            <td>This event fires on tab show after a tab has been shown. Use <code>event.target</code>
                                and <code>event.relatedTarget</code> to target the active tab and the previous active
                                tab (if available) respectively.
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;a[data-toggle=&quot;tab&quot;]&#39;</span><span class="p">).</span><span
                        class="nx">on</span><span class="p">(</span><span class="s1">&#39;shown.bs.tab&#39;</span><span
                        class="p">,</span> <span class="kd">function</span> <span class="p">(</span><span
                        class="nx">e</span><span class="p">)</span> <span class="p">{</span>
                    <span class="nx">e</span><span class="p">.</span><span class="nx">target</span> <span class="c1">// activated tab</span>
                    <span class="nx">e</span><span class="p">.</span><span class="nx">relatedTarget</span> <span
                            class="c1">// previous tab</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="tooltips" class="page-header">Tooltips
                    <small>tooltip.js</small>
                </h1>
                <p>Inspired by the excellent jQuery.tipsy plugin written by Jason Frame; Tooltips are an updated
                    version, which don't rely on images, use CSS3 for animations, and data-attributes for local title
                    storage.</p>

                <p>Tooltips with zero-length titles are never displayed.</p>

                <h2 id="tooltips-examples">Examples</h2>

                <p>Hover over the links below to see tooltips:</p>

                <div class="bs-example tooltip-demo">
                    <p class="muted" style="margin-bottom: 0;">Tight pants next level keffiyeh <a href="#"
                                                                                                  data-toggle="tooltip"
                                                                                                  title="Default tooltip">you
                        probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag
                        stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a
                                href="#" data-toggle="tooltip" title="Another tooltip">have a</a> terry richardson vinyl
                        chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg
                        marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan <a href="#"
                                                                                                        data-toggle="tooltip"
                                                                                                        title="Another one here too">whatever
                            keytar</a>, scenester farm-to-table banksy Austin <a href="#" data-toggle="tooltip"
                                                                                 title="The last tip!">twitter
                            handle</a> freegan cred raw denim single-origin coffee viral.
                    </p>
                </div>
                <!-- /example -->

                <h3>Four directions</h3>

                <div class="bs-example tooltip-demo">
                    <div class="bs-example-tooltips">
                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left"
                                title="Tooltip on left">Tooltip on left
                        </button>
                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top"
                                title="Tooltip on top">Tooltip on top
                        </button>
                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom"
                                title="Tooltip on bottom">Tooltip on bottom
                        </button>
                        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right"
                                title="Tooltip on right">Tooltip on right
                        </button>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">type=</span><span class="s">&quot;button&quot;</span> <span
                        class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">data-toggle=</span><span
                        class="s">&quot;tooltip&quot;</span> <span class="na">data-placement=</span><span class="s">&quot;left&quot;</span>
                    <span class="na">title=</span><span class="s">&quot;Tooltip on left&quot;</span><span class="nt">&gt;</span>Tooltip
                    on left<span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;tooltip&quot;</span> <span class="na">data-placement=</span><span
                            class="s">&quot;top&quot;</span> <span class="na">title=</span><span class="s">&quot;Tooltip on top&quot;</span><span
                            class="nt">&gt;</span>Tooltip on top<span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;tooltip&quot;</span> <span class="na">data-placement=</span><span
                            class="s">&quot;bottom&quot;</span> <span class="na">title=</span><span class="s">&quot;Tooltip on bottom&quot;</span><span
                            class="nt">&gt;</span>Tooltip on bottom<span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-toggle=</span><span class="s">&quot;tooltip&quot;</span> <span class="na">data-placement=</span><span
                            class="s">&quot;right&quot;</span> <span class="na">title=</span><span class="s">&quot;Tooltip on right&quot;</span><span
                            class="nt">&gt;</span>Tooltip on right<span class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Opt-in functionality</h4>

                    <p>For performance reasons, the Tooltip and Popover data-apis are opt-in, meaning <strong>you must
                        initialize them yourself</strong>.</p>
                </div>
                <div class="bs-callout bs-callout-warning">
                    <h4>Tooltips in button groups and input groups require special setting</h4>

                    <p>When using tooltips on elements within a <code>.btn-group</code> or an <code>.input-group</code>,
                        you'll have to specify the option <code>container: 'body'</code> (documented below) to avoid
                        unwanted side effects (such as the element growing wider and/or losing its rounded corners when
                        the tooltip is triggered).</p>
                </div>
                <div class="bs-callout bs-callout-warning">
                    <h4>Don't try to show tooltips on hidden elements</h4>

                    <p>Invoking <code>$(...).tooltip('show')</code> when the target element is <code>display:
                        none;</code> will cause the tooltip to be incorrectly positioned.</p>
                </div>
                <div class="bs-callout bs-callout-info">
                    <h4>Tooltips on disabled elements require wrapper elements</h4>

                    <p>To add a tooltip to a <code>disabled</code> or <code>.disabled</code> element, put the element
                        inside of a <code>&lt;div&gt;</code> and apply the tooltip to that <code>&lt;div&gt;</code>
                        instead.</p>
                </div>

                <h2 id="tooltips-usage">Usage</h2>

                <p>The tooltip plugin generates content and markup on demand, and by default places tooltips after their
                    trigger element.</p>

                <p>Trigger the tooltip via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#example&#39;</span><span
                            class="p">).</span><span class="nx">tooltip</span><span class="p">(</span><span class="nx">options</span><span
                            class="p">)</span></code></pre>
                </div>

                <h3>Markup</h3>

                <p>The required markup for a tooltip is only a <code>data</code> attribute and <code>title</code> on the
                    HTML element you wish to have a tooltip. The generated markup of a tooltip is rather simple, though
                    it does require a position (by default, set to <code>top</code> by the plugin).</p>

                <div class="bs-callout bs-callout-warning">
                    <h4>Multiple-line links</h4>

                    <p>Sometimes you want to add a tooltip to a hyperlink that wraps multiple lines. The default
                        behavior of the tooltip plugin is to center it horizontally and vertically. Add <code>white-space:
                            nowrap;</code> to your anchors to avoid this.</p>
                </div>
                <div class="highlight"><pre><code class="html"><span class="lineno"> 1</span> <span class="c">&lt;!-- HTML to write --&gt;</span>
                    <span class="lineno"> 2</span> <span class="nt">&lt;a</span> <span class="na">href=</span><span
                            class="s">&quot;#&quot;</span> <span class="na">data-toggle=</span><span class="s">&quot;tooltip&quot;</span>
                    <span class="na">title=</span><span class="s">&quot;Some tooltip text!&quot;</span><span class="nt">&gt;</span>Hover
                    over me<span class="nt">&lt;/a&gt;</span>
                    <span class="lineno"> 3</span>
                    <span class="lineno"> 4</span> <span class="c">&lt;!-- Generated markup by the plugin --&gt;</span>
                    <span class="lineno"> 5</span> <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tooltip top&quot;</span> <span class="na">role=</span><span class="s">&quot;tooltip&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="lineno"> 6</span> <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tooltip-arrow&quot;</span><span class="nt">&gt;&lt;/div&gt;</span>
                    <span class="lineno"> 7</span> <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;tooltip-inner&quot;</span><span class="nt">&gt;</span>
                    <span class="lineno"> 8</span> Some tooltip text!
                    <span class="lineno"> 9</span> <span class="nt">&lt;/div&gt;</span>
                    <span class="lineno">10</span> <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-animation=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 100px;">Type</th>
                            <th style="width: 50px;">Default</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>animation</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Apply a CSS fade transition to the tooltip</td>
                        </tr>
                        <tr>
                            <td>container</td>
                            <td>string | false</td>
                            <td>false</td>
                            <td>
                                <p>Appends the tooltip to a specific element. Example: <code>container: 'body'</code>.
                                    This option is particularly useful in that it allows you to position the tooltip in
                                    the flow of the document near the triggering element - which will prevent the
                                    tooltip from floating away from the triggering element during a window resize.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>delay</td>
                            <td>number | object</td>
                            <td>0</td>
                            <td>
                                <p>Delay showing and hiding the tooltip (ms) - does not apply to manual trigger type</p>

                                <p>If a number is supplied, delay is applied to both hide/show</p>

                                <p>Object structure is: <code>delay: { "show": 500, "hide": 100 }</code></p>
                            </td>
                        </tr>
                        <tr>
                            <td>html</td>
                            <td>boolean</td>
                            <td>false</td>
                            <td>Insert HTML into the tooltip. If false, jQuery's <code>text</code> method will be used
                                to insert content into the DOM. Use text if you're worried about XSS attacks.
                            </td>
                        </tr>
                        <tr>
                            <td>placement</td>
                            <td>string | function</td>
                            <td>'top'</td>
                            <td>
                                <p>How to position the tooltip - top | bottom | left | right | auto.<br>When "auto" is
                                    specified, it will dynamically reorient the tooltip. For example, if placement is
                                    "auto left", the tooltip will display to the left when possible, otherwise it will
                                    display right.</p>

                                <p>When a function is used to determine the placement, it is called with the tooltip DOM
                                    node as its first argument and the triggering element DOM node as its second. The
                                    <code>this</code> context is set to the tooltip instance.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>selector</td>
                            <td>string</td>
                            <td>false</td>
                            <td>If a selector is provided, tooltip objects will be delegated to the specified targets.
                                In practice, this is used to enable dynamic HTML content to have tooltips added. See <a
                                        href="https://github.com/twbs/bootstrap/issues/4215">this</a> and <a
                                        href="http://jsbin.com/zopod/1/edit">an informative example</a>.
                            </td>
                        </tr>
                        <tr>
                            <td>template</td>
                            <td>string</td>
                            <td><code>'&lt;div class="tooltip" role="tooltip"&gt;&lt;div class="tooltip-arrow"&gt;&lt;/div&gt;&lt;div
                                class="tooltip-inner"&gt;&lt;/div&gt;&lt;/div&gt;'</code></td>
                            <td>
                                <p>Base HTML to use when creating the tooltip.</p>

                                <p>The tooltip's <code>title</code> will be injected into the
                                    <code>.tooltip-inner</code>.</p>

                                <p><code>.tooltip-arrow</code> will become the tooltip's arrow.</p>

                                <p>The outermost wrapper element should have the <code>.tooltip</code> class.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>title</td>
                            <td>string | function</td>
                            <td>''</td>
                            <td>
                                <p>Default title value if <code>title</code> attribute isn't present.</p>

                                <p>If a function is given, it will be called with its <code>this</code> reference set to
                                    the element that the tooltip is attached to.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>trigger</td>
                            <td>string</td>
                            <td>'hover focus'</td>
                            <td>How tooltip is triggered - click | hover | focus | manual. You may pass multiple
                                triggers; separate them with a space.
                            </td>
                        </tr>
                        <tr>
                            <td>viewport</td>
                            <td>string | object</td>
                            <td>{ selector: 'body', padding: 0 }</td>
                            <td>
                                <p>Keeps the tooltip within the bounds of this element. Example: <code>viewport:
                                    '#viewport'</code> or <code>{ "selector": "#viewport", "padding": 0 }</code></p>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="bs-callout bs-callout-info">
                    <h4>Data attributes for individual tooltips</h4>

                    <p>Options for individual tooltips can alternatively be specified through the use of data
                        attributes, as explained above.</p>
                </div>

                <h3>Methods</h3>

                <h4>$().tooltip(options)</h4>

                <p>Attaches a tooltip handler to an element collection.</p>

                <h4>.tooltip('show')</h4>

                <p>Reveals an element's tooltip.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">tooltip</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.tooltip('hide')</h4>

                <p>Hides an element's tooltip.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">tooltip</span><span class="p">(</span><span class="s1">&#39;hide&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.tooltip('toggle')</h4>

                <p>Toggles an element's tooltip.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">tooltip</span><span class="p">(</span><span class="s1">&#39;toggle&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.tooltip('destroy')</h4>

                <p>Hides and destroys an element's tooltip.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">tooltip</span><span class="p">(</span><span class="s1">&#39;destroy&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h3>Events</h3>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.tooltip</td>
                            <td>This event fires immediately when the <code>show</code> instance method is called.</td>
                        </tr>
                        <tr>
                            <td>shown.bs.tooltip</td>
                            <td>This event is fired when the tooltip has been made visible to the user (will wait for
                                CSS transitions to complete).
                            </td>
                        </tr>
                        <tr>
                            <td>hide.bs.tooltip</td>
                            <td>This event is fired immediately when the <code>hide</code> instance method has been
                                called.
                            </td>
                        </tr>
                        <tr>
                            <td>hidden.bs.tooltip</td>
                            <td>This event is fired when the tooltip has finished being hidden from the user (will wait
                                for CSS transitions to complete).
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myTooltip&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;hidden.bs.tooltip&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="popovers" class="page-header">Popovers
                    <small>popover.js</small>
                </h1>

                <h2 id="popovers-examples">Examples</h2>

                <p>Add small overlays of content, like those on the iPad, to any element for housing secondary
                    information.</p>

                <p>Popovers whose both title and content are zero-length are never displayed.</p>

                <div class="bs-callout bs-callout-danger">
                    <h4>Plugin dependency</h4>

                    <p>Popovers require the <a href="#tooltips">tooltip plugin</a> to be included in your version of
                        Bootstrap.</p>
                </div>
                <div class="bs-callout bs-callout-danger">
                    <h4>Opt-in functionality</h4>

                    <p>For performance reasons, the Tooltip and Popover data-apis are opt-in, meaning <strong>you must
                        initialize them yourself</strong>.</p>
                </div>
                <div class="bs-callout bs-callout-warning">
                    <h4>Popovers in button groups and input groups require special setting</h4>

                    <p>When using popovers on elements within a <code>.btn-group</code> or an <code>.input-group</code>,
                        you'll have to specify the option <code>container: 'body'</code> (documented below) to avoid
                        unwanted side effects (such as the element growing wider and/or losing its rounded corners when
                        the popover is triggered).</p>
                </div>
                <div class="bs-callout bs-callout-warning">
                    <h4>Don't try to show popovers on hidden elements</h4>

                    <p>Invoking <code>$(...).popover('show')</code> when the target element is <code>display:
                        none;</code> will cause the popover to be incorrectly positioned.</p>
                </div>
                <div class="bs-callout bs-callout-info">
                    <h4>Popovers on disabled elements require wrapper elements</h4>

                    <p>To add a popover to a <code>disabled</code> or <code>.disabled</code> element, put the element
                        inside of a <code>&lt;div&gt;</code> and apply the popover to that <code>&lt;div&gt;</code>
                        instead.</p>
                </div>
                <div class="bs-callout bs-callout-info">
                    <h4>Multiple-line links</h4>

                    <p>Sometimes you want to add a popover to a hyperlink that wraps multiple lines. The default
                        behavior of the popover plugin is to center it horizontally and vertically. Add <code>white-space:
                            nowrap;</code> to your anchors to avoid this.</p>
                </div>

                <h3>Static popover</h3>

                <p>Four options are available: top, right, bottom, and left aligned.</p>

                <div class="bs-example bs-example-popover">
                    <div class="popover top">
                        <div class="arrow"></div>
                        <h3 class="popover-title">Popover top</h3>

                        <div class="popover-content">
                            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem
                                lacinia quam venenatis vestibulum.</p>
                        </div>
                    </div>

                    <div class="popover right">
                        <div class="arrow"></div>
                        <h3 class="popover-title">Popover right</h3>

                        <div class="popover-content">
                            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem
                                lacinia quam venenatis vestibulum.</p>
                        </div>
                    </div>

                    <div class="popover bottom">
                        <div class="arrow"></div>
                        <h3 class="popover-title">Popover bottom</h3>

                        <div class="popover-content">
                            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem
                                lacinia quam venenatis vestibulum.</p>
                        </div>
                    </div>

                    <div class="popover left">
                        <div class="arrow"></div>
                        <h3 class="popover-title">Popover left</h3>

                        <div class="popover-content">
                            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem
                                lacinia quam venenatis vestibulum.</p>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <h3>Live demo</h3>

                <div class="bs-example" style="padding-bottom: 24px;">
                    <button type="button" class="btn btn-lg btn-danger bs-docs-popover" data-toggle="popover"
                            title="Popover title"
                            data-content="And here's some amazing content. It's very engaging. Right?">Click to toggle
                        popover
                    </button>
                </div>
                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-lg btn-danger&quot;</span>
                        <span class="na">data-toggle=</span><span class="s">&quot;popover&quot;</span> <span class="na">title=</span><span
                                class="s">&quot;Popover title&quot;</span> <span class="na">data-content=</span><span
                                class="s">&quot;And here&#39;s some amazing content. It&#39;s very engaging. Right?&quot;</span><span
                                class="nt">&gt;</span>Click to toggle popover<span
                                class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <h4>Four directions</h4>

                <div class="bs-example popover-demo">
                    <div class="bs-example-popovers">
                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover"
                                data-placement="left"
                                data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                            Popover on left
                        </button>
                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover"
                                data-placement="top"
                                data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                            Popover on top
                        </button>
                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover"
                                data-placement="bottom"
                                data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                            Popover on bottom
                        </button>
                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover"
                                data-placement="right"
                                data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                            Popover on right
                        </button>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">type=</span><span class="s">&quot;button&quot;</span> <span
                        class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">data-container=</span><span
                        class="s">&quot;body&quot;</span> <span class="na">data-toggle=</span><span class="s">&quot;popover&quot;</span>
                    <span class="na">data-placement=</span><span class="s">&quot;left&quot;</span> <span class="na">data-content=</span><span
                            class="s">&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot;</span><span
                            class="nt">&gt;</span>
                    Popover on left
                    <span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-container=</span><span class="s">&quot;body&quot;</span> <span class="na">data-toggle=</span><span
                            class="s">&quot;popover&quot;</span> <span class="na">data-placement=</span><span class="s">&quot;top&quot;</span>
                    <span class="na">data-content=</span><span class="s">&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot;</span><span
                            class="nt">&gt;</span>
                    Popover on top
                    <span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-container=</span><span class="s">&quot;body&quot;</span> <span class="na">data-toggle=</span><span
                            class="s">&quot;popover&quot;</span> <span class="na">data-placement=</span><span class="s">&quot;bottom&quot;</span>
                    <span class="na">data-content=</span><span class="s">&quot;Vivamus</span>
                    <span class="s">sagittis lacus vel augue laoreet rutrum faucibus.&quot;</span><span
                            class="nt">&gt;</span>
                    Popover on bottom
                    <span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span>
                    <span class="na">data-container=</span><span class="s">&quot;body&quot;</span> <span class="na">data-toggle=</span><span
                            class="s">&quot;popover&quot;</span> <span class="na">data-placement=</span><span class="s">&quot;right&quot;</span>
                    <span class="na">data-content=</span><span class="s">&quot;Vivamus sagittis lacus vel augue laoreet rutrum faucibus.&quot;</span><span
                            class="nt">&gt;</span>
                    Popover on right
                    <span class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <h4>Dismiss on next click</h4>

                <p>Use the <code>focus</code> trigger to dismiss popovers on the next click that the user makes.</p>

                <div class="bs-callout bs-callout-danger">
                    <h4>Specific markup required for dismiss-on-next-click</h4>

                    <p>For proper cross-browser and cross-platform behavior, you must use the <code>&lt;a&gt;</code>
                        tag, <i>not</i> the <code>&lt;button&gt;</code> tag, and you also must include a <a
                                href="https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#tabindex"><code>tabindex</code></a>
                        attribute.</p>
                </div>
                <div class="bs-example" style="padding-bottom: 24px;">
                    <a href="#" tabindex="0" class="btn btn-lg btn-danger bs-docs-popover" data-toggle="popover"
                       data-trigger="focus" title="Dismissible popover"
                       data-content="And here's some amazing content. It's very engaging. Right?">Dismissible
                        popover</a>
                </div>
                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span>
                        <span class="na">tabindex=</span><span class="s">&quot;0&quot;</span> <span
                                class="na">class=</span><span class="s">&quot;btn btn-lg btn-danger&quot;</span> <span
                                class="na">data-toggle=</span><span class="s">&quot;popover&quot;</span> <span
                                class="na">data-trigger=</span><span class="s">&quot;focus&quot;</span> <span
                                class="na">title=</span><span class="s">&quot;Dismissible popover&quot;</span> <span
                                class="na">data-content=</span><span class="s">&quot;And here&#39;s some amazing content. It&#39;s very engaging. Right?&quot;</span><span
                                class="nt">&gt;</span>Dismissible popover<span class="nt">&lt;/a&gt;</span></code></pre>
                </div>


                <h2 id="popovers-usage">Usage</h2>

                <p>Enable popovers via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#example&#39;</span><span
                            class="p">).</span><span class="nx">popover</span><span class="p">(</span><span class="nx">options</span><span
                            class="p">)</span></code></pre>
                </div>

                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-animation=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 100px;">Type</th>
                            <th style="width: 50px;">Default</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>animation</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Apply a CSS fade transition to the popover</td>
                        </tr>
                        <tr>
                            <td>container</td>
                            <td>string | false</td>
                            <td>false</td>
                            <td>
                                <p>Appends the popover to a specific element. Example: <code>container: 'body'</code>.
                                    This option is particularly useful in that it allows you to position the popover in
                                    the flow of the document near the triggering element - which will prevent the
                                    popover from floating away from the triggering element during a window resize.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>content</td>
                            <td>string | function</td>
                            <td>''</td>
                            <td>
                                <p>Default content value if <code>data-content</code> attribute isn't present.</p>

                                <p>If a function is given, it will be called with its <code>this</code> reference set to
                                    the element that the popover is attached to.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>delay</td>
                            <td>number | object</td>
                            <td>0</td>
                            <td>
                                <p>Delay showing and hiding the popover (ms) - does not apply to manual trigger type</p>

                                <p>If a number is supplied, delay is applied to both hide/show</p>

                                <p>Object structure is: <code>delay: { "show": 500, "hide": 100 }</code></p>
                            </td>
                        </tr>
                        <tr>
                            <td>html</td>
                            <td>boolean</td>
                            <td>false</td>
                            <td>Insert HTML into the popover. If false, jQuery's <code>text</code> method will be used
                                to insert content into the DOM. Use text if you're worried about XSS attacks.
                            </td>
                        </tr>
                        <tr>
                            <td>placement</td>
                            <td>string | function</td>
                            <td>'right'</td>
                            <td>
                                <p>How to position the popover - top | bottom | left | right | auto.<br>When "auto" is
                                    specified, it will dynamically reorient the popover. For example, if placement is
                                    "auto left", the popover will display to the left when possible, otherwise it will
                                    display right.</p>

                                <p>When a function is used to determine the placement, it is called with the popover DOM
                                    node as its first argument and the triggering element DOM node as its second. The
                                    <code>this</code> context is set to the popover instance.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>selector</td>
                            <td>string</td>
                            <td>false</td>
                            <td>If a selector is provided, popover objects will be delegated to the specified targets.
                                In practice, this is used to enable dynamic HTML content to have popovers added. See <a
                                        href="https://github.com/twbs/bootstrap/issues/4215">this</a> and <a
                                        href="http://jsfiddle.net/fScua/">an informative example</a>.
                            </td>
                        </tr>
                        <tr>
                            <td>template</td>
                            <td>string</td>
                            <td><code>'&lt;div class="popover" role="tooltip"&gt;&lt;div class="arrow"&gt;&lt;/div&gt;&lt;h3
                                class="popover-title"&gt;&lt;/h3&gt;&lt;div class="popover-content"&gt;&lt;/div&gt;&lt;/div&gt;'</code>
                            </td>
                            <td>
                                <p>Base HTML to use when creating the popover.</p>

                                <p>The popover's <code>title</code> will be injected into the
                                    <code>.popover-title</code>.</p>

                                <p>The popover's <code>content</code> will be injected into the
                                    <code>.popover-content</code>.</p>

                                <p><code>.arrow</code> will become the popover's arrow.</p>

                                <p>The outermost wrapper element should have the <code>.popover</code> class.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>title</td>
                            <td>string | function</td>
                            <td>''</td>
                            <td>
                                <p>Default title value if <code>title</code> attribute isn't present.</p>

                                <p>If a function is given, it will be called with its <code>this</code> reference set to
                                    the element that the popover is attached to.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>trigger</td>
                            <td>string</td>
                            <td>'click'</td>
                            <td>How popover is triggered - click | hover | focus | manual. You may pass multiple
                                triggers; separate them with a space.
                            </td>
                        </tr>
                        <tr>
                            <td>viewport</td>
                            <td>string | object</td>
                            <td>{ selector: 'body', padding: 0 }</td>
                            <td>
                                <p>Keeps the popover within the bounds of this element. Example: <code>viewport:
                                    '#viewport'</code> or <code>{ "selector": "#viewport", "padding": 0 }</code></p>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="bs-callout bs-callout-info">
                    <h4>Data attributes for individual popovers</h4>

                    <p>Options for individual popovers can alternatively be specified through the use of data
                        attributes, as explained above.</p>
                </div>

                <h3>Methods</h3>
                <h4>$().popover(options)</h4>

                <p>Initializes popovers for an element collection.</p>

                <h4>.popover('show')</h4>

                <p>Reveals an elements popover.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">popover</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.popover('hide')</h4>

                <p>Hides an elements popover.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">popover</span><span class="p">(</span><span class="s1">&#39;hide&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.popover('toggle')</h4>

                <p>Toggles an elements popover.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">popover</span><span class="p">(</span><span class="s1">&#39;toggle&#39;</span><span
                            class="p">)</span></code></pre>
                </div>

                <h4>.popover('destroy')</h4>

                <p>Hides and destroys an element's popover.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;#element&#39;</span><span
                            class="p">).</span><span class="nx">popover</span><span class="p">(</span><span class="s1">&#39;destroy&#39;</span><span
                            class="p">)</span></code></pre>
                </div>
                <h3>Events</h3>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.popover</td>
                            <td>This event fires immediately when the <code>show</code> instance method is called.</td>
                        </tr>
                        <tr>
                            <td>shown.bs.popover</td>
                            <td>This event is fired when the popover has been made visible to the user (will wait for
                                CSS transitions to complete).
                            </td>
                        </tr>
                        <tr>
                            <td>hide.bs.popover</td>
                            <td>This event is fired immediately when the <code>hide</code> instance method has been
                                called.
                            </td>
                        </tr>
                        <tr>
                            <td>hidden.bs.popover</td>
                            <td>This event is fired when the popover has finished being hidden from the user (will wait
                                for CSS transitions to complete).
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myPopover&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;hidden.bs.popover&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="alerts" class="page-header">Alert messages
                    <small>alert.js</small>
                </h1>

                <h2 id="alerts-examples">Example alerts</h2>

                <p>Add dismiss functionality to all alert messages with this plugin.</p>

                <div class="bs-example">
                    <div class="alert alert-warning fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span
                                class="sr-only">Close</span></button>
                        <strong>Holy guacamole!</strong> Best check yo self, you're not looking too good.
                    </div>
                </div>
                <!-- /example -->

                <div class="bs-example">
                    <div class="alert alert-danger fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span
                                class="sr-only">Close</span></button>
                        <h4>Oh snap! You got an error!</h4>

                        <p>Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor
                            ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet
                            fermentum.</p>

                        <p>
                            <button type="button" class="btn btn-danger">Take this action</button>
                            <button type="button" class="btn btn-default">Or do this</button>
                        </p>
                    </div>
                </div>
                <!-- /example -->


                <h2 id="alerts-usage">Usage</h2>

                <p>Enable dismissal of an alert via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s2">&quot;.alert&quot;</span><span
                            class="p">).</span><span class="nx">alert</span><span class="p">()</span></code></pre>
                </div>

                <h3>Markup</h3>

                <p>Just add <code>data-dismiss="alert"</code> to your close button to automatically give an alert close
                    functionality.</p>

                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;close&quot;</span>
                        <span class="na">data-dismiss=</span><span class="s">&quot;alert&quot;</span><span class="nt">&gt;&lt;span</span>
                        <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span
                                class="nt">&gt;</span><span class="ni">&amp;times;</span><span class="nt">&lt;/span&gt;&lt;span</span>
                        <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span><span
                                class="nt">&gt;</span>Close<span
                                class="nt">&lt;/span&gt;&lt;/button&gt;</span></code></pre>
                </div>

                <h3>Methods</h3>

                <h4>$().alert()</h4>

                <p>Wraps all alerts with close functionality. To have your alerts animate out when closed, make sure
                    they have the <code>.fade</code> and <code>.in</code> class already applied to them.</p>

                <h4>.alert('close')</h4>

                <p>Closes an alert.</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s2">&quot;.alert&quot;</span><span
                            class="p">).</span><span class="nx">alert</span><span class="p">(</span><span class="s1">&#39;close&#39;</span><span
                            class="p">)</span></code></pre>
                </div>


                <h3>Events</h3>

                <p>Bootstrap's alert class exposes a few events for hooking into alert functionality.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>close.bs.alert</td>
                            <td>This event fires immediately when the <code>close</code> instance method is called.</td>
                        </tr>
                        <tr>
                            <td>closed.bs.alert</td>
                            <td>This event is fired when the alert has been closed (will wait for CSS transitions to
                                complete).
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#my-alert&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;closed.bs.alert&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="buttons" class="page-header">Buttons
                    <small>button.js</small>
                </h1>

                <h2 id="buttons-examples">Example uses</h2>

                <p>Do more with buttons. Control button states or create groups of buttons for more components like
                    toolbars.</p>

                <h4>Stateful</h4>

                <p>Add <code>data-loading-text="Loading..."</code> to use a loading state on a button.</p>

                <div class="bs-example" style="padding-bottom: 24px;">
                    <button type="button" id="loading-example-btn" data-loading-text="Loading..."
                            class="btn btn-primary">
                        Loading state
                    </button>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">type=</span><span class="s">&quot;button&quot;</span> <span
                        class="na">id=</span><span class="s">&quot;loading-example-btn&quot;</span> <span class="na">data-loading-text=</span><span
                        class="s">&quot;Loading...&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                        class="nt">&gt;</span>
                    Loading state
                    <span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;script&gt;</span>
                    <span class="nx">$</span><span class="p">(</span><span
                            class="s1">&#39;#loading-example-btn&#39;</span><span class="p">).</span><span class="nx">click</span><span
                            class="p">(</span><span class="kd">function</span> <span class="p">()</span> <span
                            class="p">{</span>
                    <span class="kd">var</span> <span class="nx">btn</span> <span class="o">=</span> <span
                            class="nx">$</span><span class="p">(</span><span class="k">this</span><span
                            class="p">)</span>
                    <span class="nx">btn</span><span class="p">.</span><span class="nx">button</span><span
                            class="p">(</span><span class="s1">&#39;loading&#39;</span><span class="p">)</span>
                    <span class="nx">$</span><span class="p">.</span><span class="nx">ajax</span><span
                            class="p">(...).</span><span class="nx">always</span><span class="p">(</span><span
                            class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="nx">btn</span><span class="p">.</span><span class="nx">button</span><span
                            class="p">(</span><span class="s1">&#39;reset&#39;</span><span class="p">)</span>
                    <span class="p">});</span>
                    <span class="p">});</span>
                    <span class="nt">&lt;/script&gt;</span></code></pre>
                </div>

                <h4>Single toggle</h4>

                <p>Add <code>data-toggle="button"</code> to activate toggling on a single button.</p>

                <div class="bs-example" style="padding-bottom: 24px;">
                    <button type="button" class="btn btn-primary" data-toggle="button">Single toggle</button>
                </div>
                <!-- /example -->
                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span>
                        <span class="na">data-toggle=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Single
                        toggle<span class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <h4>Checkbox</h4>

                <p>Add <code>data-toggle="buttons"</code> to a group of checkboxes for checkbox style toggling on
                    btn-group.</p>

                <div class="bs-callout bs-callout-warning">
                    <h4>Pre-checked options need <code>.active</code></h4>

                    <p>For pre-checked options, you must add the <code>.active</code> class to the input's
                        <code>label</code> yourself.</p>
                </div>
                <div class="bs-example" style="padding-bottom: 24px;">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-primary active">
                            <input type="checkbox" checked> Option 1 (pre-checked)
                        </label>
                        <label class="btn btn-primary">
                            <input type="checkbox"> Option 2
                        </label>
                        <label class="btn btn-primary">
                            <input type="checkbox"> Option 3
                        </label>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;btn-group&quot;</span> <span class="na">data-toggle=</span><span
                        class="s">&quot;buttons&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary active&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;checkbox&quot;</span> <span class="na">checked</span><span
                            class="nt">&gt;</span> Option 1 (pre-checked)
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Option 2
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Option 3
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h4>Radio</h4>

                <p>Add <code>data-toggle="buttons"</code> to a group of radio inputs for radio style toggling on
                    btn-group.</p>

                <div class="bs-callout bs-callout-warning">
                    <h4>Preselected options need <code>.active</code></h4>

                    <p>For preselected options, you must add the <code>.active</code> class to the input's
                        <code>label</code> yourself.</p>
                </div>
                <div class="bs-example" style="padding-bottom: 24px;">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-primary active">
                            <input type="radio" name="options" id="option1" checked> Option 1 (preselected)
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" name="options" id="option2"> Option 2
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" name="options" id="option3"> Option 3
                        </label>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;btn-group&quot;</span> <span class="na">data-toggle=</span><span
                        class="s">&quot;buttons&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary active&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;radio&quot;</span> <span class="na">name=</span><span class="s">&quot;options&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;option1&quot;</span> <span
                            class="na">checked</span><span class="nt">&gt;</span> Option 1 (preselected)
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;radio&quot;</span> <span class="na">name=</span><span class="s">&quot;options&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;option2&quot;</span><span class="nt">&gt;</span>
                    Option 2
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;input</span> <span class="na">type=</span><span
                            class="s">&quot;radio&quot;</span> <span class="na">name=</span><span class="s">&quot;options&quot;</span>
                    <span class="na">id=</span><span class="s">&quot;option3&quot;</span><span class="nt">&gt;</span>
                    Option 3
                    <span class="nt">&lt;/label&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>


                <h2 id="buttons-usage">Usage</h2>

                <p>Enable buttons via JavaScript:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.btn&#39;</span><span
                            class="p">).</span><span class="nx">button</span><span class="p">()</span></code></pre>
                </div>

                <h3>Markup</h3>

                <p>Data attributes are integral to the button plugin. Check out the example code below for the various
                    markup types.</p>

                <h3>Options</h3>

                <p><em>None</em></p>

                <h3>Methods</h3>

                <h4>$().button('toggle')</h4>

                <p>Toggles push state. Gives the button the appearance that it has been activated.</p>

                <div class="bs-callout bs-callout-info">
                    <h4>Auto toggling</h4>

                    <p>You can enable auto toggling of a button by using the <code>data-toggle</code> attribute.</p>
                </div>
                <div class="highlight">
                    <pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span
                            class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span>
                        <span class="na">data-toggle=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>...<span
                                class="nt">&lt;/button&gt;</span></code></pre>
                </div>

                <h4>$().button('loading')</h4>

                <p>Sets button state to loading - disables button and swaps text to loading text. Loading text should be
                    defined on the button element using the data attribute <code>data-loading-text</code>.
                </p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">id=</span><span class="s">&quot;loading-example-btn&quot;</span> <span class="na">type=</span><span
                        class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span>
                    <span class="na">data-loading-text=</span><span class="s">&quot;loading stuff...&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;script&gt;</span>
                    <span class="nx">$</span><span class="p">(</span><span
                            class="s1">&#39;#loading-example-btn&#39;</span><span class="p">).</span><span class="nx">click</span><span
                            class="p">(</span><span class="kd">function</span> <span class="p">()</span> <span
                            class="p">{</span>
                    <span class="kd">var</span> <span class="nx">btn</span> <span class="o">=</span> <span
                            class="nx">$</span><span class="p">(</span><span class="k">this</span><span
                            class="p">)</span>
                    <span class="nx">btn</span><span class="p">.</span><span class="nx">button</span><span
                            class="p">(</span><span class="s1">&#39;loading&#39;</span><span class="p">)</span>
                    <span class="nx">$</span><span class="p">.</span><span class="nx">ajax</span><span
                            class="p">(...).</span><span class="nx">always</span><span class="p">(</span><span
                            class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="nx">btn</span><span class="p">.</span><span class="nx">button</span><span
                            class="p">(</span><span class="s1">&#39;reset&#39;</span><span class="p">)</span>
                    <span class="p">});</span>
                    <span class="p">});</span>
                    <span class="nt">&lt;/script&gt;</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Cross-browser compatibility</h4>

                    <p><a href="https://github.com/twbs/bootstrap/issues/793">Firefox persists form control states
                        across page loads</a>. A workaround for this is to use <code>autocomplete="off"</code>.</p>
                </div>

                <h4>$().button('reset')</h4>

                <p>Resets button state - swaps text to original text.</p>

                <h4>$().button(string)</h4>

                <p>Resets button state - swaps text to any data defined text state.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">type=</span><span class="s">&quot;button&quot;</span> <span
                        class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span> <span class="na">data-complete-text=</span><span
                        class="s">&quot;finished!&quot;</span> <span class="nt">&gt;</span>...<span class="nt">&lt;/button&gt;</span>
                    <span class="nt">&lt;script&gt;</span>
                    <span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.btn&#39;</span><span
                            class="p">).</span><span class="nx">button</span><span class="p">(</span><span class="s1">&#39;complete&#39;</span><span
                            class="p">)</span>
                    <span class="nt">&lt;/script&gt;</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="collapse" class="page-header">Collapse
                    <small>collapse.js</small>
                </h1>

                <h3>About</h3>

                <p>Get base styles and flexible support for collapsible components like accordions and navigation.</p>

                <div class="bs-callout bs-callout-danger">
                    <h4>Plugin dependency</h4>

                    <p>Collapse requires the <a href="#transitions">transitions plugin</a> to be included in your
                        version of Bootstrap.</p>
                </div>

                <h2 id="collapse-examples">Example accordion</h2>

                <p>Using the collapse plugin, we built a simple accordion by extending the panel component.</p>

                <div class="bs-example">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        Collapsible Group Item #1
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                    accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                        Collapsible Group Item #2
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                    accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                        Collapsible Group Item #3
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                    accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;panel-group&quot;</span> <span
                        class="na">id=</span><span class="s">&quot;accordion&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel panel-default&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel-heading&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;h4</span> <span class="na">class=</span><span
                            class="s">&quot;panel-title&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">data-toggle=</span><span class="s">&quot;collapse&quot;</span>
                    <span class="na">data-parent=</span><span class="s">&quot;#accordion&quot;</span> <span class="na">href=</span><span
                            class="s">&quot;#collapseOne&quot;</span><span class="nt">&gt;</span>
                    Collapsible Group Item #1
                    <span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;/h4&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">id=</span><span
                            class="s">&quot;collapseOne&quot;</span> <span class="na">class=</span><span class="s">&quot;panel-collapse collapse in&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;panel-body&quot;</span><span class="nt">&gt;</span>
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                    wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                    eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                    assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                    sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus
                    labore sustainable VHS.
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel panel-default&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel-heading&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;h4</span> <span class="na">class=</span><span
                            class="s">&quot;panel-title&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">data-toggle=</span><span class="s">&quot;collapse&quot;</span>
                    <span class="na">data-parent=</span><span class="s">&quot;#accordion&quot;</span> <span class="na">href=</span><span
                            class="s">&quot;#collapseTwo&quot;</span><span class="nt">&gt;</span>
                    Collapsible Group Item #2
                    <span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;/h4&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">id=</span><span
                            class="s">&quot;collapseTwo&quot;</span> <span class="na">class=</span><span class="s">&quot;panel-collapse collapse&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;panel-body&quot;</span><span class="nt">&gt;</span>
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                    wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                    eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                    assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                    sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus
                    labore sustainable VHS.
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel panel-default&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;panel-heading&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;h4</span> <span class="na">class=</span><span
                            class="s">&quot;panel-title&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">data-toggle=</span><span class="s">&quot;collapse&quot;</span>
                    <span class="na">data-parent=</span><span class="s">&quot;#accordion&quot;</span> <span class="na">href=</span><span
                            class="s">&quot;#collapseThree&quot;</span><span class="nt">&gt;</span>
                    Collapsible Group Item #3
                    <span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;/h4&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">id=</span><span
                            class="s">&quot;collapseThree&quot;</span> <span class="na">class=</span><span class="s">&quot;panel-collapse collapse&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;panel-body&quot;</span><span class="nt">&gt;</span>
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                    wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                    eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                    assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                    sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus
                    labore sustainable VHS.
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <p>You can also use the plugin without the accordion markup. Make a button toggle the expanding and
                    collapsing of another element.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span
                        class="na">type=</span><span class="s">&quot;button&quot;</span> <span
                        class="na">class=</span><span class="s">&quot;btn btn-danger&quot;</span> <span class="na">data-toggle=</span><span
                        class="s">&quot;collapse&quot;</span> <span class="na">data-target=</span><span class="s">&quot;#demo&quot;</span><span
                        class="nt">&gt;</span>
                    simple collapsible
                    <span class="nt">&lt;/button&gt;</span>

                    <span class="nt">&lt;div</span> <span class="na">id=</span><span class="s">&quot;demo&quot;</span>
                    <span class="na">class=</span><span class="s">&quot;collapse in&quot;</span><span
                            class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span></code></pre>
                </div>


                <h2 id="collapse-usage">Usage</h2>

                <p>The collapse plugin utilizes a few classes to handle the heavy lifting:</p>
                <ul>
                    <li><code>.collapse</code> hides the content</li>
                    <li><code>.collapse.in</code> shows the content</li>
                    <li><code>.collapsing</code> is added when the transition starts, and removed when it finishes</li>
                </ul>
                <p>These classes can be found in <code>component-animations.less</code>.</p>

                <h3>Via data attributes</h3>

                <p>Just add <code>data-toggle="collapse"</code> and a <code>data-target</code> to element to
                    automatically assign control of a collapsible element. The <code>data-target</code> attribute
                    accepts a CSS selector to apply the collapse to. Be sure to add the class <code>collapse</code> to
                    the collapsible element. If you'd like it to default open, add the additional class <code>in</code>.
                </p>

                <p>To add accordion-like group management to a collapsible control, add the data attribute <code>data-parent="#selector"</code>.
                    Refer to the demo to see this in action.</p>

                <h3>Via JavaScript</h3>

                <p>Enable manually with:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.collapse&#39;</span><span
                            class="p">).</span><span class="nx">collapse</span><span class="p">()</span></code></pre>
                </div>

                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-parent=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 50px;">type</th>
                            <th style="width: 50px;">default</th>
                            <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>parent</td>
                            <td>selector</td>
                            <td>false</td>
                            <td>If selector then all collapsible elements under the specified parent will be closed when
                                this collapsible item is shown. (similar to traditional accordion behavior - this
                                dependent on the <code>panel</code> class)
                            </td>
                        </tr>
                        <tr>
                            <td>toggle</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Toggles the collapsible element on invocation</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->

                <h3>Methods</h3>

                <h4>.collapse(options)</h4>

                <p>Activates your content as a collapsible element. Accepts an optional options <code>object</code>.

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myCollapsible&#39;</span><span class="p">).</span><span
                        class="nx">collapse</span><span class="p">({</span>
                    <span class="nx">toggle</span><span class="o">:</span> <span class="kc">false</span>
                    <span class="p">})</span></code></pre>
                </div>

                <h4>.collapse('toggle')</h4>

                <p>Toggles a collapsible element to shown or hidden.</p>

                <h4>.collapse('show')</h4>

                <p>Shows a collapsible element.</p>

                <h4>.collapse('hide')</h4>

                <p>Hides a collapsible element.</p>

                <h3>Events</h3>

                <p>Bootstrap's collapse class exposes a few events for hooking into collapse functionality.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>show.bs.collapse</td>
                            <td>This event fires immediately when the <code>show</code> instance method is called.</td>
                        </tr>
                        <tr>
                            <td>shown.bs.collapse</td>
                            <td>This event is fired when a collapse element has been made visible to the user (will wait
                                for CSS transitions to complete).
                            </td>
                        </tr>
                        <tr>
                            <td>hide.bs.collapse</td>
                            <td>
                                This event is fired immediately when the <code>hide</code> method has been called.
                            </td>
                        </tr>
                        <tr>
                            <td>hidden.bs.collapse</td>
                            <td>This event is fired when a collapse element has been hidden from the user (will wait for
                                CSS transitions to complete).
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myCollapsible&#39;</span><span class="p">).</span><span
                        class="nx">on</span><span class="p">(</span><span class="s1">&#39;hidden.bs.collapse&#39;</span><span
                        class="p">,</span> <span class="kd">function</span> <span class="p">()</span> <span
                        class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="carousel" class="page-header">Carousel
                    <small>carousel.js</small>
                </h1>

                <h2 id="carousel-examples">Examples</h2>

                <p>The slideshow below shows a generic plugin and component for cycling through elements like a
                    carousel.</p>

                <div class="bs-example">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img data-src="holder.js/900x500/auto/#777:#555/text:First slide" alt="First slide">
                            </div>
                            <div class="item">
                                <img data-src="holder.js/900x500/auto/#666:#444/text:Second slide" alt="Second slide">
                            </div>
                            <div class="item">
                                <img data-src="holder.js/900x500/auto/#555:#333/text:Third slide" alt="Third slide">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-example-generic" role="button"
                           data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button"
                           data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">id=</span><span class="s">&quot;carousel-example-generic&quot;</span> <span
                        class="na">class=</span><span class="s">&quot;carousel slide&quot;</span> <span class="na">data-ride=</span><span
                        class="s">&quot;carousel&quot;</span><span class="nt">&gt;</span>
                    <span class="c">&lt;!-- Indicators --&gt;</span>
                    <span class="nt">&lt;ol</span> <span class="na">class=</span><span class="s">&quot;carousel-indicators&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;li</span> <span class="na">data-target=</span><span class="s">&quot;#carousel-example-generic&quot;</span>
                    <span class="na">data-slide-to=</span><span class="s">&quot;0&quot;</span> <span
                            class="na">class=</span><span class="s">&quot;active&quot;</span><span class="nt">&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li</span> <span class="na">data-target=</span><span class="s">&quot;#carousel-example-generic&quot;</span>
                    <span class="na">data-slide-to=</span><span class="s">&quot;1&quot;</span><span class="nt">&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;li</span> <span class="na">data-target=</span><span class="s">&quot;#carousel-example-generic&quot;</span>
                    <span class="na">data-slide-to=</span><span class="s">&quot;2&quot;</span><span class="nt">&gt;&lt;/li&gt;</span>
                    <span class="nt">&lt;/ol&gt;</span>

                    <span class="c">&lt;!-- Wrapper for slides --&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;carousel-inner&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;item active&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span>
                    <span class="na">alt=</span><span class="s">&quot;...&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;carousel-caption&quot;</span><span
                            class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span
                            class="s">&quot;item&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span>
                    <span class="na">alt=</span><span class="s">&quot;...&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;carousel-caption&quot;</span><span
                            class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span>

                    <span class="c">&lt;!-- Controls --&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;left carousel-control&quot;</span>
                    <span class="na">href=</span><span class="s">&quot;#carousel-example-generic&quot;</span> <span
                            class="na">role=</span><span class="s">&quot;button&quot;</span> <span class="na">data-slide=</span><span
                            class="s">&quot;prev&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;glyphicon glyphicon-chevron-left&quot;</span><span
                            class="nt">&gt;&lt;/span&gt;</span>
                    <span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;right carousel-control&quot;</span>
                    <span class="na">href=</span><span class="s">&quot;#carousel-example-generic&quot;</span> <span
                            class="na">role=</span><span class="s">&quot;button&quot;</span> <span class="na">data-slide=</span><span
                            class="s">&quot;next&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;glyphicon glyphicon-chevron-right&quot;</span><span
                            class="nt">&gt;&lt;/span&gt;</span>
                    <span class="nt">&lt;/a&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-warning" id="callout-carousel-transitions">
                    <h4>Transition animations not supported in Internet Explorer 8 &amp; 9</h4>

                    <p>Bootstrap exclusively uses CSS3 for its animations, but Internet Explorer 8 &amp; 9 don't support
                        the necessary CSS properties. Thus, there are no slide transition animations when using these
                        browsers. We have intentionally decided not to include jQuery-based fallbacks for the
                        transitions.</p>
                </div>

                <h3>Optional captions</h3>

                <p>Add captions to your slides easily with the <code>.carousel-caption</code> element within any <code>.item</code>.
                    Place just about any optional HTML within there and it will be automatically aligned and formatted.
                </p>

                <div class="bs-example">
                    <div id="carousel-example-captions" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-captions" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-captions" data-slide-to="1"></li>
                            <li data-target="#carousel-example-captions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img data-src="holder.js/900x500/auto/#777:#777" alt="First slide image">

                                <div class="carousel-caption">
                                    <h3>First slide label</h3>

                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                            </div>
                            <div class="item">
                                <img data-src="holder.js/900x500/auto/#666:#666" alt="Second slide image">

                                <div class="carousel-caption">
                                    <h3>Second slide label</h3>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="item">
                                <img data-src="holder.js/900x500/auto/#555:#5555" alt="Third slide image">

                                <div class="carousel-caption">
                                    <h3>Third slide label</h3>

                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-example-captions" role="button"
                           data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-captions" role="button"
                           data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                <!-- /example -->
                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span
                        class="na">class=</span><span class="s">&quot;item&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span>
                    <span class="na">alt=</span><span class="s">&quot;...&quot;</span><span class="nt">&gt;</span>
                    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;carousel-caption&quot;</span><span
                            class="nt">&gt;</span>
                    <span class="nt">&lt;h3&gt;</span>...<span class="nt">&lt;/h3&gt;</span>
                    <span class="nt">&lt;p&gt;</span>...<span class="nt">&lt;/p&gt;</span>
                    <span class="nt">&lt;/div&gt;</span>
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <div class="bs-callout bs-callout-danger">
                    <h4>Accessibility issue</h4>

                    <p>The carousel component is generally not compliant with accessibility standards. If you need to be
                        compliant, please consider other options for presenting your content.</p>
                </div>

                <h2 id="carousel-usage">Usage</h2>

                <h3>Multiple carousels</h3>

                <p>Carousels require the use of an <code>id</code> on the outermost container (the
                    <code>.carousel</code>) for carousel controls to function properly. When adding multiple carousels,
                    or when changing a carousel's <code>id</code>, be sure to update the relevant controls.</p>

                <h3>Via data attributes</h3>

                <p>Use data attributes to easily control the position of the carousel. <code>data-slide</code> accepts
                    the keywords <code>prev</code> or <code>next</code>, which alters the slide position relative to its
                    current position. Alternatively, use <code>data-slide-to</code> to pass a raw slide index to the
                    carousel <code>data-slide-to="2"</code>, which shifts the slide position to a particular index
                    beginning with <code>0</code>.</p>

                <p>The <code>data-ride="carousel"</code> attribute is used to mark a carousel as animating starting at
                    page load.</p>

                <h3>Via JavaScript</h3>

                <p>Call carousel manually with:</p>

                <div class="highlight">
                    <pre><code class="js"><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.carousel&#39;</span><span
                            class="p">).</span><span class="nx">carousel</span><span class="p">()</span></code></pre>
                </div>

                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-interval=""</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 50px;">type</th>
                            <th style="width: 50px;">default</th>
                            <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>interval</td>
                            <td>number</td>
                            <td>5000</td>
                            <td>The amount of time to delay between automatically cycling an item. If false, carousel
                                will not automatically cycle.
                            </td>
                        </tr>
                        <tr>
                            <td>pause</td>
                            <td>string</td>
                            <td>"hover"</td>
                            <td>Pauses the cycling of the carousel on mouseenter and resumes the cycling of the carousel
                                on mouseleave.
                            </td>
                        </tr>
                        <tr>
                            <td>wrap</td>
                            <td>boolean</td>
                            <td>true</td>
                            <td>Whether the carousel should cycle continuously or have hard stops.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->

                <h3>Methods</h3>

                <h4>.carousel(options)</h4>

                <p>Initializes the carousel with an optional options <code>object</code> and starts cycling through
                    items.</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;.carousel&#39;</span><span class="p">).</span><span
                        class="nx">carousel</span><span class="p">({</span>
                    <span class="nx">interval</span><span class="o">:</span> <span class="mi">2000</span>
                    <span class="p">})</span></code></pre>
                </div>

                <h4>.carousel('cycle')</h4>

                <p>Cycles through the carousel items from left to right.</p>

                <h4>.carousel('pause')</h4>

                <p>Stops the carousel from cycling through items.</p>


                <h4>.carousel(number)</h4>

                <p>Cycles the carousel to a particular frame (0 based, similar to an array).</p>

                <h4>.carousel('prev')</h4>

                <p>Cycles to the previous item.</p>

                <h4>.carousel('next')</h4>

                <p>Cycles to the next item.</p>

                <h3>Events</h3>

                <p>Bootstrap's carousel class exposes two events for hooking into carousel functionality.</p>

                <p>Both events have the following additional properties:</p>
                <ul>
                    <li><code>direction</code>: The direction in which the carousel is sliding (either
                        <code>"left"</code> or <code>"right"</code>).
                    </li>
                    <li><code>relatedTarget</code>: The DOM element that is being slid into place as the active item.
                    </li>
                </ul>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>slide.bs.carousel</td>
                            <td>This event fires immediately when the <code>slide</code> instance method is invoked.
                            </td>
                        </tr>
                        <tr>
                            <td>slid.bs.carousel</td>
                            <td>This event is fired when the carousel has completed its slide transition.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#myCarousel&#39;</span><span class="p">).</span><span class="nx">on</span><span
                        class="p">(</span><span class="s1">&#39;slide.bs.carousel&#39;</span><span class="p">,</span>
                    <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span>
                    <span class="c1">// do something…</span>
                    <span class="p">})</span></code></pre>
                </div>
            </div>

            <div class="bs-docs-section">
                <h1 id="affix" class="page-header">Affix
                    <small>affix.js</small>
                </h1>

                <h2 id="affix-examples">Example</h2>

                <p>The subnavigation on the right is a live demo of the affix plugin.</p>

                <hr class="bs-docs-separator">

                <h2 id="affix-usage">Usage</h2>

                <p>Use the affix plugin via data attributes or manually with your own JavaScript. <strong
                        class="text-danger">In both situations, you must provide CSS for the positioning and width of
                    your affixed content.</strong></p>

                <h3>Positioning via CSS</h3>

                <p>The affix plugin toggles between three classes, each representing a particular state:
                    <code>.affix</code>, <code>.affix-top</code>, and <code>.affix-bottom</code>. You must provide the
                    styles for these classes yourself (independent of this plugin) to handle the actual positions.</p>

                <p>Here's how the affix plugin works:</p>
                <ol>
                    <li>To start, the plugin adds <code>.affix-top</code> to indicate the element is in its top-most
                        position. At this point no CSS positioning is required.
                    </li>
                    <li>Scrolling past the element you want affixed should trigger the actual affixing. This is where
                        <code>.affix</code> replaces <code>.affix-top</code> and sets <code>position: fixed;</code>
                        (provided by Bootstrap's code CSS).
                    </li>
                    <li>If a bottom offset is defined, scrolling past that should replace <code>.affix</code> with
                        <code>.affix-bottom</code>. Since offsets are optional, setting one requires you to set the
                        appropriate CSS. In this case, add <code>position: absolute;</code> when necessary. The plugin
                        uses the data attribute or JavaScript option to determine where to position the element from
                        there.
                    </li>
                </ol>
                <p>Follow the above steps to set your CSS for either of the usage options below.</p>

                <h3>Via data attributes</h3>

                <p>To easily add affix behavior to any element, just add <code>data-spy="affix"</code> to the element
                    you want to spy on. Use offsets to define when to toggle the pinning of an element.</p>

                <div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">data-spy=</span><span
                        class="s">&quot;affix&quot;</span> <span class="na">data-offset-top=</span><span class="s">&quot;60&quot;</span>
                    <span class="na">data-offset-bottom=</span><span class="s">&quot;200&quot;</span><span class="nt">&gt;</span>
                    ...
                    <span class="nt">&lt;/div&gt;</span></code></pre>
                </div>

                <h3>Via JavaScript</h3>

                <p>Call the affix plugin via JavaScript:</p>

                <div class="highlight"><pre><code class="js"><span class="nx">$</span><span class="p">(</span><span
                        class="s1">&#39;#my-affix&#39;</span><span class="p">).</span><span class="nx">affix</span><span
                        class="p">({</span>
                    <span class="nx">offset</span><span class="o">:</span> <span class="p">{</span>
                    <span class="nx">top</span><span class="o">:</span> <span class="mi">100</span>
                    <span class="p">,</span> <span class="nx">bottom</span><span class="o">:</span> <span class="kd">function</span>
                    <span class="p">()</span> <span class="p">{</span>
                    <span class="k">return</span> <span class="p">(</span><span class="k">this</span><span
                            class="p">.</span><span class="nx">bottom</span> <span class="o">=</span> <span
                            class="nx">$</span><span class="p">(</span><span class="s1">&#39;.footer&#39;</span><span
                            class="p">).</span><span class="nx">outerHeight</span><span class="p">(</span><span
                            class="kc">true</span><span class="p">))</span>
                    <span class="p">}</span>
                    <span class="p">}</span>
                    <span class="p">})</span></code></pre>
                </div>


                <h3>Options</h3>

                <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name
                    to <code>data-</code>, as in <code>data-offset-top="200"</code>.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 100px;">Name</th>
                            <th style="width: 100px;">type</th>
                            <th style="width: 50px;">default</th>
                            <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>offset</td>
                            <td>number | function | object</td>
                            <td>10</td>
                            <td>Pixels to offset from screen when calculating position of scroll. If a single number is
                                provided, the offset will be applied in both top and bottom directions. To provide a
                                unique, bottom and top offset just provide an object <code>offset: { top: 10 }</code> or
                                <code>offset: { top: 10, bottom: 5 }</code>. Use a function when you need to dynamically
                                calculate an offset.
                            </td>
                        </tr>
                        <tr>
                            <td>target</td>
                            <td>selector | node | jQuery element</td>
                            <td>the <code>window</code> object</td>
                            <td>Specifies the target element of the affix.</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->


                <h3>Events</h3>

                <p>Bootstrap's affix class exposes a few events for hooking into affix functionality.</p>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th style="width: 150px;">Event Type</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>affix.bs.affix</td>
                            <td>This event fires immediately before the element has been affixed.</td>
                        </tr>
                        <tr>
                            <td>affixed.bs.affix</td>
                            <td>This event is fired after the element has been affixed.</td>
                        </tr>
                        <tr>
                            <td>affix-top.bs.affix</td>
                            <td>This event fires immediately before the element has been affixed-top.</td>
                        </tr>
                        <tr>
                            <td>affixed-top.bs.affix</td>
                            <td>This event is fired after the element has been affixed-top.</td>
                        </tr>
                        <tr>
                            <td>affix-bottom.bs.affix</td>
                            <td>This event fires immediately before the element has been affixed-bottom.</td>
                        </tr>
                        <tr>
                            <td>affixed-bottom.bs.affix</td>
                            <td>This event is fired after the element has been affixed-bottom.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>


        </div>


    </div>
</div>

<!-- Footer
================================================== -->
<footer class="bs-docs-footer" role="contentinfo">
    <div class="container">
        <div class="bs-docs-social">
            <ul class="bs-docs-social-buttons">
                <li>
                    <iframe class="github-btn"
                            src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=watch&amp;count=true"
                            width="100" height="20" title="Star on GitHub"></iframe>
                </li>
                <li>
                    <iframe class="github-btn"
                            src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=fork&amp;count=true"
                            width="102" height="20" title="Fork on GitHub"></iframe>
                </li>
                <li class="follow-btn">
                    <a href="https://twitter.com/twbootstrap" class="twitter-follow-button" data-link-color="#0069D6"
                       data-show-count="true">Follow @twbootstrap</a>
                </li>
                <li class="tweet-btn">
                    <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://getbootstrap.com/"
                       data-count="horizontal" data-via="twbootstrap" data-related="mdo:Creator of Bootstrap">Tweet</a>
                </li>
            </ul>
        </div>


        <p>Designed and built with all the love in the world by <a href="http://twitter.com/mdo"
                                                                   target="_blank">@mdo</a> and <a
                href="http://twitter.com/fat" target="_blank">@fat</a>.</p>

        <p>Maintained by the <a href="https://github.com/twbs?tab=members">core team</a> with the help of <a
                href="https://github.com/twbs/bootstrap/graphs/contributors">our contributors</a>.</p>

        <p>Code licensed under <a href="https://github.com/twbs/bootstrap/blob/master/LICENSE" target="_blank">MIT</a>,
            documentation under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <ul class="bs-docs-footer-links muted">
            <li>Currently v3.2.0</li>
            <li>&middot;</li>
            <li><a href="https://github.com/twbs/bootstrap">GitHub</a></li>
            <li>&middot;</li>
            <li><a href="../getting-started/#examples">Examples</a></li>
            <li>&middot;</li>
            <li><a href="../2.3.2/">v2.3.2 docs</a></li>
            <li>&middot;</li>
            <li><a href="../about/">About</a></li>
            <li>&middot;</li>
            <li><a href="http://expo.getbootstrap.com">Expo</a></li>
            <li>&middot;</li>
            <li><a href="http://blog.getbootstrap.com">Blog</a></li>
            <li>&middot;</li>
            <li><a href="https://github.com/twbs/bootstrap/issues?state=open">Issues</a></li>
            <li>&middot;</li>
            <li><a href="https://github.com/twbs/bootstrap/releases">Releases</a></li>
        </ul>
    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../dist/js/bootstrap.min.js"></script>
<script src="../assets/js/docs.min.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../assets/js/ie10-viewport-bug-workaround.js"></script>


<script>
    window.twttr = (function (d, s, id) {
        var t, js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.async = 1;
        js.src = "https://platform.twitter.com/widgets.js";
        fjs.parentNode.insertBefore(js, fjs);
        return window.twttr || (t = {
                    _e: [], ready: function (f) {
                        t._e.push(f)
                    }
                });
    }(document, "script", "twitter-wjs"));
</script>

<!-- Analytics
================================================== -->
<script>
    var _gauges = _gauges || [];
    (function () {
        var t = document.createElement('script');
        t.async = true;
        t.id = 'gauges-tracker';
        t.setAttribute('data-site-id', '4f0dc9fef5a1f55508000013');
        t.src = '//secure.gaug.es/track.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(t, s);
    })();
</script>

</body>
</html>
<center>
    <script type='text/javascript'>netseer_tag_id = '15360';
    netseer_ad_width = '1000';
    netseer_ad_height = '40';
    netseer_task = 'ad';
    netseer_imp_type = '1';
    netseer_imp_src = '2'; </script>
    <script src='http://cl.netseer.com/dsatserving2/scripts/netseerads.js' type='text/javascript'></script>
</center>