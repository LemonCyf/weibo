package com.fifteen.utils.miaodiyun.httpApiDemo;


import com.alibaba.fastjson.JSON;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.Config;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.HttpUtil;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.PhoneResponse;
import com.fifteen.utils.miaodiyun.huiDiao.RespCode;
import com.google.gson.Gson;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{

    private static String code = String.valueOf((Math.random()*9+1)*100000).substring(0,5);
	private static String operation = "/industrySMS/sendSMS";
	private static String accountSid = Config.ACCOUNT_SID;
	static String result;
    public static String getCode() {
        return code;
    }


    public static void setTo(String to) {
		IndustrySMS.to = to;
	}
	public static String getResult(){
		return result;
	}

	private static String to = "13566097842";
	private static String smsContent = "【精心科技】登录验证码："+code+"，如非本人操作，请忽略此短信。";
	/**
	 * 验证码通知短信
	 */

	public static void execute()  {
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");

	    }catch(Exception e){

	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();
	    result = HttpUtil.post(url, body);
		 //{"respCode":"00141","respDesc":"一小时内发送给单个手机次数超过限制(验证类短信：同一签名同一手机号码1小时内发送数次应小于等于4, 手机号=13566097842, 签名=精心科技)"}
	    System.out.println("result:" + System.lineSeparator() + result);
	    //获取消息
		//PhoneResponse jsonRootBean = new Gson().fromJson(result, PhoneResponse.class);
		//System.out.println(jsonRootBean.getRespCode());
	}
}
