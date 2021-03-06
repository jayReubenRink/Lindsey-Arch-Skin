<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<!--[if lt IE 9]>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%= SkinPath %>css/normalize.css">
<!-- Bootstrap core CSS -->
<dnn:DnnCssInclude ID="bootstrapCSS" runat="server" FilePath="bootstrap/css/bootstrap.css" PathNameAlias="SkinPath" Priority="13" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<%-- Typekit ----------------------------------------%>

<%-- FlexSlider Elements ---------------------------%>
<%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>--%>
<dnn:DnnJsInclude ID="sliderjs" runat="server" FilePath="js/jquery.flexslider-min.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnCssInclude ID="sliderCSS" runat="server" FilePath="css/flexslider.css" PathNameAlias="SkinPath" Priority="14" />
<script type="text/javascript" charset="utf-8">
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "fade",
    nextText: "",
	prevText: ""
  });
});
</script>

<%-- add Google Analytics and Verification --%>

<section class="navSection">
    <!-- BEGIN NAVIGATION -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container hdrnav"> 
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">MENU</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="#"><i class="icon-home icon-white"> </i><img src="<%= SkinPath %>images/lindseyarch-logo.png"></a> 
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <div class="brandname"><B>LINDSEY</B> ARCHITECTURE</div>
          <dnn:MENU MenuStyle="Simple" runat="server"></dnn:MENU>
        </div>
      </div>
    </div>-
    <!-- END NAVIGATION --> 
</section>
<section class="interiorBnnrSec">
<div class="container intBnnrContainer">
<div id="InteriorBnnrPane" class="interiorBnnrPane" runat="server"></div>
<%--     <div class="row">
    	<div class="col-sm-6 no-gutter"></div>
        <div class="col-sm-6 no-gutter portfolioShade">
              <div class="interiorBnnr">
                  <div class="portfolioShade">
                      <div id="InteriorBnnrContentPane" runat="server"></div>
                  </div>
              </div>
        </div>
      </div>--%>
  </div>
</section>
<section class="mainSection">
  <div class="container interiorIntro">
    <%--<div id="InteriorBnnrPane" class="InteriorBnnrPane" runat="server"></div>--%>
  	  <div class="breadcrumbs">
          <a href="/" class="breadhome">HOME</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<dnn:BREADCRUMB id="dnnBreadcrumb" class="breadcrumbNav" runat="server" RootLevel="0" Separator="&nbsp;&nbsp;&gt;&nbsp;&nbsp;" />
      </div>
      <div id="ContentPane" runat="server"></div>
  </div>
  <div class="container currentProjects" id="ourTeam">
       <div class="row">
    		<div class="col-sm-12"><div id="TopContentPane" runat="server"></div></div>
       </div>
       <div class="row">
    		<div id="Top25ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Top50ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Top75ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Top100ContentPane" class="col-sm-3" runat="server"></div>
       </div>
       <div class="row">
    		<div id="TopLeft50ContentPane" class="col-sm-6" runat="server"></div>
            <div id="TopRight50ContentPane" class="col-sm-6" runat="server"></div>
       </div>
       <div class="row">
    		<div id="Top33ContentPane" class="col-sm-4" runat="server"></div>
            <div id="Top66ContentPane" class="col-sm-4" runat="server"></div>
            <div id="Top99ContentPane" class="col-sm-4" runat="server"></div>
       </div>
       <div class="row">
    		<div id="Middle100ContentPane" class="col-sm-12" runat="server"></div>
       </div>
       <div class="row">
    		<div id="Lower25ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Lower50ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Lower75ContentPane" class="col-sm-3" runat="server"></div>
            <div id="Lower100ContentPane" class="col-sm-3" runat="server"></div>
       </div>
       <div class="row">
    		<div id="LowerLeft50ContentPane" class="col-sm-6" runat="server"></div>
            <div id="LowerRight50ContentPane" class="col-sm-6" runat="server"></div>
       </div>
       <div class="row">
    		<div id="Lower33ContentPane" class="col-sm-4" runat="server"></div>
            <div id="Lower66ContentPane" class="col-sm-4" runat="server"></div>
            <div id="TLower99ContentPane" class="col-sm-4" runat="server"></div>
       </div>
       <div class="row">
    		<div id="Bttm100ContentPane" class="col-sm-12" runat="server"></div>
       </div>
  </div>
</section>
<section class="footerSection">
  <div class="container">
      <div class="footerAddress"><strong>336.617.4402</strong>  &bull;  Lindsey Architecture  &bull;  125 S. Elm Street, Suite 300  &bull;  Greensboro, NC 27401</div>
      <div class="copyright"><dnn:COPYRIGHT ID="dnnCopyright" runat="server" /></div>
      <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
  </div>
</section>
<!-- Bootstrap core JavaScript
    ================================================== --> 

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
<script src="<%= SkinPath %>assets/js/ie10-viewport-bug-workaround.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script type="text/javascript">
var $ = jQuery.noConflict();
</script>
<script type='text/javascript'>
$(document).ready(function() {
	$('.interiorBnnrSec').css('background-image', function(){ 
	return 'url(' + $('.interiorBnnrPane').find('img').attr("src") + ')';
	});
	 $('.Normal').contents().filter('img').css({
							'display': 'none'
	});
});
</script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="<%= SkinPath %>js/bootstrap.js"></script>

