package com.fifteen.utils.miaodiyun.httpApiDemo;


import com.alibaba.fastjson.JSON;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.Config;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.HttpUtil;
import com.fifteen.utils.miaodiyun.huiDiao.RespCode;

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
	private static String to = "13566191419";
	private static String smsContent = "【精心科技】登录验证码："+code+"，如非本人操作，请忽略此短信。";
	/**
	 * 验证码通知短信
	 */
	public static void execute()
	{
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	    //?????
		Object parse = JSON.parse(result);
		System.out.println(parse);
	}
}
