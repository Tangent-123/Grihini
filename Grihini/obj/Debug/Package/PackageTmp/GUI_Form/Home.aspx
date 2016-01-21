<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Grihini.GUI_Form.Home" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../CSS/b_jqueryscript.css" rel="stylesheet" type="text/css" />
    <script src="../JS/b_latestmin.js" type="text/javascript"></script>
    <script src="../JS/b_immersive.js" type="text/javascript"></script>
    <link href="../CSS/b_immersive.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />


    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/newarrival_style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/product_slider.css" rel="stylesheet" type="text/css" />
    <script src="../JS/product_fixel.js" type="text/javascript"></script>

<div class="wrapper" style="background-color:#c6c6c6;">
<div style="width:1024px; margin:0 auto; height:30px; border:1px solid #cdcdcd; background-color:#c6c6c6;">
<div class="h_quicklink">Go to</div>
<div class="h_quicklink_arrow"><img src="../Images/quick_arrow.png" /></div>

<div class="white_area_lab">
<div class="lab">
<ul>

<li><a href="aboutus.aspx">About Us</a></li>
<li><a href="OUR_ORIGIN.aspx">Our Origin</a></li>
<li><a href="ourvalues.aspx">Our Values</a></li>
<li><a href="contact.aspx">Contact Us</a></li>

</ul>
</div>
</div>


</div>
</div>

<div class="main">
<div class="page_container">
<div id="immersive_slider">
<div class="slide" data-blurred="../Images/slide1_blurred.jpg">
<div class="content">
<h2><a href="#" target="_blank">Besan Laddu</a></h2>
<p>Laddu or laddoo are ball-shaped sweets popular in the Indian Subcontinent. Laddus are made of flour, minced dough and sugar with other ingredients that vary by recipe. They are often served at festive or religious occasions.</p>
</div>
<div class="image"> <a href="#" target="_blank"> <img src="../Images/slide1.jpg" alt="Slider 1"> </a> </div>
</div>
<div class="slide" data-blurred="../Images/slide2_blurred.jpg">
<div class="content">
<h2><a href="#" target="_blank">BucketListly Apps</a></h2>
<p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
</div>
<div class="image"> <a href="#" target="_blank"> <img src="../Images/slide2.jpg" alt="Slider 1"></a> </div>
</div>
<div class="slide" data-blurred="../Images/slide3_blurred.jpg">
<div class="content">
<h2><a href="#" target="_blank">The Pete Design</a></h2>
<p>It’s never been easier to watch YouTube on the big screen
              Send your favorite YouTube videos from your Android phone or tablet to TV with the touch of a button. It’s easy. No wires, no setup, no nothing. Find out more here.</p>
</div>
<div class="image"> <a href="#" target="_blank"><img src="../Images/slide3.jpg" alt="Slider 1"></a> </div>
</div>
<a href="#" class="is-prev">&laquo;</a> <a href="#" class="is-next">&raquo;</a> </div>
</div>
</div>


<script type="text/javascript">
    $(document).ready(function () {
        $("#immersive_slider").immersive_slider({
            container: ".main"
        });
    });

    </script> 


<div class="shadow-one">
<div class="wrapper">

<div class="main-wrapper">
<div class="main-home">
<%--<div class="banner">
<div class="banner-one">

<div class="sleekslider">
			<!-- Slider Pages -->
			<div class="slide active bg-1">
				<div class="slide-container">
					<div class="slide-content">

					</div>
				</div>
               
			</div>
             </a>
			<div class="slide bg-2">
				<div class="slide-container">
					<div class="slide-content">

					</div>
				</div>				
			</div>
			<div class="slide bg-3">
				<div class="slide-container">
					<div class="slide-content">

					</div>
				</div>				
			</div>
			<div class="slide bg-4">
				<div class="slide-container">
					<div class="slide-content">

					</div>
				</div>				
			</div>
			<div class="slide bg-5">
				<div class="slide-container">
					<div class="slide-content">
                   
					</div>
				</div>				
			</div>
			<!-- Navigation Tabs -->
			<nav class="tabs">
				<div class="tab-container">
					<ul>
						<li class="current"><a href="#">
                        <div class="useclass"> &nbsp; &nbsp; &nbsp; &nbsp; Masala Part</div>
                        <div class="useclass2">Shop Now >></div>
                        </a></li>
						<li><a href="#">
                        <div class="useclass"> &nbsp; &nbsp; &nbsp; &nbsp; Masala Part</div>
                        <div class="useclass2">Shop Now >></div>       
                        </a></li>
						<li><a href="#">
                        <div class="useclass"> &nbsp; &nbsp; &nbsp; &nbsp; Masala Part</div>
                        <div class="useclass2">Shop Now >></div>                         
                        </a></li>
						<li><a href="#">
                        <div class="useclass"> &nbsp; &nbsp; &nbsp; &nbsp; Grihini Udyog</div>
                        <div class="useclass2">Read More >></div>        
                        </a></li>
						<li><a href="#">
                        <div class="useclass"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; All Product</div>
                        <div class="useclass2">Read More >></div>    
                        </a></li>
					</ul>
				</div>
			</nav>

		</div>

    <link href="../CSS/screen.css" rel="stylesheet" type="text/css" />

    <script src="../JS/sleekslider.js" type="text/javascript"></script>
    <script src="../JS/appslider.js" type="text/javascript"></script>
            
