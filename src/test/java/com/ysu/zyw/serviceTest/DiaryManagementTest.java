package com.ysu.zyw.serviceTest;

import com.ysu.zyw.service.entity.Diary;
import com.ysu.zyw.service.managementlogic.DiaryManagement;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试 需要数据库支持
 * @author by Zerur
 */
public class DiaryManagementTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    DiaryManagement diaryManagement = (DiaryManagement)bf.getBean("diaryManagement");


    @Test
    @Ignore
    public void testGetDiaryById() {
        Diary diary = diaryManagement.getDiaryById(3);
        System.out.println(diary.getTitle() + " " + diary.getText());
    }

    @Test
    @Ignore
    public void testGetAllDiary() {
        List<Diary> diaryList = diaryManagement.getAllDiary();
        for(Diary diary : diaryList) {
            System.out.println(diary.getTitle() + " " + diary.getText());
        }
    }
}
