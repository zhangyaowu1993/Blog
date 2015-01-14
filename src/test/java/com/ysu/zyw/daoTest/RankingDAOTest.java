package com.ysu.zyw.daoTest;

import com.ysu.zyw.dao.RankingDAO;
import com.ysu.zyw.service.entity.Ranking;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Iterator;
import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试 本单元测试需要数据库支持 需要被测试程序的 @Transactional 注解支持
 * @author by Zerur
 */
public class RankingDAOTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    RankingDAO rankingDAO = (RankingDAO)bf.getBean("rankingDAO");

    @Test
    @Ignore
    public void testSaveRanking() {
        for(int i = 0; i < 20; i++) {
            rankingDAO.saveRanking(new Ranking("无视哟", i * 199));
        }
    }

    @Test
    @Ignore
    public void testSelectTopThreeRanking() {
        List<Ranking> rankingList = rankingDAO.selectTopThreeRanking();
        Iterator<Ranking> rankingIterator = rankingList.iterator();
        while(rankingIterator.hasNext()) {
            Ranking ranking = rankingIterator.next();
            System.out.println(ranking.getId() + " " + ranking.getName() + " " + ranking.getScore());
        }
    }
}
