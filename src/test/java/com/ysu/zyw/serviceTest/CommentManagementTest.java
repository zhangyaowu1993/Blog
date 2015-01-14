package com.ysu.zyw.serviceTest;

import com.ysu.zyw.service.entity.Comment;
import com.ysu.zyw.service.managementlogic.CommentManagement;
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
public class CommentManagementTest {
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");

    CommentManagement commentManagement = (CommentManagement)bf.getBean("commentManagement");

    @Test
    @Ignore
    public void testSaveComment() {
        Comment comment = new Comment("title", "Text");
        commentManagement.saveComment(3, comment);
    }

    @Test
    @Ignore
    public void testGetDiaryComment() {
        List<Comment> commentList = commentManagement.getDiaryComments(3);
        for(Comment comment : commentList) {
            System.out.println(comment.getId() + " " + comment.getTitle() + " " + comment.getText());
        }
    }
}
