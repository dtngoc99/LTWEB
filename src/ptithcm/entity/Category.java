package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
public class Category {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	@OneToMany(mappedBy = "cate", fetch = FetchType.EAGER)
	private Collection<News> newsList;
	private int design_type;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Collection<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(Collection<News> newsList) {
		this.newsList = newsList;
	}

	public int getDesign_type() {
		return design_type;
	}

	public void setDesign_type(int design_type) {
		this.design_type = design_type;
	}

}
