package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Comment")
public class Comment {
	@Id
	@GeneratedValue
	private int id;
	private String comment;
	private String cmt_name;
	@ManyToOne
	@JoinColumn(name = "news_id")
	private News newsC;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCmt_name() {
		return cmt_name;
	}

	public void setCmt_name(String cmt_name) {
		this.cmt_name = cmt_name;
	}

	public News getNews() {
		return newsC;
	}

	public void setNews(News news) {
		this.newsC = news;
	}

}
