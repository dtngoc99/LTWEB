package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Paragraph")
public class Paragraph {
	@Id
	@GeneratedValue
	private int id;
	@ManyToOne
	@JoinColumn(name = "news_id")
	private News newsP;
	private String para_content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public News getNewsP() {
		return newsP;
	}

	public void setNewsP(News newsP) {
		this.newsP = newsP;
	}

	public String getPara_content() {
		return para_content;
	}

	public void setPara_content(String para_content) {
		this.para_content = para_content;
	}

}
