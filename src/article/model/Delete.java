package article.model;

public class Delete {
	private String id;
	private String name;
	private Integer number;
	private String Content;
	private Delete delete;
	
	public Delete(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}

	public int getNumber() {
		// TODO Auto-generated method stub
		return number;
	}

	public String getContent() {
		// TODO Auto-generated method stub
		return Content;
	}

	public Delete getDelete() {
		// TODO Auto-generated method stub
		return delete;
	}
	
}
