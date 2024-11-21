package models;

public class Menu {
	private int id;
	private String menu_name;
	private String link;
	private String icon;
	private Integer parent_id; 
	private int order;
	private int isActive;
	
	public Menu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Menu(int id, String menu_name, String link, String icon, Integer parent_id, int order, int isActive) {
		super();
		this.id = id;
		this.menu_name = menu_name;
		this.link = link;
		this.icon = icon;
		this.parent_id = parent_id;
		this.order = order;
		this.isActive = isActive;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getmenu_name() {
		return menu_name;
	}

	public void setmenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Integer getparent_id() {
		return parent_id;
	}

	public void setparent_id(Integer parent_id) {
		this.parent_id = parent_id;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public int getIsActive() {
		return isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", menu_name=" + menu_name + ", link=" + link + ", icon=" + icon + ", parent_id="
				+ parent_id + ", order=" + order + ", isActive=" + isActive + "]";
	}
	
	
}
