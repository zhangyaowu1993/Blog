package com.ysu.zyw.dao;

import com.ysu.zyw.service.entity.Diary;
import com.ysu.zyw.support.TypeCastUtil;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 提供 Diary 的数据库 增删改查操作
 * @author by Zerur
 */
public class DiaryDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    /**
     * 通过 id 获得 diary
     * @param id
     * @return 如果没有此数据 会返回 null
     */
    public Diary selectDiaryById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Diary diary = (Diary) session.get(Diary.class, id);
        return diary;
    }

    /**
     * 选择所有 diary
     * @return 所有 diary 组成的 list
     */
    public List<Diary> selectAllDiary() {
        Session session = sessionFactory.getCurrentSession();
        SQLQuery sqlQuery = session.createSQLQuery("SELECT * FROM _Diary").addEntity(Diary.class);
        List<Diary> diaryList = TypeCastUtil.cast(sqlQuery.list());
        return diaryList;
    }
}
