<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./AllLink.jsp" %>

<!DOCTYTPE html>
<html>
    <head>

    </head>
    <span>
        
    </span>
  
    <body>
        <a href="#" class="btn btn-danger">Include</a>
        {{9 * 9}}
        <h1>welcome page from web-inf jsp</h1>
        <table>
             <c:forEach items="adminOne" var="pqr">
                <tr>
                    <td>${pqr.name()}</td>
                  
                </tr>
       </c:forEach>
        </table>
       
 
        <script>
                    console.log("hello js");
        </script>
    </body>
</html>
