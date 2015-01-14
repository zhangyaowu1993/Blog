package com.ysu.zyw.support;

import com.ysu.zyw.service.entity.Ranking;
import org.json.JSONObject;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;
import static org.hamcrest.Matchers.*;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试
 * @author by Zerur
 */
public class Game2048PageJsonFactoryTest {
    @Test
    public void testGetRankingJSONObject() {
        List<Ranking> rankingList = new ArrayList<Ranking>();
        rankingList.add(new Ranking("无视1号", 100));
        rankingList.add(new Ranking("无视2号", 1000));
        rankingList.add(new Ranking("无视3号", 10000));

        JSONObject jsonObject = Game2048PageJsonFactory.getRankingJSONObject(rankingList);
        assertThat(jsonObject.toString(), is("{\"ranking\":[\"无视1号 100\",\"无视2号 1000\",\"无视3号 10000\"]}"));
    }
}
