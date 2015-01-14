package com.ysu.zyw.service.managementlogic;

import com.ysu.zyw.dao.RankingDAO;
import com.ysu.zyw.service.entity.Ranking;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */
public class RankingManagement {
    private RankingDAO rankingDAO;

    public RankingDAO getRankingDAO() {
        return rankingDAO;
    }

    public void setRankingDAO(RankingDAO rankingDAO) {
        this.rankingDAO = rankingDAO;
    }

    /**
     * 保存 ranking
     * @param ranking
     */
    @Transactional
    public void saveRanking(Ranking ranking) {
        rankingDAO.saveRanking(ranking);
    }

    /**
     * 获得 ranking 的前三名
     * @return ranking 前三名组成的 list
     */
    @Transactional
    public List<Ranking> getRankingTopThree() {
        List<Ranking> rankingList = rankingDAO.selectTopThreeRanking();
        return rankingList;
    }
}
