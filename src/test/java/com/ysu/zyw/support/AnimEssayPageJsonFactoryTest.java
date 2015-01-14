package com.ysu.zyw.support;

import com.ysu.zyw.service.entity.Essay;
import org.json.JSONObject;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created by zhang_yao_wu1993 on 15/1/11.
 * 单元测试
 * @author by Zerur
 */
public class AnimEssayPageJsonFactoryTest {
    @Test
    public void testGetAnimEssayJSONObject() {
        List<Essay> essayList = new ArrayList<Essay>();
        essayList.add(new Essay("essay1"));
        essayList.add(new Essay("essay2"));
        essayList.add(new Essay("essay3"));

        JSONObject jsonObject = AnimEssayPageJsonFactory.getAnimEssayJSONObject(essayList);
        assertThat(jsonObject.toString(), is("{\"essay\":[\"essay1\",\"essay2\",\"essay3\"]}"));
    }
}
