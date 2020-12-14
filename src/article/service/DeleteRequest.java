package article.service;

import java.util.Map;

import article.model.Delete;

public class DeleteRequest {

	
	private Delete delete;
	private String title;
	private String content;
	public DeleteRequest(Delete delete, String title, String content) {
		super();
		this.delete = delete;
		this.title = title;
		this.content = content;
	}
	public Delete getDelete() {
		return delete;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	
	public void validate(Map<String, Boolean> errors) {
		if (title == null || title.trim().isEmpty()) {
			errors.put("title", true);
		}
	}
	
	

 
}
