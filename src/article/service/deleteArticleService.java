package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import article.model.ArticleContent;
import article.model.Delete;
import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;

public class deleteArticleService {
	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();
	
	public void delete(int no) {
	      Connection conn = null;
	      
	      try {
	         conn = ConnectionProvider.getConnection();
	         conn.setAutoCommit(false);
	         
	         articleDao.delete(conn, no);
	         contentDao.delete(conn, no);
	         conn.commit();
	         
	      } catch (SQLException e) {
	         JdbcUtil.rollback(conn);
	      } finally {
	         JdbcUtil.close(conn);
	      }
	   } 


}
