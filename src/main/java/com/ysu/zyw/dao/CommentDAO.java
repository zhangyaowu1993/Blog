package com.ysu.zyw.dao;

import com.ysu.zyw.service.entity.Comment;
import com.ysu.zyw.service.entity.Diary;
import com.ysu.zyw.support.TypeCastUtil;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 * 提供 Comment 的数据库 增删改查操作
 * @author by Zerur
 */
public class CommentDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    /**
     * 保存 comment
     * @param diary_id
     * @param comment
     */
    public void saveComment(int diary_id, Comment comment) {
        Session session = sessionFactory.getCurrentSession();
        Diary diary = (Diary)session.get(Diary.class, diary_id);
        diary.getComments().add(comment);
        session.save(comment);
    }

    /**
     * 选择 id 文章对应的 Comment
     * @return 对应的 comment 组成的 list
     */
    public List<Comment> selectCommentByDiaryId(int diary_id) {
        Session session = sessionFactory.getCurrentSession();
        SQLQuery sqlQuery = session.createSQLQuery("SELECT * FROM _Comment WHERE diaryId =" + diary_id + " ORDER BY id DESC LIMIT 20").addEntity(Comment.class);
        List<Comment> comments = TypeCastUtil.cast(sqlQuery.list());
        return comments;
    }
}
