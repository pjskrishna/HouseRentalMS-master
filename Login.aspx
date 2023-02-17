<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HouseRentalMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/index.css" rel="stylesheet" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        .nav-link{
            color:#0077b5;
            font-size:18px;
            margin-right:10px;
        }
        .logo{
            margin-left:100px;
        }
        .box{
            margin-right:80px;
        }
        .nav li a:active{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="">
        <nav class="navbar navbar-default navbar-expand-sm fixed-top ">
            <div class="container-fluid">
                <div class="navbar-header">
                   
                    <a class="navbar-brand logo nav-link" href="<%= Page.ResolveUrl("~/index.aspx") %>">HouseRentalMS</a>
                </div>
                <ul class="nav navbar-nav box" id="navid">
                    <li>
                        <a href="<%= Page.ResolveUrl("~/index.aspx") %>" class="nav-link active first navbar-text">Home</a>
                    </li>
                    <li>
                        <a href="<%= Page.ResolveUrl("~/login.aspx") %>" class="nav-link float-right second ">Login</a>
                    </li>
                    <li>
                        <a href="<%= Page.ResolveUrl("~/signup.aspx") %>" class="nav-link float-right third ">Signup</a>
                    </li>  
                </ul> 
            </div>
        </nav>

        <div class="container text-center">
            <h3>Basic Navbar Example</h3>
        </div>
        <script>
            var a = document.querySelectorAll(".nav li a");
            for (var i = 0, length = a.length; i < length; i++) {
                a[i].onclick = function () {
                    var b = document.querySelector(".nav li a.active");
                    if (b) b.classList.remove("active");
                    this.parentNode.classList.add('active');
                };
            }
            console.log("working");
           //$(document).ready(function () {
           //     $('.nav .li').click(function (e) {
           //         $('.nav li').removeClass('active');
           //         //var $this = $(this);
           //         //if (!$this.hasClass('active') && $this.hasClass('second')) {
           //         //    $this.addClass('active');
           //         //}
           //     })
           // })
        </script>
        

    </form>
</body>
</html>