package com.ysu.zyw.service.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */

@Entity
@Table(name = "_Diary")
public class Diary {
    private int id;
    private String title;
    private String meta;
    private String text;
    private String footnote;
    private Set<Comment> comments = new HashSet<Comment>();

    public Diary() {

    }

    public Diary(String title, String meta, String text, String footnote) {
        this.title = title;
        this.meta = meta;
        this.text = text;
        this.footnote = footnote;
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
    public String getMeta() {
        return meta;
    }

    public void setMeta(String meta) {
        this.meta = meta;
    }

    @Column(length = 1024, nullable = false)
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Column(nullable = false)
    public String getFootnote() {
        return footnote;
    }

    public void setFootnote(String footnote) {
        this.footnote = footnote;
    }

    @OneToMany(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "diaryId")
    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }
}
