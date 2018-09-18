<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/14 0014
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--注册登录header-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="//img.t.sinajs.cn/t5/style/css/module/base/frame.css?version=9744cb1b8d390b27" type="text/css" rel="stylesheet" />
    <link href="//img.t.sinajs.cn/t5/style/css/module/layer/layer_login_v5.css?version=9744cb1b8d390b27" type="text/css" rel="stylesheet" />
    <link href="//img.t.sinajs.cn/t5/style/css/pages/register/register.css?version=9744cb1b8d390b27" type="text/css" rel="stylesheet" />
    <link href="//img.t.sinajs.cn/t5/style/css/patch/register/register.css?version=9744cb1b8d390b27" type="text/css" rel="stylesheet" />

    <script type="text/javascript">
        var $CONFIG = {};
        $CONFIG['lang'] = "zh-cn";
    </script>
    <!--/注册登录header-->
    <title>微博注册</title>
</head>
<body class="B_register B_reg_tel ">
<script type="text/javascript">
    $CONFIG.key = 'BD325CE52FC6BA090AC0C7A2039236587F99C30FA518F601F2AD33019514EE5A4340A964853E1BDF5374AB4AC22F5CFF3288E5DB94E6752B4999972DF4E23DACACAE4E4DCFB6CBAE256F1B19C4BA892D54C7A3E068F93AB47EC50635556FC223F02CB1F520631E2F03E5509B6C1E24DFB7962BCD6DC74159BF0E5AFC03D9A00D';
    $CONFIG.key_plus = '10001';
    $CONFIG.province = '35';
    $CONFIG.city = '2';
    $CONFIG.closeSendsms = '1';
    $CONFIG.page = 'mobile';
