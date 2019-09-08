<%-- 
    Document   : report
    Created on : Jul 1, 2019, 11:11:51 AM
    Author     : User
--%>

<%@page import="net.sf.jasperreports.engine.JasperExportManager"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
         <%
            try {
                response.setContentType("application/pdf");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airconnection", "root", "apcl123456");
                String s = session.getServletContext().getRealPath("/report1.jrxml");
                InputStream is = new FileInputStream(new File(s));
                JasperReport jr = JasperCompileManager.compileReport(is);
                Map map = new HashMap();
                JasperPrint jp = JasperFillManager.fillReport(jr, map, conn);
                JasperExportManager.exportReportToPdfStream(jp, response.getOutputStream());
                response.getOutputStream().flush();
                response.getOutputStream().close();

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
    </body>
</html>
