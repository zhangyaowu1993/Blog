package com.ysu.zyw.serviceTest;

import com.ysu.zyw.service.entity.Ranking;
import com.ysu.zyw.service.managementlogic.RankingManagement;
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
public class RankingManagementTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    RankingManagement rankingManagement = (RankingManagement)bf.getBean("rankingManagement");

    @Test
    @Ignore
    public void testSaveRanking() {
        Ranking ranking = new Ranking("name", 1001210);
        rankingManagement.saveRanking(ranking);
    }

    @Test
    @Ignore
    public void testGetRankingTopThree() {
        List<Ranking> rankingList = rankingManagement.getRankingTopThree();
        for(Ranking ranking : rankingList) {
            System.out.println(ranking.getName() + " " + ranking.getScore());
        }
    }
}
