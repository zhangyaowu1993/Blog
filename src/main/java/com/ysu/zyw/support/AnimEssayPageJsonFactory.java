package com.ysu.zyw.support;

import com.ysu.zyw.service.entity.Essay;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/11.
 * 提供 anim_essay_page 页面的数据传输用的JSON数据
 * @author by Zerur
 */
public class AnimEssayPageJsonFactory {
    /**
     * 通过给定的 essay 提供对应的的 JSONObject
     * @param essayList 对应美文的数据
     * @return JSONObject
     */
    public static JSONObject getAnimEssayJSONObject(List<Essay> essayList) {
        JSONArray jsonArray = new JSONArray();
        for(Essay essay : essayList) {
            jsonArray.put(essay.getText());
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("essay", jsonArray);
        return jsonObject;
    }
}
