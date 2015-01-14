package com.ysu.zyw.support;

import static org.junit.Assert.*;
import static org.hamcrest.Matchers.*;

import com.ysu.zyw.service.entity.Comment;
import com.ysu.zyw.service.entity.Diary;
import org.json.JSONObject;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/7.
 * 单元测试
 * @author by Zerur
 */
public class DiaryPageJsonFactoryTest
{
    @Test
    public void testGetJSONObjectToDiaryPageDiary() {
        // JSON 是无序的
        Diary diary = new Diary("title", "meta", "text", "footnote");
        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryJSONObject(diary);
        assertThat(jsonObject.toString(), is("{\"response_title\":\"title\",\"response_footnote\":\"footnote\",\"response_text\":\"text\",\"response_meta\":\"meta\"}"));
    }

    @Test
    public void testGetJSONObjectToInitDiarySelect() {
        List<Diary> diaryList = new ArrayList<Diary>();
        diaryList.add(new Diary("title1", "meta", "text", "footnote"));
        diaryList.add(new Diary("title2", "meta", "text", "footnote"));
        diaryList.add(new Diary("title3", "meta", "text", "footnote"));

        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryTitlesJSONObject(diaryList);
        assertThat(jsonObject.toString(), is("{\"title\":[\"title1\",\"title2\",\"title3\"]}"));
    }

    @Test
    public void testGetJSONObjectToDiaryPageComment() {
        List<Comment> commentList = new ArrayList<Comment>();
        commentList.add(new Comment("title1", "text1"));
        commentList.add(new Comment("title2", "text2"));
        commentList.add(new Comment("title3", "text3"));

        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryCommentsJSONObject(commentList);
        assertThat(jsonObject.toString(), is("{\"comment\":[{\"text\":\"text1\",\"title\":\"title1\"},{\"text\":\"text2\",\"title\":\"title2\"},{\"text\":\"text3\",\"title\":\"title3\"}]}"));
    }
}
