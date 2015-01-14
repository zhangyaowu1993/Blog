package com.ysu.zyw.support;

import com.ysu.zyw.service.entity.Comment;
import com.ysu.zyw.service.entity.Diary;
import com.ysu.zyw.service.entity.Essay;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/7.
 * 提供 diary_page 页面的数据传输用的JSON数据
 * @author by Zerur
 */
public class DiaryPageJsonFactory {
    /**
     * 通过给定的元素获得 diary 的 JSON 格式数据
     * @param diary 日志元素对象
     * @return JSON 对象
     */
    public static JSONObject getDiaryJSONObject(Diary diary) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("response_title", diary.getTitle());
        jsonObject.put("response_meta", diary.getMeta());
        jsonObject.put("response_text", diary.getText());
        jsonObject.put("response_footnote", diary.getFootnote());
        return jsonObject;
    }

    /**
     * 通过给定的元素获得 diary 的 title 对应的的 JSON 格式数据
     * @param diaryList 所有日志对象集合
     * @return JSON 对象
     */
    public static JSONObject getDiaryTitlesJSONObject(List<Diary> diaryList) {
        JSONArray jsonArray = new JSONArray();
        for(Diary diary : diaryList) {
            jsonArray.put(new JSONObject().put("_title", diary.getTitle()).put("_id", diary.getId()));
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("title", jsonArray);
        return jsonObject;
    }

    /**
     * 通过给定的 comment 组 得到对应的 JSON 对象
     * @param commentList 评论对应的列表
     * @return JSON 对象
     */
    public static JSONObject getDiaryCommentsJSONObject(List<Comment> commentList) {
        JSONArray jsonArray = new JSONArray();
        for(Comment comment : commentList) {
            jsonArray.put(new JSONObject().put("title", comment.getTitle()).put("text", comment.getText()));
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("comment", jsonArray);
        return jsonObject;
    }
}