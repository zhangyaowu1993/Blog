package com.ysu.zyw.support;

import org.json.JSONObject;

/**
 * Created by zhang_yao_wu1993 on 15/1/7.
 *
 * @author by Zerur
 */
public class IndexAdRequestJSONFactory
{
    public static JSONObject getJSONObject(String title, String text)
    {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("response_title", title);
        jsonObject.put("response_text", text);
        return jsonObject;
    }
}
