package com.ysu.zyw.daoTest;

import com.ysu.zyw.dao.EssayDAO;
import com.ysu.zyw.service.entity.Essay;
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
public class EssayDAOTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    EssayDAO essayDAO = (EssayDAO) bf.getBean("essayDAO");


    @Test
    @Ignore
    public void testSelectEssayRandom() {
        List<Essay> essays = essayDAO.selectEssayStochastic(5);
        Iterator<Essay> essayIterator = essays.iterator();
        while(essayIterator.hasNext()) {
            Essay essay = essayIterator.next();
            System.out.println(essay.getId() + " " + essay.getText());
        }
    }
}
