<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>朗朗教育科技股份有限公司 - 自信成长&nbsp;朗朗相伴</title>
<meta name="description" content="朗朗教育科技股份有限公司（股票代码：834729），是中国领先的幼教机构，主要致力于优质幼儿教育资源研发，推动优质幼教资源普及共享。公司研发产品包括幼儿园系列多元课程、交互式多媒体一体机、朗朗睿童活动区、家园共育系列等。" />
<meta name="keywords" content="幼儿教育,学前教育,幼儿园玩教具,幼教用品,幼儿园教材,幼儿园教育培训,幼儿园教育,幼儿园管理,学前教育装备,幼儿园课件,教学一体机" />
<link media="screen" rel="stylesheet" href="${res}ceshi/css/demo.css"/>
<link rel="stylesheet" href="http://www.langlang.net.cn/templets/default/style/slide.css">
<script src="http://www.langlang.net.cn/templets/default/js/jquery-1.7.1.min.js" type="text/javascript"></script>

<style>
  a:hover div{display: block!important;}
</style>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?7e419dc427e72abdd5bfd96e10987404";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script type="text/javascript">
    var sUserAgent = navigator.userAgent.toLowerCase();
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        window.location.href = "http://www.langlang.net.cn/plus/m.php";
    } 
</script>

<script type="text/javascript">
$(function(){
    $(window).scroll(function(){
          height = $(window).scrollTop();
          if(height > 500){
           $("#htop").fadeIn();
          }else{
            $("#htop").fadeOut();
          };
  });
  $(window).scroll(function(){
          height = $(window).scrollTop();
          if(height > 200){
           $("#head").css({"box-shadow": "0 2px 3px 2px rgba(51,51,51,.1)"});
          }else{
            $("#head").css({"box-shadow":"none"});
          };
  });
});
</script>

</head>

<body>
<script src="http://file.langlang.net.cn/templets/default/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript">

    var sUserAgent = navigator.userAgent.toLowerCase();
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        window.location.href = "http://www.langlang.net.cn/plus/m.php";
    }


