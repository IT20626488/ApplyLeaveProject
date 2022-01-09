package apply;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateMemberServlet")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	//get form data
	
		String id = request.getParameter("cusid");
		String username = request.getParameter("uname");
		String userid = request.getParameter("userid");
		String leave=request.getParameter("leave");
		String date = request.getParameter("date");
		String days = request.getParameter("days");
		String assign = request.getParameter("assign");
		
		boolean isTrue;
		
		isTrue = MemberDBUtil.updatemember(id, username, userid, leave, date, days, assign);
		
		try {
		if(isTrue == true) {
			System.out.println(id);

			List<Member> cusDetails = MemberDBUtil.getMemberDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Member> cusDetails = MemberDBUtil.getMemberDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response);
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
