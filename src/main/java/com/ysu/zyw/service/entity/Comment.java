package com.ysu.zyw.service.entity;

import javax.persistence.*;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */

@Entity
@Table(name = "_Comment")
public class Comment {
    private int id;
    private String title;
    private String text;

    public Comment() {

    }

    public Comment(String title, String text) {
        this.title = title;
        this.text = text;
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(nullable = false)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(nullable = false)
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