</script>
<div class="W_nologin">
    <div class="W_header_line"></div>
    <div class="W_reg_header W_logo_wave">
        <div class="W_nologin_logo_big"></div>
    </div>
    <div class="W_nologin_main main_radius_bg">
        <div class="main_tab_line">
            <a class="W_f22 W_Yahei cur" href="javascript:void(0);">个人注册</a>
            <span class="vline">|</span>
            <a class="W_f22 W_Yahei" href="http://e.weibo.com/register/register">官方注册</a>
        </div>
        <div class="W_reg_info clearfix" id="pl_account_regmobile">
            <div class="W_reg_form">
                <div class="info_list clearfix" node-type="mobilesea_wrapper">
                    <div class="tit"><span class="mobile_ico"></span><i>*</i>手机：</div>
                    <div class="inp">
                        <div class="flag_tel clearfix">
                            <!-- 获得焦点时增加  -->
                            <a href="javascript:void(0);" class="tel_country CH" node-type="mobilesea_select"></a>
                            <input type="hidden" name="zone" value="" node-type="mobilesea_selectvalue"/>
                            <div class="W_input foreign_tel"><span class="tel_forenum" node-type="mobilesea_txt">0086</span>
                                <input type="text" node-type="newmobilesea" action-data="text=请输入您的手机号码" action-type="text_copy" name="username" class="tel_num" value="" autocomplete="off" >
                                <div style="position:absolute; top:320px; left:100px; z-index:99;display:none;" class="layer_menu_list msg_set_select layer_set_country" node-type="mobilesea_selectlayer">
                                    <!-- 选中态 select, a内增加 em -->
                                    <ul class="y_scroll">
                                        <li class="select" action-type="select" action-data="key=CH&code=0086"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>中国</a></li>
                                        <li action-type="select" action-data="key=HK&code=00852"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>中国香港</a></li>
                                        <li action-type="select" action-data="key=MO&code=00853"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>中国澳门</a></li>
                                        <li action-type="select" action-data="key=TW&code=00886"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>中国台湾</a></li>
                                        <li action-type="select" action-data="key=US&code=001"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>美国</a></li>
                                        <li action-type="select" action-data="key=CA&code=001"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>加拿大</a></li>
                                        <li action-type="select" action-data="key=BR&code=0055"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>巴西</a></li>
                                        <li action-type="select" action-data="key=MY&code=0060"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>马来西亚</a></li>
                                        <li action-type="select" action-data="key=AU&code=0061"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>澳洲</a></li>
                                        <li action-type="select" action-data="key=JP&code=0081"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>日本</a></li>
                                        <li action-type="select" action-data="key=KP&code=0082"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>韩国</a></li>
                                        <li action-type="select" action-data="key=SG&code=0065"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>新加坡</a></li>
                                        <li action-type="select" action-data="key=UK&code=0044"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>英国</a></li>
                                        <li action-type="select" action-data="key=FR&code=0033&is_EU=1"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>法国</a></li>
                                        <li action-type="select" action-data="key=RU&code=007"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>俄罗斯</a></li>
                                        <li action-type="select" action-data="key=ID&code=0091"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>印度</a></li>
                                        <li action-type="select" action-data="key=TH&code=0066"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>泰国</a></li>
                                        <li action-type="select" action-data="key=DE&code=0049&is_EU=1"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>德国</a></li>
                                        <li action-type="select" action-data="key=IT&code=0039&is_EU=1"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>意大利</a></li>
                                        <li action-type="select" action-data="key=ES&code=0034&is_EU=1"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>西班牙</a></li>
                                        <li action-type="select" action-data="key=IN&code=0062"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>印尼</a></li>
                                        <li action-type="select" action-data="key=KH&code=00855"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>柬埔寨</a></li>
                                        <li action-type="select" action-data="key=MM&code=0095"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>缅甸</a></li>
                                        <li action-type="select" action-data="key=BN&code=00673"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>文莱</a></li>
                                        <li action-type="select" action-data="key=PH&code=0063"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>菲律宾</a></li>
                                        <li action-type="select" action-data="key=VN&code=0084"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>越南</a></li>
                                        <li action-type="select" action-data="key=LA&code=00856"><a href="javascript:void(0);"><em class="W_ico12 icon_addone"></em>老挝</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="attachment">或使用<a node-type="link_regemail" href="/signup/mobile.php?lang=zh-cn&inviteCode=&from=&appsrc=&backurl=&showlogo=">邮箱注册</a></div>
                    </div>
                    <div class="tips" node-type="mobilesea_tip"></div>
                </div>
                <div class="info_list clearfix">
                    <div class="tit"><i>*</i>设置密码：</div>
                    <div class="inp">
                        <input node-type="password" action-data="" action-type="text_copy" name="passwd" type="password" class="W_input" value="" />
                    </div>
                    <div node-type="password_tip" class="tips"></div>
                </div>

                <input type="hidden" name="220dc80c0b9fa78d60e4bf9870ac09df" value="0a309a8ed42414c3df1343ac542f3e58">
                <input type="hidden" name="126c0f430baab9f3b5f24b2e5d9de436" value="253a82af859469cd4bb8d1b33b5ed687">
                <input type="hidden" name="4144ba0f9fea8b0562d7b7197f67ab5a" value="9d292aef0a8233a0bc4705cebaf50a05">
                <input type="hidden" name="84eba9f216dda7230c865d7e074a609b" value="75db2c0bc58ce29d43f61900d5dd8c12">
                <input type="hidden" name="716415add8e529623b6306e764d3c474" value="8297e6e75fd165fafd395b88d2eb6523">
                <input type="hidden" name="97fee7f98da41040d3c3ab1ade828e9a" value="871486421d9279175249b3e663abc98c">
                <input type="hidden" name="6cb7e422562c854d3eb7cd512145119b" value="a013eb026f97b5de9b5a685971193cf1">
                <input type="hidden" name="0a309a8ed42414c3df1343ac542f3e58" value="fa5a94f0171065e50fd6b6b2c31cb751">
                <input type="hidden" name="253a82af859469cd4bb8d1b33b5ed687" value="b608df3b227a33ecfea92941ae117ab6">
                <input type="hidden" name="9d292aef0a8233a0bc4705cebaf50a05" value="65082df70b15dd8eb3b016a73344b5a2">
                <input type="hidden" name="75db2c0bc58ce29d43f61900d5dd8c12" value="a1463e94be204f7b847ef56f80117063">
                <input type="hidden" name="8297e6e75fd165fafd395b88d2eb6523" value="098d1b14691e2b9c017de920fca384cf">
                <input type="hidden" name="inviteCode" value=""/>
                <input type="hidden" name="from" value=""/>
                <input type="hidden" name="callback" value=""/>
                <input type="hidden" name="mcode" value=""/>
                <input type="hidden" name="mbk" value=""/>
                <input type="hidden" name="regtime" value="1536894877"/>
                <input type="hidden" name="salttime" value="c09250585c73e52d09baf20eba1f5771"/>
                <input type="hidden" name="sinaid" value="c8f29aef3f057f994030919c109df86d"/>
                <input type="hidden" name="page" value="mobile"/>
                <input type="hidden" name="invitesource" value="0"/>
                <input type="hidden" name="lang" value="zh-cn"/>
                <input type="hidden" name="backurl" value=""/>
                <input type="hidden" name="appsrc" value=""/>
                <input type="hidden" name="showlogo" value=""/>
                <input type="hidden" name="c" value=""/>
                <div node-type="activation_wrapper"  class="info_list clearfix" style="display:none;">
                    <div class="tit"><i>*</i>激活码：</div>
                    <div class="inp active">
                        <a href="javascript:void(0);" class="W_btn_e" action-type="btn_sms_activation" node-type="btn_sms_activation" action-data="type=sendsms"><span>免费获取短信激活码</span></a>
                        <a href="javascript:void(0);" class="W_btn_e_disable" style="display:none" node-type="btn_sms_activation_disable"><span><em node-type="sms_timer">180</em>秒后重新获取短信</span></a>
                        <input node-type="activation" name="pincode" type="text" class="W_input" value="" maxlength="6" />
                        <div class="attachment"><a href="http://help.weibo.com/faq/q/2375/20136#20136" target="_blank">收不到验证码？</a></div>
                    </div>
                    <div class="tips" node-type="activation_tip">
                    </div>
                </div>

                <div class="info_submit clearfix">
                    <div class="inp">
                        <a action-type="btn_check_pincode" class="W_btn_big" suda-uatrack="key=tblog_register_page&value=register_now_button" href="javascript:void(0);" refake-type="submit" node-type="btn_check_pincode"><span>立即注册</span></a>
                        <a style="display:none;" action-type="btn_submit" class="W_btn_big" suda-uatrack="key=tblog_register_page&value=register_now_button" href="javascript:void(0);" refake-type="submit" node-type="btn_submit"><span>立即注册</span></a>
                    </div>
                </div>
                <div class="info_list clearfix">
                    <div class="inp verify">
                        <p class="agreement"><a href="/signup/v5/protocol" target="_blank">微博服务使用协议</a></p>
                        <p class="agreement"><a href="/signup/v5/privacy" node-type="register_privacy" target="_blank">微博个人信息保护政策</a></p>
                        <p class="agreement"><a href="http://news.sina.com.cn/c/2012-12-29/051425921660.shtml" target="_blank">全国人大常委会关于加强网络信息保护的决定</a></p>
                    </div>
                </div>
            </div>
            <div class="W_reg_sidebar">
                <p class="p1 line">已有帐号，<a href="//weibo.com/login.php">直接登录»</a></p>
                <p>微博注册帮助</p>
                <div class="reg_help">
                    <ul class="help_list">
                        <li><i>1</i><a target="_blank" href="http://help.weibo.com/faq/q/76/15955#15955">微博注册操作指南</a></li>
                        <li><i>2</i><a target="_blank" href="http://help.weibo.com/faq/q/200/13091#13091">手机注册时提示手机号码已被绑定怎么办?</a></li>
                        <li><i>3</i><a target="_blank" href="http://help.weibo.com/faq/q/200/276#276">注册微博时昵称显示“已经被注册”如何处理?</a></li>
                        <li><i>4</i><a target="_blank" href="http://help.weibo.com/faq/q/200/13043#13043">注册时提示"你所使用的IP地址异常",该怎么办?</a></li>
                    </ul>
                    <a target="_blank" href="http://help.weibo.com/faq/q/201" class="help_more">更多帮助»</a>
                </div>
            </div>
        </div>
    </div>
    <!--注册登录footer-->
    <div class="nologin_footer clearfix">
        <div class="left_link">
            <i class="footer_logo"></i>
            <em class="company_name">北京微梦创科网络技术有限公司</em>
            <a href="//weibo.com/aj/static/jww.html">京网文[2017]10291-1172号</a>
            <a href="http://www.miibeian.gov.cn">京ICP备12002058号</a>
        </div>
        <div class="copy">
            <span>Copyright © 2009-2018 WEIBO</span>
            <select id="pl_content_changeLanguage" action-data="login=0">
                <option selected="selected" value="zh-cn">中文(简体)</option>
                <option  value="zh-tw">中文(台湾)</option>
                <option  value="zh-hk">中文(香港)</option>
                <option  value="en-us">English</option>
            </select>
        </div>

    </div>
    <!-- SUDA_CODE_START -->
    <noscript> <img width="0" height="0" src="//beacon.sina.com.cn/a.gif?noScript" border="0" alt="" /> </noscript>
    <script type='text/javascript' charset="utf-8">
        (function() {
            var doc = document,
                wa = doc.createElement('script'),
                s = doc.getElementsByTagName('script')[0];
            wa.type = 'text/javascript';
            wa.charset = 'utf-8';
            wa.async = true;
            wa.src = 'https://js.t.sinajs.cn/open/analytics/js/suda.js?version=9744cb1b8d390b27';
            s.parentNode.insertBefore(wa, s);
        })();
    </script>
    <!-- SUDA_CODE_END -->        <!--/注册登录footer-->
</div>
<img src="/signup/v5/arrivelog?page=mobile&invite=" style="height:1px;width:1px;filter:alpha(Opacity=0);-moz-opacity:0;opacity:0;" />
</body>
<script src="//js.t.sinajs.cn/t5/register/js/page/remote/registerSSO.js?version=9744cb1b8d390b27" type="text/javascript" ></script>
<script src="//js.t.sinajs.cn/t5/register/js/page/register/mobile.js?version=9744cb1b8d390b27" type="text/javascript" ></script>
</html>
