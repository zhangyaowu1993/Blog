package com.ysu.zyw.serviceTest;

import com.ysu.zyw.service.entity.Essay;
import com.ysu.zyw.service.managementlogic.EssayManagement;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试 需要数据库支持
 *
 * @author by Zerur
 */
public class EssayManagementTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    EssayManagement essayManagement = (EssayManagement) bf.getBean("essayManagement");


    @Test
    @Ignore
    public void testGetEssayStochastic() {
        List<Essay> essayList = essayManagement.getEssayStochastic(10);
        for(Essay essay : essayList) {
            System.out.println(essay.getText());
        }
    }
}
