package com.ysu.zyw.daoTest;

import com.ysu.zyw.dao.CommentDAO;
import com.ysu.zyw.service.entity.Comment;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 单元测试 本单元测试需要数据库支持 需要被测试程序的 @Transactional 注解支持
 * @author by Zerur
 */
public class CommentDAOTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    CommentDAO commentDAO = (CommentDAO)bf.getBean("commentDAO");

    @Test
    @Ignore
    public void testSaveComment() {
        Comment comment = new Comment("title", "text");
        commentDAO.saveComment(1, comment);
    }

    @Test
    @Ignore
    public void testSelectCommentByDiaryId() {
        List<Comment> comments = commentDAO.selectCommentByDiaryId(9);
        for(Comment comment : comments) {
            System.out.println(comment.getTitle() + " " + comment.getText());
        }
    }
}
