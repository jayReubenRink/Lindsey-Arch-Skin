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
<%--<section class="navSection">
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
          <ul class="nav navbar-nav">
             <li class="menu-item dropdown"><a href="<%= SkinPath %>#" class="dropdown-toggle" data-toggle="dropdown">Portfolio<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="menu-item"><a href="<%= SkinPath %>#">Community</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">Workplace</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">Live</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">Make</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">Keeping Busy</a></li>
              </ul>
            </li>
            <li class="menu-item dropdown"><a href="<%= SkinPath %>#" class="dropdown-toggle" data-toggle="dropdown">Approach<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="menu-item dropdown dropdown-submenu"><a href="<%= SkinPath %>#" class="dropdown-toggle" data-toggle="dropdown">Clearing Floats</a>
                  <ul class="dropdown-menu">
                    <li class="menu-item "><a href="<%= SkinPath %>#">Page with comments</a></li>
                    <li class="menu-item "><a href="<%= SkinPath %>#">Page with comments disabled</a></li>
                    <li class="menu-item dropdown dropdown-submenu"><a href="<%= SkinPath %>#" class="dropdown-toggle" data-toggle="dropdown">More</a>
                      <ul class="dropdown-menu">
                        <li><a href="<%= SkinPath %>#">3rd level link more options</a></li>
                        <li><a href="<%= SkinPath %>#">3rd level link</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="menu-item dropdown"><a href="<%= SkinPath %>#" class="dropdown-toggle" data-toggle="dropdown">About<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="menu-item"><a href="<%= SkinPath %>#">Our People</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">News</a></li>
                <li class="menu-item"><a href="<%= SkinPath %>#">Careers</a></li>
              </ul>
            </li>
            <li class="menu-item"><a href="<%= SkinPath %>#">Contact</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- END NAVIGATION --> 
</section>--%>
<section class="homeJquerySec">
  <div class="flexslider">
    <div id="SliderContentPane" runat="server"></div>
  </div>
</section>
<section class="mainSection">
  <div class="container homeintro">
      <div id="ContentPane" runat="server"></div>
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
</script>-
<script src="<%= SkinPath %>js/utilities.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="<%= SkinPath %>js/bootstrap.js"></script>

