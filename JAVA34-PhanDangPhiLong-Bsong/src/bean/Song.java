package bean;

public class Song {
	private int id;
	
	private String name;
	
	private String date_create;
	
	private int counter;
	
	private String preview_text;
	
	private String detail_text;
	
	private String picture;

	private int cate_id;

	public int getId() {
		return id;
	}

	public int getCate_id() {
		return cate_id;
	}

	public void setCate_id(int cate_id) {
		this.cate_id = cate_id;
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

	public String getDate_create() {
		return date_create;
	}

	public void setDate_create(String date_create) {
		this.date_create = date_create;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	public String getPreview_text() {
		return preview_text;
	}

	public void setPreview_text(String preview_text) {
		this.preview_text = preview_text;
	}

	public String getDetail_text() {
		return detail_text;
	}

	public void setDetail_text(String detail_text) {
		this.detail_text = detail_text;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Song(int id, String name, String date_create, int counter, String preview_text, String detail_text,
			String picture, int cate_id) {
		super();
		this.id = id;
		this.name = name;
		this.date_create = date_create;
		this.counter = counter;
		this.preview_text = preview_text;
		this.detail_text = detail_text;
		this.picture = picture;
		this.cate_id = cate_id;
	}

	public Song() {
		super();
	}

	public Song(int id, String name, String date_create, int counter, String preview_text, int cate_id) {
		this.id = id;
		this.name = name;
		this.date_create = date_create;
		this.counter = counter;
		this.preview_text = preview_text;
		this.cate_id = cate_id;
	}

	public Song(int id, String name, String date_create, int counter, String detail_text) {
		this.id = id;
		this.name = name;
		this.date_create = date_create;
		this.counter = counter;
		this.detail_text = detail_text;
	}

	public Song(int id, String name, int counter) {
		this.id = id;
		this.name = name;
		this.counter = counter;
	}
	
	
}