</div>

<div class="new-arrival">

<div class="content" style="width:265px;height:454px;overflow:hidden;">
		<div id="slider">
			<a href="#"><img src="../Images/newarrival_i1.png"/></a>
			<a href="#"><img src="../Images/newarrival_i2.png"/></a>
			<a href="#"><img src="../Images/newarrival_i3.png"/></a>
			<a href="#"><img src="../Images/newarrival_i4.png"/></a>
			<a href="#"><img src="../Images/newarrival_i5.jpg"/></a>
		</div>
	</div>

    <script src="../JS/arrival_vmc.js" type="text/javascript"></script>
<script>
    $('#slider').vmcSlider({
        width: 600,
        height: 450,
        gridCol: 10,
        gridRow: 5,
        gridVertical: 20,
        gridHorizontal: 10,
        autoPlay: true,
        ascending: true,
        effects: [
			'fade', 'fadeLeft', 'fadeRight', 'fadeTop', 'fadeBottom', 'fadeTopLeft', 'fadeBottomRight',
			'blindsLeft', 'blindsRight', 'blindsTop', 'blindsBottom', 'blindsTopLeft', 'blindsBottomRight',
			'curtainLeft', 'curtainRight', 'interlaceLeft', 'interlaceRight', 'mosaic', 'bomb', 'fumes'
		],
        ie6Tidy: false,
        random: true,
        duration: 2000,
        speed: 900
    });
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>


</div>
</div>--%>


<div class="sellingproduct">

<div class="sellingproduct-one">
<div class="selling-two">
<div class="selling-three">SELLING PRODUCTS</div>
</div>


<div class="home-product">
<div class="home-product-one"><a href="Products_View.aspx"><img src="../Images/p1.jpg" width="195" height="303" /></a></div>
<div class="home-product-two"><a href="Products_View.aspx"><img src="../Images/p3.jpg" width="341" height="303" /></a></div>
<div class="home-product-three"><a href="Products_View.aspx"><img src="../Images/p2.jpg" width="195" height="303" /></a></div>
</div>


<div class="sellingproduct-five">
<div class="selling-two">
<div class="selling-three">ALL PRODUCTS</div>
</div>


<div class="home-product-twenty">
<ul id="flexiselDemo3" style="height:122px;">
    <li><a href="Products_View.aspx"><img src="../Images/c1.png" height="122px"/></a></li>
    <li><a href="Products_View.aspx"><img src="../Images/c2.png" height="122px" /></a></li>
    <li><a href="Products_View.aspx"><img src="../Images/c3.png" height="122px" /></a></li>
    <li><a href="Products_View.aspx"><img src="../Images/c4.png" height="122px" /></a></li>
    <li><a href="Products_View.aspx"><img src="../Images/c5.png" height="122px" /></a></li> 
    <li><a href="Products_View.aspx"><img src="../Images/c6.png" height="122px" /></a></li>
    <li><a href="Products_View.aspx"><img src="../Images/c7.png" height="122px" /></a></li>    
    <li><a href="Products_View.aspx"><img src="../Images/c8.png" height="122px" /></a></li> 
                                                          
</ul>    



<script type="text/javascript">

    $(window).load(function () {
        $("#flexiselDemo1").flexisel();
        $("#flexiselDemo2").flexisel({
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });

        $("#flexiselDemo3").flexisel({
            visibleItems: 5,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });

        $("#flexiselDemo4").flexisel({
            clone: false
        });

    });
</script>




</div>



</div>
</div> 


<div class="right-body">
<div class="girhini-udyog" style="width:265px; height:345px; margin-top:-1px; background-color:White;"><img src="../Images/lo1.png" /></div>

<div style="float:left; width:265px; height:168px; margin-top:10px;"><img src="../Images/weare.jpg" /></div>


</div>
</div>

</div>

</div>
</div>

</div>

<section class="ha-waypoint" data-animate-down="ha-header-small" data-animate-up="ha-header-large">
<div class="wrapper" style="background-color:White; padding-bottom:30px;">
<div class="main-wrapper">


