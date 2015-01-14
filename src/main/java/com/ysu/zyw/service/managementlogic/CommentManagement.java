package com.ysu.zyw.service.managementlogic;

import com.ysu.zyw.dao.CommentDAO;
import com.ysu.zyw.service.entity.Comment;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */
public class CommentManagement {
    private CommentDAO commentDAO;

    public CommentDAO getCommentDAO() {
        return commentDAO;
    }

    public void setCommentDAO(CommentDAO commentDAO) {
        this.commentDAO = commentDAO;
    }


    /**
     * 保存 comment
     * @param diary_id 对应文章号
     * @param comment 对应评论
     */
    @Transactional
    public void saveComment(int diary_id, Comment comment) {
        commentDAO.saveComment(diary_id, comment);
    }

    /**
     * 获得 diary_id 文章对应的 comments
     * @param diary_id
     * @return
     */
    @Transactional
    public List<Comment> getDiaryComments(int diary_id) {
        List<Comment> commentList = commentDAO.selectCommentByDiaryId(diary_id);
        return commentList;
    }
}