jQuery(document).ready(function(){
  var qcloud={};
  $('[_t_nav]').hover(function(){
    var _nav = $(this).attr('_t_nav');
    clearTimeout( qcloud[ _nav + '_timer' ] );
    qcloud[ _nav + '_timer' ] = setTimeout(function(){
    $('[_t_nav]').each(function(){
    $(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
    });
    $('#'+_nav).stop(true,true).slideDown(200);
    }, 150);
  },function(){
    var _nav = $(this).attr('_t_nav');
    clearTimeout( qcloud[ _nav + '_timer' ] );
    qcloud[ _nav + '_timer' ] = setTimeout(function(){
    $('[_t_nav]').removeClass('nav-up-selected');
    $('#'+_nav).stop(true,true).slideUp(200);
    }, 150);
  });
});
</script>

<header class="head-v3">
  <div class="navigation-up"  id="head">
    
    <div class="navigation-inner">
      <div style="width:119px;float: left;">
        <img src="http://file.langlang.net.cn/templets/default/images/top-logo.png" alt="" style="width: 100%;padding-top:14px;" />
      </div>
      <div class="navigation-v3">
        <ul>
          <li class="" _t_nav="home">
            <a href="/">首页</a>
          </li>
          <li class="" _t_nav="dt">
            <a href="/lljy/llnews/index.html">朗朗动态</a>
          </li>
          <li class="" _t_nav="yj">
            <a href="/lljy/kecheng/yinyue.html">课程一体化</a>
          </li>
          <li class="" _t_nav="yx">
            <a href="/lljy/huwai/yundongqu.html">游戏化装备</a>
          </li>
          <li class="">
            <a href="http://www.langlangyun.com" target="_blank">朗云智慧幼儿园</a>
          </li>
          <li  _t_nav="jy">
            <a href="/lljy/xiongapp.html">学前教育资源</a>
          </li>
          <li _t_nav="gy">
            <a href="/lljy/about/about.html">关于朗朗</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="navigation-down">
    <div id="dt" class="nav-down-menu menu-1" style="display: none;" _t_nav="dt">
      <div class="navigation-down-inner">
        <ul style="margin-left: 239px;">
          <li>
            <a class="dt1" hotrep="hp.header.dt.1" href="/lljy/llnews/index.html"><span></span></a>
          </li>
          <li>
            <a class="dt3" hotrep="hp.header.dt.3" href="/lljy/kgedu/index.html"><span></span></a>
          </li>
          <li>
            <a class="dt4" hotrep="hp.header.dt.3" href="/lljy/homeedu/index.html"><span></span></a>
          </li>
          <li>
            <a class="dt5" hotrep="hp.header.dt.3" href="/lljy/edunews/index.html"><span></span></a>
          </li>
          <li>
            <a class="dt6" hotrep="hp.header.dt.3" href="/lljy/jiangshi.html"><span></span></a>
          </li>
        </ul>
        
      </div>
    </div>
    <div id="yj" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="yj">
      <div class="navigation-down-inner">
        <ul style="margin-left: 239px;">
          <li>
            <a class="yj1" hotrep="hp.header.yj.1" href="/lljy/kecheng/cailiaobao.html"><span></span></a>
          </li>
          <li>
            <a class="yj3" hotrep="hp.header.yj.3" href="/lljy/yitiji.html"><span></span></a>
          </li>
        </ul>
      </div>
    </div>
    <div id="yx" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="yx">
      <div class="navigation-down-inner">
        <ul style="margin-left: 239px;">
          <li>
            <a class="yx1" hotrep="hp.header.yx.1" href="/lljy/huodongqu/jiangou.html"><span></span></a>
          </li>
          <li>
            <a class="yx2" hotrep="hp.header.yx.2" href="/lljy/huwai/yundongqu.html"><span></span></a>
          </li>
          <li>
            <a class="yx3" hotrep="hp.header.yx.3" href="/lljy/huwai/jiangouqu.html"><span></span></a>
          </li>
          <li>
            <a class="yx4" hotrep="hp.header.yx.4" href="/lljy/huwai/shengwang.html"><span></span></a>
          </li>
        </ul>
      </div>
    </div>
    <div id="jy" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="jy">
      <div class="navigation-down-inner">
        <ul style="margin-left: 239px;">
          <li>
            <a class="jy1" hotrep="hp.header.yx.1" href="/lljy/rt/xionghaizi.html"><span></span></a>
          </li>
          <li>
            <a class="jy2" hotrep="hp.header.yx.2" href="/lljy/rt/app.html"><span></span></a>
          </li>
          <li>
            <a class="jy3" hotrep="hp.header.yx.3" href="/lljy/rt/yunke.html"><span></span></a>
          </li>
        </ul>
      </div>
    </div>
    <div id="gy" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="gy">
      <div class="navigation-down-inner">
        <ul style="margin-left: 239px;">
          <li>
            <a class="gy1" hotrep="hp.header.gy.1" href="/lljy/about/about.html"><span></span></a>
          </li>
          <li>
            <a class="gy2" hotrep="hp.header.gy.2" href="http://www.neeq.com.cn/disclosure/announcement.html?companyCode=834729" target="_blank"><span></span></a>
          </li>
          <li>
            <a class="gy3" hotrep="hp.header.gy.3" href="/lljy/job/index.html"><span></span></a>
          </li>
          <li>
            <a class="gy4" hotrep="hp.header.gy.4" href="/lljy/about/lianxi.html"><span></span></a>
          </li>
          <li>
            <a class="gy5" hotrep="hp.header.gy.5" href="/lljy/about/shouhou.html"><span></span></a>
          </li>
          <li>
            <a class="gy6" hotrep="hp.header.gy.6" href="http://e.langlang.net.cn" target="_blank"><span></span></a>
          </li>
          <li>
            <a class="gy7" hotrep="hp.header.gy.7" href="/lljy/about/hezuo.html"><span></span></a>
          </li>
        </ul>
      </div>
    </div>
    
  </div>
</header>


<div id="top" class="main">
  <div>
    <!-- Demo start -->
    <div class="ck-slide">
      <ul class="ck-slide-wrapper">
        
        <li>
          <a><img src="http://file.langlang.net.cn/templets/default/images/banner13.jpg" alt=""></a>
        </li>
        <li style="display:none">
          <a><img src="http://file.langlang.net.cn/templets/default/images/banner14.jpg" alt=""></a>
        </li>
        <li style="display:none">
          <a href="/lljy/llnews/2018/0418/240.html"><img src="http://file.langlang.net.cn/templets/default/images/banner12.jpg" alt=""></a>
        </li>
      </ul>
      <a href="#" class="ctrl-slide ck-prev">上一张</a> 
      <a href="#" class="ctrl-slide ck-next">下一张</a>
      <div class="ck-slidebox">
        <div class="slideWrap">
          <!-- <ul class="dot-wrap">
            <li class="current"><em>1</em></li>
            <li><em>2</em></li>
            <li><em>3</em></li>
            
          </ul> -->
        </div>
      </div>
      <!-- js -->
      <!-- <script src="js/jquery-1.8.3.min.js"></script> -->
      <script src="http://file.langlang.net.cn/templets/default/js/slide.js"></script>
      <script>
        $('.ck-slide').ckSlide({
          autoPlay: true
        });
      </script>
    </div>
    <!-- Demo end -->
    <div class="hf">
      <div class="hf-fl"> 
        <a href="/lljy/huwai/jiangouqu.html">
          <img src="http://file.langlang.net.cn/templets/default/images/ll-01.png" alt="">
        </a>
      </div>
      <div class="hf-fl"> 
        <a href="http://www.langlangyunke.com" target="_blank">
          <img src="http://file.langlang.net.cn/templets/default/images/ll-02.png" alt="">
        </a>
      </div>
      <div class="hf-fl"> 
        <a href="/lljy/kejian.html">
          <img src="http://file.langlang.net.cn/templets/default/images/ll-03.png" alt="">
        </a>
      </div>
    </div>
    <div class="mainc">
      <div class="cpzs xwzx">
        <p class="cpzs-bt">新闻中心</p>
        <div class="xwzx-l" style="height: 327px;">
          <ul>
            <li><a href="/lljy/edunews/2019/0220/308.html">18部门印发《市场行动方案》（简称）最新政策</a></li>
<li><a href="/lljy/llnews/2019/0219/307.html">山东未来学前教育研究院，欢迎您的加入！</a></li>
<li><a href="/lljy/llnews/2018/1218/304.html">贺朗朗教育获2018年度最具竞争力成长型企业奖</a></li>
<li><a href="/lljy/llnews/2018/1206/303.html">贺朗朗教育登榜2017年度济南市服务名牌推荐名单</a></li>
<li><a href="/lljy/llnews/2018/1120/301.html">十月的最后一天，你该来这里看看</a></li>
<li><a href="/lljy/llnews/2018/1030/298.html">这场会议为幼教梦想新蓝图抹上了璀璨的一笔</a></li>
<li><a href="/lljy/llnews/2018/1030/297.html">朗朗教育营销巡回座谈会第五站-第八站精彩回顾</a></li>

          </ul>
          <p><a href="/lljy/llnews/index.html">查看更多></a></p>
        </div>
        <div class="xwzx-r">
          <div class="xwzx-r-l">
            <a href="/lljy/llnews/2018/1218/304.html">
            <img src="/ueditor/php/upload/image/20181218/1545095656619853-lp.png" style='width:270px;height:160px;'>
              <div class="xwzx-r-bt">
                <div class="xwzx-r-bg"></div>
                <p class="xwzx-r-bd">贺朗朗教育获2018年度最具...</p>
              </div>
            </a>
          </div>
<div class="xwzx-r-l">
            <a href="/lljy/llnews/2018/1206/303.html">
            <img src="/uploads/181207/9-1Q20G51334D0.png" style='width:270px;height:160px;'>
              <div class="xwzx-r-bt">
                <div class="xwzx-r-bg"></div>
                <p class="xwzx-r-bd">贺朗朗教育登榜2017年度济...</p>
              </div>
            </a>
          </div>
<div class="xwzx-r-l">
            <a href="/lljy/llnews/2018/1030/298.html">
            <img src="/ueditor/php/upload/image/20181030/1540877258203224-lp.jpg" style='width:270px;height:160px;'>
              <div class="xwzx-r-bt">
                <div class="xwzx-r-bg"></div>
                <p class="xwzx-r-bd">这场会议为幼教梦想新蓝...</p>
              </div>
            </a>
          </div>
<div class="xwzx-r-l">
            <a href="/lljy/llnews/2018/1030/297.html">
            <img src="/ueditor/php/upload/image/20181030/1540876163175991-lp.jpg" style='width:270px;height:160px;'>
              <div class="xwzx-r-bt">
                <div class="xwzx-r-bg"></div>
                <p class="xwzx-r-bd">朗朗教育营销巡回座谈会...</p>
              </div>
            </a>
          </div>

        </div>
      </div>
      <div class="cpzs spzq">
        <p class="cpzs-bt">视频专区</p>
        <div class="cpzs-t"> 
          <div class="cpzs-t-z">
            <a href="javascript:;" onclick="javascript:tv('88bed88497')">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-08.png" alt="">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">朗朗教育</div>
              </div>
            </a>
          </div>
          <div class="cpzs-t-z">
            <a href="javascript:;" onclick="javascript:tv('c55f6669eb')">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-09.png" alt="">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">大型户外游戏</div>
              </div>
            </a>
          </div>
          <div class="cpzs-t-z">
            <a href="javascript:;" onclick="javascript:tv('c01f8937ed')">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-10.png" alt="">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">把爱融化</div>
              </div>
            </a>
          </div>         
          <div class="cpzs-t-z">
            <a href="javascript:;" onclick="javascript:tv('704366aff1')">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-11.png" style="width: 375px">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">朗朗活动区</div>
              </div>
            </a>
          </div>
          <div class="cpzs-t-z">
            <a href="http://www.langlangyunke.com/show-81-306-1.html" target="_blank">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-12.png" style="width: 375px">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">三只小熊</div>
              </div>
            </a>
          </div>
          <div class="cpzs-t-z">
            <a href="http://www.langlangyunke.com/show-75-407-1.html" target="_blank">
              <img src="http://file.langlang.net.cn/templets/default/images/ispzq-13.png" style="width: 375px">
              <div class="spzq-bg" style="display:none;">
                <div class="spzq-bd">大嘴鱼</div>
              </div>
            </a>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</div>



<script src="/templets/default/js/layer/layer.js" type="text/javascript"></script>
<script>
    function tv(vu){
      layer.open({
        type: 2,
        title: false,
        area: ['640px', '360px'],
        shade: 0.8,
        closeBtn: 0,
        shadeClose: true,
        content: 'http://yuntv.letv.com/bcloud.html?uu=uu7d0wlsdf&vu='+vu+'&pu=d1004f4c76&auto_play=1&width=640&height=360&lang=zh_CN'
      });
    }
</script>

  <footer>
    <div class="foot">
      <div class="f-m">
        <div class="f-m-t" >
          <div class="m-t-l">
            <dl>
              <dt>关于朗朗</dt>
              <dd><a href="/lljy/about/about.html">关于朗朗</a></dd>
              <dd><a href="http://www.neeq.com.cn/disclosure/announcement.html?companyCode=834729" target="_blank">投资者关系</a></dd>
              <dd><a href="/lljy/about/lianxi.html">联系我们</a></dd>
            </dl>
          </div>
          <div class="m-t-l">
            <dl>
              <dt>快速入口</dt>
              <dd><a href="http://e.langlang.net.cn/" target="_blank">技术支持</a></dd>
              <dd><a href="http://www.langlangyunke.com/" target="_blank">朗朗云课</a></dd>
              <!-- <dd><a href="">朗云</a></dd> -->
              <dd><a href="http://www.xionghaizi.cc/" target="_blank">熊孩子网</a></dd>
            </dl>
          </div>
          <div class="m-t-l" style="position: relative;">
            <dl>
              <dt>关注我们</dt>
              <dd class="ewm"><a href="javascript:;">朗朗教育官方微信</a><img src="http://file.langlang.net.cn/templets/default/images/erweima1.jpg" style="display:none;position:absolute;top:0px;left:115px;height:95px"></dd>
              <dd class="ewm"><a href="javascript:;">朗朗小讲师</a><img src="http://file.langlang.net.cn/templets/default/images/erweima2.jpg" style="display:none;position:absolute;top:30px;left:115px;height:95px"></dd>
              <dd><a href="http://weibo.com/u/5617143521" target="_blank">朗朗教育官方微博</a></dd>
            </dl>
          </div>
          <div class="m-t-r">
            <p>0531-88818816</p>
            <p>周一至周五9:00-18:00</p>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3063114870&site=qq&menu=yes">
              <img border="0" src="http://file.langlang.net.cn/templets/default/images/kf.png" alt="点击这里给我发消息" title="点击这里给我发消息"/>
            </a>
          </div>
        </div>

      <p>版权所有 ©2019 朗朗教育 All Rights Reserved 备案号：鲁ICP备11000543号</p> 
      </div>
    </div>
  </footer>


<script>
    $('.ewm').mouseover(function(){
      $(this).find('img').fadeToggle();
    });
    $('.ewm').mouseout(function(){
      $(this).find('img').hide();
    });
  </script>

</body>
</html>