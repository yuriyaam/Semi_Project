package mvc.book.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.book.db.BookDAO;

public class BookDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		   boolean result = false;
		   boolean usercheck = false;
		   
		   int num = Integer.parseInt(request.getParameter("num"));
		   
		   BookDAO bdao = new BookDAO();
		   // 글 삭제 명령을 요청한 사용자가 글을 작성한 사용자인지 판단하기 위해
		   // 입력한 비밀번호와 저장된 비밀번호를 비교하여 일치하면 삭제합니다.
		   usercheck = bdao.isBook(num, request.getParameter("member_password"));
		   System.out.println("비번 = " +  request.getParameter("member_password"));
		   //비밀번호 일치하지 않는 경우
		   if(usercheck == false) {
		       response.setContentType("text/html;charset=UTF-8");
		       PrintWriter out=response.getWriter();
		       out.println("<script>");
		       out.println("alert('비밀번호가 다릅니다.');");
		       out.println("history.back();");
		       //out.println("location.href='BoardDetailAction.bo?num="+num+"';");
		       out.println("</script>");
		       out.close();
		       return null;
		   }
		   // 비밀번호 일치하는 경우 삭제 처리
		   result = bdao.bookDelete(num);
		   
		   ActionForward forward = new ActionForward();
		   //삭제 처리 실패한 경우
		   if(result == false) {
			   System.out.println("예매 취소 실패");
			   forward.setRedirect(false);
			   request.setAttribute("message", "예매 취소 실패입니다.");
			   forward.setPath("error/error.jsp");
			   return forward;
		   }
		   //삭제 처리 성공한 경우  - 글 목록 보기 요청을 전송하는 부분입니다.
		   System.out.println("예매 취소 성공");
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out= response.getWriter();
		   out.println("<script>");
		   out.println("location.href='BookList.bk';");
		   out.println("</script>");
		   out.close();
		   return null;
	}

}