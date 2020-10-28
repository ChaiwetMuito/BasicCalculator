<%-- 
    Document   : result
    Created on : Oct 28, 2020, 3:32:45 PM
    Author     : YUME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
                double total = (Double) request.getAttribute("result");
                String num1str = request.getParameter("number1");
                String num2str = request.getParameter("number2");
                String result = "" ;
                if (request.getParameter("add") != null) {
                    result = "The result of " + num1str + " + " + num2str +" is : " + total;
                }
                else if(request.getParameter("sub") != null){
                    result = "The result of " + num1str + " - " + num2str +" is : " + total;
                }
                else if(request.getParameter("mul") != null){
                    result = "The result of " + num1str + " * " + num2str +" is : " + total;
                }
                else if(request.getParameter("div") != null){
                    double num2 = Double.parseDouble(num2str);
                    if(num2 == 0.0 ){    
                        result ="The result of " + num1str + " / " + num2str +" is : Error divide by 0" ;
                    }
                    else result = "The result of " + num1str + " / " + num2str +" is : " + total;
                }
                out.print(result);
            %>
        </h1>
    </body>
</html>
