<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TemplatePage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/default_thank_you.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <header class="site-header" id="header">
			<h1 class="site-header__title" data-lead-id="site-header-title">THANK YOU!</h1>
		</header>

		<div class="main-content">
			<i class="fa fa-check main-content__checkmark" id="checkmark"></i>
			<p class="main-content__body" data-lead-id="main-content-body">Thanks a bunch for filling that out. It means a lot to us, just like you do! We really appreciate you giving us a moment of your time today. Thanks for being you.</p>
		</div>

		<div class="my-5">
			<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/View.aspx">Grid View</asp:HyperLink>
			<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/View_Repeater.aspx">Repeater View</asp:HyperLink>
		</div>
		

    </div>


</asp:Content>
