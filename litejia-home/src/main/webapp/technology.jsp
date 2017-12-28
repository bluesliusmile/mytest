<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>南京利特嘉软件科技有限公司</title>
    
</head>
<body>
<div class='fullpage'>
<div class='section'  style="height:100%;">
<header>
    <nav class="nav-top">
        <a href="index.jsp"><div class="logo"><img src="/litejia-home-1.0.0-SNAPSHOT/img/logo_new.png"></div></a>
        <div class="nav-top-link">
            <a href="solution.jsp">解决方案</a>
            
            <a href="technology.jsp">核心技术</a>
            
            <a href="about.jsp">关于我们</a>
        </div>
    </nav>
</header>
<div class="banner"></div></div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/Internet_connection.png">
  <div class="tech_1_text">
    <h1>Internet关联</h1><br /><br />
    <span>Web站点的构建，包括人才招聘网站构建、场馆租赁管理站点构建等</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/web_software.png">
  <div class="tech_2_text">
    <h1>Web应用软件的提案、设计、开发</h1><br /><br />
    <span>Web上的电子结算，如信用卡结算、便利店结算等</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/app_develop.png">
  <div class="tech_3_text">
    <h1>移动互联网</h1><br /><br />
    <span>手机App定制开发</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/circulation_field.png">
  <div class="tech_4_text">
    <h1>流通领域</h1><br /><br />
    <span>邮购管理系统<br />库存管理系统<br />预算管理系统<br />EDI系统</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/financial_field.png">
  <div class="tech_1_text">
    <h1>金融领域</h1><br /><br />
    <span>汇率管理支援系统<br />债券，债务，股票买卖，财务决算等多种金融商品的基干管理系统<br />网络银行系统<br />其他银行关联业务系统</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/MIS.png">
  <div class="tech_4_text">
    <h1>信息管理系统</h1><br /><br />
    <span>场馆租赁管理系统<br />安全性管理系统<br />建筑企业管理系统<br />风险管理系统<br />会计管理系统</span>
  </div>
</div>
<div class='section' id="tech_1">
  <img src="/litejia-home-1.0.0-SNAPSHOT/img/embedded_domain.png">
  <div class="tech_1_text">
    <h1>嵌入式软件领域</h1><br /><br />
    <span>嵌入式应用软件开发<br />手机软件开发</span>
  </div>
</div>
<div class="section fp-auto-height" id="section-footer">
    <footer>
        <div class="nav-bottom-contact">
            <div class="footer-nav">
                <div class="footer-nav-parent">
                    <span>关于公司</span>
                    <span>利特嘉核心</span>
                </div>
                <div class="footer-nav-1">
                    <p><a href="about.jsp">关于我们</a></p>
                    <p><a href="about.jsp">加入我们</a></p>
                </div>
                <div class="footer-nav-2">
                    <p><a href="technology.jsp">核心技术</a></p>
                </div>
            </div>

            <div class="nav-bottom-contact-right">
                <div class="coop-info">商业合作</div>
                <div class="corp-phone">025-86617900</div>
                <div class="corp-worktime">周一到周五9:30-18:00(北京时间)</div>
            </div>
        </div>
        <div class="nav-bottom-copyright">
            <div class="nav-bottom-copyright-left">
                <p>&copy;2015 南京市利特嘉软件科技有限公司
                    苏ICP备15033191号
                </p>
            </div>

        </div>
    </footer>
</div>
</div>
<!--</div>-->
<script>
    function adaptHeader() {
        var height = $(window).height() - 100;
        if (height < 521) height = 521;
        var loadingh = height + 100;
        loadingh += 'px';
        height += "px";
        $('#header').css({'height': height, 'line-height': height});
        $('.all-container').css({'height': loadingh});
    }

    var vid = document.getElementById("video0");
    vid.oncanplaythrough = function() {
        $('#video0')[0].play();
    };

    disableScroll();
    var loading = new Image;
    loading.onload = function( ) {
        setTimeout(function() {
            $("#prePage").animate({'opacity':0, 'z-index':-1}, 1000);
            enableScroll();
        }, 1500);
    };
//    loading.src = "/static/web/image/banner1.jpg";


    


        // $(".solution").hover(
        //         function () {
        //             var id = $(this).attr('id');
        //             $(this).find('.icon-normal').stop().animate({'opacity': 0}, 500);
        //             $(this).find('.icon-highlight').stop().animate({'opacity': 1}, 500);
        //             $(this).stop().animate({'background-color': '#222222'}, 500);
        //             $(this).find('.text').stop().animate({'color': '#ffffff'}, 500);
        //         },
        //         function () {
        //             var id = $(this).attr('id');
        //             $(this).find('.icon-normal').stop().animate({'opacity': 1}, 500);
        //             $(this).find('.icon-highlight').stop().animate({'opacity': 0}, 500);
        //             $(this).stop().animate({'background-color': '#ffffff'}, 500);

        //             $(this).find('.text').stop().animate({'color': '#898989'}, 500);
        //         }
        // );


//    });
</script>
<!--<div class="modal fade" id="wechat-modal" tabindex="-1" role="dialog" aria-labelledby="weChatLabel">-->
    <!--<div class="modal-dialog" role="document">-->
        <!--<div class="modal-content">-->
            <!--<div class="modal-body">-->
                <!--<img id="wechat-modal-close" type="button" src=/static/web/image/cancel%402x.png data-dismiss="modal" alt="close">-->
                <!--<img id="wechat-qr" type="button" src=/static/web/image/weixinQR%402x.png data-dismiss="modal" alt="weChat">-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->
<!--</div>-->
</body>
<script>
	$(document).ready(function(){
		$('.fullpage').fullpage({
			<!--sectionsColor: ['#1bbc9b', '#4bbfc3', '#7baabe', '#f90', '#63a1e5', '#8b3ea3', '#7634ea'],-->
			anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'page6', 'page7', 'page8', 'page9'],
			easing: 'easeInOutCubic',
			easingcss3: 'cubic-bezier(0.86, 0, 0.07, 1)',
			navigation: true,
			navigationPosition: 'right'
		});		
	});
</script>
</html>
