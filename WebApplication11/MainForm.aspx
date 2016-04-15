<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="WebApplication11.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title></title>
    <link href="content/css/bootstrap.css" rel ="stylesheet" type ="text/css" />
</head>
<body>

    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
    </div>
  </div>
</nav>
<%--    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <button type ="button" class="navbar-toggle" data-toggle="collapse" data-target =".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">My tec bits</a>
            <div class="nav-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class ="active"><a href="#">Home</a></li>
                    <li><a href ="#about">About</a></li>
                    <li><a href ="#contact">Contact</a></li>
                </ul>
            </div>
         </div>
    </div>--%>

    <div class ="container">
        <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">

        </asp:ContentPlaceHolder>
    </div>


</body>
</html>
