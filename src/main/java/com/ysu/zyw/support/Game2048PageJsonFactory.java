package com.ysu.zyw.support;

import com.ysu.zyw.service.entity.Ranking;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 提供 2048_page 页面传输用的 JSONObject
 * @author by Zerur
 */
public class Game2048PageJsonFactory {
    /**
     * 提供 ranking 对应的 JSONObject
     * @param rankingList 分数列表
     * @return 分数列表对应的 JSONObject
     */
    public static JSONObject getRankingJSONObject(List<Ranking> rankingList) {
        JSONArray jsonArray = new JSONArray();
        for(Ranking ranking : rankingList) {
            jsonArray.put(ranking.getName() + " " + ranking.getScore());
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("ranking", jsonArray);
        return jsonObject;
    }
}
