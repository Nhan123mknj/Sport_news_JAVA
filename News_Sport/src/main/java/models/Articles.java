package models;

import java.util.Date;

public class Articles {
	private int id;
	private String title;
	private String content;
	private int category_id;
	private int author_id;
	private Date created_at;
	private Date updated_at;
	private String image;
	private String link;
	private int is_trending;
	private int is_active;
	private int is_new;
	private String categoryName;
//	private Categories category;

	public Articles() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Articles(int id, String title, String content, int category_id, int author_id, Date created_at,
			Date updated_at, String image, String link, int is_trending, int is_active, int is_new) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.category_id = category_id;
		this.author_id = author_id;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.image = image;
		this.link = link;
		this.is_trending = is_trending;
		this.is_active = is_active;
		this.is_new = is_new;

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public int getAuthor_id() {
		return author_id;
	}

	public void setAuthor_id(int author_id) {
		this.author_id = author_id;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getIs_trending() {
		return is_trending;
	}

	public void setIs_trending(int is_trending) {
		this.is_trending = is_trending;
	}

	public int getIs_active() {
		return is_active;
	}

	public void setIs_active(int is_active) {
		this.is_active = is_active;
	}

	public int getIs_new() {
		return is_new;
	}

	public void setIs_new(int is_new) {
		this.is_new = is_new;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Articles [id=" + id + ", title=" + title + ", content=" + content + ", category_id=" + category_id
				+ ", author_id=" + author_id + ", image=" + image + ", link=" + link + "]";
	}

}
