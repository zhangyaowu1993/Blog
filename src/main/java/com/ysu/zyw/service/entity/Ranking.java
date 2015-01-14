package com.ysu.zyw.service.entity;

import javax.persistence.*;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */

@Entity
@Table(name = "_Ranking")
public class Ranking {
    private int id;
    private String name;
    private int score;

    public Ranking() {

    }

    public Ranking(String name, int score) {
        this.name = name;
        this.score = score;
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
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(nullable = false)
    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
