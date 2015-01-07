package com.ysu.zyw.support;

import static org.junit.Assert.*;
import static org.hamcrest.Matchers.*;
import org.json.JSONObject;
import org.junit.Test;

/**
 * Created by zhang_yao_wu1993 on 15/1/7.
 *
 * @author by Zerur
 */
public class IndexAdRequestJSONFactoryTest
{
    @Test
    public void testGetJSONObject()
    {
        // JSON 是无序的
        JSONObject jsonObject = IndexAdRequestJSONFactory.getJSONObject("thisistitle", "thisistext");
        assertThat(jsonObject.toString(), is("{\"text\":\"thisistext\",\"title\":\"thisistitle\"}"));
    }
}
