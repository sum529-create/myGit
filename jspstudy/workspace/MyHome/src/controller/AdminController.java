package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.admin.AdminCommand;
import command.admin.AdminMemberListCommand;
import command.bbs.BBSDeleteCommand;
import command.bbs.BBSInsertCommand;
import command.bbs.BBSListCommand;
import command.bbs.BBSUpdateCommand;
import command.bbs.BBSViewCommand;
import command.board.BoardCommand;
import command.board.BoardDeleteCommand;
import command.board.BoardInsertCommand;
import command.board.BoardListCommand;
import command.board.BoardViewCommand;
import command.board.MyBoardListCommand;
import command.board.QueryBoardListCommand;
import command.board.ReplyInsertCommand2;
import common.PathNRedirect;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminController() {
        super();
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = requestURI.substring(contextPath.length());
		
		PathNRedirect pathNRedirect = null;
		
		AdminCommand command = null;
		
		try {
			switch (cmd) {
			// command 필요
			case "/adminMemberListPage.admin":
				command = new AdminMemberListCommand();
				pathNRedirect = command.execute(request, response);
				break;
			// 단순 이동
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = pathNRedirect.getPath();
		boolean isRedirect = pathNRedirect.isRedirect();
		if (isRedirect) {
			response.sendRedirect(path);
		} else {
			request.getRequestDispatcher(path).forward(request, response);
		}
    
    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}