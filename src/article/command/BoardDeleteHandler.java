package article.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.model.Delete;
import article.service.DeleteRequest;
import article.service.deleteArticleService;
import auth.service.User;
import mvc.command.CommandHandler;

public class BoardDeleteHandler implements CommandHandler  {
	private static final String FORM_VIEW = "listArticle";
	private deleteArticleService deleteService = new deleteArticleService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("post")) {
			return processSubmit(req, res);
		} else {
			res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		return null;
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String noVal = req.getParameter("no");
		String writerId = req.getParameter("writerId");
		int no = Integer.parseInt(noVal);
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		User user = (User) req.getSession().getAttribute("authUser");
		
		if (!user.getId().equals(writerId)) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
		
		deleteService.delete(no);
		res.sendRedirect("list.do");
		return null;

		
	}
	
	private DeleteRequest UpdateDeleteRequest(User user, HttpServletRequest req) {
		return new DeleteRequest(new Delete(user.getId(),
				user.getName()),
				req.getParameter("title"),
				req.getParameter("content"));
	}
}
