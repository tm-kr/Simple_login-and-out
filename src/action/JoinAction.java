package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberDTO;

public class JoinAction extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String birth = req.getParameter("yyyy") +"-"+ req.getParameter("mm") + "-" + req.getParameter("dd");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
				
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, password, name, birth, gender, email);
		
		if(id.equals("")||password.equals("")||name.equals("")||birth.equals("")||gender.equals("")) {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert ('입력이 안된 사항이 있습니다.');");
			script.println("history.back()");
			script.println("</script>");
			script.close();
			return;
		}else {
			dao.join(dto);
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert ('회원가입을 축하드립니다.');");
			script.println("location.href = 'login'");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
