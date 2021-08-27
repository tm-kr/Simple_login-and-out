package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

public class LoginAction extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		HttpSession session = req.getSession();
		MemberDAO dao = new MemberDAO();
		
		if(dao.login(id, password)) {
			session.setAttribute("id", id);
			req.getRequestDispatcher("/jsp/index.jsp").forward(req, resp);
		}else {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('아이디나 비밀번호 오류입니다.');");
			script.println("history.back()");
			script.println("</script>");
			script.close();
			return;
		}
		
		
	}
}
