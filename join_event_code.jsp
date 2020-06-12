<%-- 
    Document   : join_event_code
    Created on : 24 Jan, 2020, 11:27:30 AM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                Myconnection con  =new Myconnection();
            con.connect();

String e_id=request.getParameter("e_id");
String r_id="1";
String date=new java.util.Date().toLocaleString();

String q="insert into join_event (e_id,r_id,date) values('"+e_id+"','"+r_id+"','"+date+"')";
con.allquery(q);

%>