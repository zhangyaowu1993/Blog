package com.ysu.zyw.service.entity;

import javax.persistence.*;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */

@Entity
@Table(name = "_Essay")
public class Essay {
    private int id;
    private String text;

    public Essay() {

    }

    public Essay(String text) {
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
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
