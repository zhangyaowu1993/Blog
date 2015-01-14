package com.ysu.zyw.daoTest;

import com.ysu.zyw.dao.DiaryDAO;
import com.ysu.zyw.service.entity.Diary;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试 本单元测试需要数据库支持 需要被测试程序的 @Transactional 注解支持
 * @author by Zerur
 */

public class DiaryDAOTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    DiaryDAO diaryDAO = (DiaryDAO) bf.getBean("diaryDAO");


    @Test
    @Ignore
    public void testSelectDiaryById() {
        Diary diary = diaryDAO.selectDiaryById(1);
        System.out.println(diary.getId() + " " + diary.getTitle() + " " + diary.getMeta() + " " + diary.getText() + " " + diary.getFootnote());
    }

    @Test
    @Ignore
    public void testSelectAllDiary() {
        List<Diary> diaries = diaryDAO.selectAllDiary();
        for(Diary diary : diaries) {
            System.out.println(diary.getId() + " " + diary.getTitle());
        }
    }
}
