package com.ysu.zyw.dao;

import com.ysu.zyw.service.entity.Essay;
import com.ysu.zyw.support.TypeCastUtil;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */
public class EssayDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    /**
     * 随机获得 count 条 Essay 数据
     * @param count 获得 Essay 数据的数目
     * @return 包含 count 条 Essay 数据的 list
     */
    public List<Essay> selectEssayStochastic(int count) {
        Session session = sessionFactory.getCurrentSession();
        SQLQuery sqlQuery = session.createSQLQuery("SELECT * FROM _Essay ORDER BY RAND() LIMIT " + count).addEntity(Essay.class);
        List<Essay> essays = TypeCastUtil.cast(sqlQuery.list());
        return essays;
    }
}
