package com.ysu.zyw.support;

import org.json.JSONObject;

/**
 * Created by zhang_yao_wu1993 on 15/1/7.
 * 提供 Index 页面的数据传输用的JSON数据
 * @author by Zerur
 */
public class IndexRequestJSONFactory
{
    /**
     * 返回由 title 和 text 组成的JSON数据
     * @param title 构成 JSON 的 title
     * @param text 构成 JSON 的 text
     * @return 组成的 JSONObject
     */
    public static JSONObject getJSONObjectByTitleAndText(String title, String text)
    {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("response_title", title);
        jsonObject.put("response_text", text);
        return jsonObject;
    }
}
