package com.ysu.zyw.dao;

import com.ysu.zyw.service.entity.Ranking;
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
public class RankingDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    /**
     * 保存 ranking
     * @param ranking
     */
    public void saveRanking(Ranking ranking) {
        Session session = sessionFactory.getCurrentSession();
        session.save(ranking);
    }

    /**
     * 获得 ranking 的前三名
     * @return ranking 前三名组成的 list
     */
    public List<Ranking> selectTopThreeRanking() {
        Session session = sessionFactory.getCurrentSession();
        SQLQuery sqlQuery = session.createSQLQuery("SELECT * FROM _Ranking ORDER BY score DESC LIMIT 3").addEntity(Ranking.class);
        List<Ranking> rankingList = TypeCastUtil.cast(sqlQuery.list());
        return rankingList;
    }
}
