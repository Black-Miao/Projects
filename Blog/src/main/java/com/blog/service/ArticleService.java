package com.blog.service;

import com.blog.model.Article;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * Created by Black on 2016/6/6.
 */
public interface ArticleService {
    public void addArticle(Article article)throws Exception;
    public boolean existArticle(String title) throws Exception;
    public String getArticle(Integer id, HttpServletRequest request) throws Exception;
    public List<Article> selectAllArticle()throws Exception;
    public Article selectArticleById(Integer id) throws Exception;
}