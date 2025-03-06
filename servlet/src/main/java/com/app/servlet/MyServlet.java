package com.app.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// @WebServlet("/home")
// URL을 mapping해주는 역할
// 하지만 파일 하나의 어노텐션이 다 들어가 있으면, 유지보수가 어렵다.
// 따라서 web.xml을 만들어서 한 번에 일괄적으로 관리한다.
// 프로젝트 하나당 web.xml 하나

public class MyServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      인코딩 설정 필수*
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=utf-8;");

      PrintWriter out = response.getWriter();
      String name = "";
      int age = 0, realAge = 0;
      int num1 = 0, num2 = 0;
      num1 = Integer.parseInt(request.getParameter("num1"));
      num2 = Integer.parseInt(request.getParameter("num2"));
      int sum = num1 + num2;
      if(sum % 2 ==0) {
    	  out.print("짝수입니다");
      }
      else {
    	  out.print("홀수입니다");
      }
      out.close();
//      name = request.getParameter("name");
//      age = Integer.parseInt(request.getParameter("age"));
//      realAge = age - 1;
//      
//      
//      out.print("<h1>Hello, JSP!😎</h1>");
//      out.print(name + "님 환영합니다!");
//      out.print("나이는 :" + age + "만 나이는 :" + realAge);
//      out.close();
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}
