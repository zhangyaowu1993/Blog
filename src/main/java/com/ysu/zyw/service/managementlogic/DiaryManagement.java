package com.ysu.zyw.service.managementlogic;

import com.ysu.zyw.dao.DiaryDAO;
import com.ysu.zyw.service.entity.Diary;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */
public class DiaryManagement {
    private DiaryDAO diaryDAO;

    public DiaryDAO getDiaryDAO() {
        return diaryDAO;
    }

    public void setDiaryDAO(DiaryDAO diaryDAO) {
        this.diaryDAO = diaryDAO;
    }


    /**
     * 通过 id 获得 diary
     * @param id
     * @return 如果请求的 id 对象不存在 返回 null
     */
    @Transactional
    public Diary getDiaryById(int id) {
        Diary diary = diaryDAO.selectDiaryById(id);
        return diary;
    }

    /**
     * 获得所有 diary
     * @return 所有 diary 的 list
     */
    @Transactional
    public List<Diary> getAllDiary() {
        List<Diary> diaryList = diaryDAO.selectAllDiary();
        return diaryList;
    }
}