<div class="choose-grihini">
<div class="choose-grihini-txt">WHY CHOOSE THE GRIHINI</div>
</div>

<div class="choose-grihini-information">Under the able guidance of our visionary mentor Mrs. Leelatai Moolgaonkar, Grihini was established in 1973 by seven women. Grihini employees relatives of Tata Motors and disadvantaged women from the local community and imparts trainings on various skills and makes them employable for a respectable job. Grihini aims at providing sustainable livelihoods and economic independence to its employees. Being a true epitome of a cooperative welfare society, a profit sharing philosophy and collective decision making is followed. The arms of Grihini extend far into the local community of women in Pune. The employees don’t just get the benefits of a basic salary but enjoy work life balance as well as various employee benefits. Under the stable leadership and support of Tata Motors, today Grihini has transformed from manufacturing household consumer products to intricate wiring and hi-tech automotive electronic Products.</div>

<div class="choose-grihini-about">

<div class="our-business">
<div class="our-business-img"><img src="../Images/business.png" /></div>
<a href="aboutus.aspx"><div class="our-business-txt">OUR BUSINESS</div></a>
<div class="our-business-txtdetail">Grihini has four major lines of business ranging from electronics, cable harness, tailoring and food products.</div>
</div>


<div class="founder-details">
<div class="founder-details-img"><img src="../Images/founder.png" /></div>
<a href="OUR_ORIGIN.aspx"><div class="founder-details-txt">OUR FOUNDER</div></a>
<div class="founder-details-txtdetail">Mrs. Leelatai Moolgaonkar. Tata Motors Grihini Social Welfare Society was founded in 1973 under the guidance of Mrs. Leelatai Moolgaonkar.</div>
</div>

<div class="our-values">
<div class="our-business-imges"><img src="../Images/values.png" /></div>
<a href="ourvalues.aspx"><div class="our-values-txt">OUR VALUES</div></a>
<div class="our-values-txtdetail">An entrepreneurial spirit and shared vision can do wonders, surpass hurdles and liberate individuals. </div>

</div>
</div>
</div>
</div>

<div class="wrapper">
<div class="contact-footer" style="margin-top:15px;">
<div class="main-wrapper">
<div class="contact-footer-final">

<div class="contact-us">
<div class="quick-link-txt">CONTACT US</div>
<div class="address">
<div class="address-icon"><img src="../Images/address.png" /></div>
<div class="address-details">
<div class="address-details-one">Tata Motors Grihini Social Welfare Society <br/><br/>A-2-X-25, Tata motors colony, Pimpri, 
Pune – 411018</div>
</div>
</div>
<div class="phone-details">
<div class="phone-icon"><img src="../Images/phone.png" /></div>
<div class="phone-details-one">Phone:  020-64103258,020-65111507</div>
</div>
<div class="phone-details">
<div class="phone-icon"><img src="../Images/message.png" /></div>
<div class="phone-details-one">Email: tgsws@tatamotorsgrihini.org</div>
</div>
</div>


<%--<div class="quick-link"> 
<div class="quick-link-txt">QUICK LINKS</div>
<div class="tab">
<ul>
<li><a href="#">ELECTRONICS</a></li>
<li><a href="#">CABLE HARNESS</a></li>
<li><a href="#">TAILORING</a></li>
<li><a href="#">MASALA</a></li>
</ul>
</div>
</div>--%>



<%--<div class="home-signin-area"><img src="../Images/home_signin_area.png" /></div>--%>




</div>
</div>
</div>
</div>

<!-- ModalPopupExtender -->
    <%--<div id="div40" runat="server" />
        <cc1:ModalPopupExtender ID="mp8" runat="server" PopupControlID="Panel8" TargetControlID="div40"
            CancelControlID="Button3" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panel8" runat="server" CssClass="modalPopuppop" align="center" style = "display:none">
            <div class="popup_header">
        Alert
        </div>
        <div id="Div41" style="width:100%; height:30px; margin:25px 0 0 -10px; float:left;">
            <asp:Label ID="Label1" runat="server" Text="Done Ajax"></asp:Label>
        </div>
        <div style="float:left; margin:35px 0 20px 0px; width:100%;">
       
        <asp:Button ID="btnPayApprove" runat="server" Text="Approve" CssClass="btn_mouuu" Height="25px" Width="80px" ValidationGroup="validAproveRem"/>
        
        <asp:Button ID="Button3" runat="server" Text="Close" CssClass="btn_mouuu" Height="25px" Width="80px" />
        </div>
        </asp:Panel>--%>
<!-- ModalPopupExtender -->
</section>

<%--    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />--%>

</asp:Content>
