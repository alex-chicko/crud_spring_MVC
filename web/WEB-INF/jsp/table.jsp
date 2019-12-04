<%-- 
    Document   : table
    Created on : 26 Σεπ 2019, 1:30:13 πμ
    Author     : ALEX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Mansalva&display=swap" rel="stylesheet">
        <style>

            h1{
                font-size: 36px;
                color:#2196f3;
                text-transform: uppercase;
                font-weight: 300;
                text-align: center;
                margin-bottom: 15px;
            }
            table{
                width:100%;
                table-layout: fixed;
            }
            .tbl-header{
                background-color: black;
            }
            .tbl-content{
                height:300px;
                overflow-x:auto;
                margin-top: 0px;
                border: 1px solid rgba(255,255,255,0.3);
                background: black;
            }
            th{
                padding: 20px 15px;
                text-align: left;
                font-weight: 500;
                font-size: 19px;
                color: #2196f3;
                text-transform: uppercase;
            }
            td{
                padding: 15px;
                text-align: left;
                vertical-align:middle;
                font-weight: 300;
                font-size: 16px;
                color: #2196f3;
                border-bottom: solid 1px rgba(255,255,255,0.1);
            }





            body{
                background: -webkit-linear-gradient(left, #25c481, #25b7c4);
                background: linear-gradient(to right, #25c481, #25b7c4);
                font-family: 'Mansalva', cursive;
            }
            section{
                margin: 50px;
            }
            body{
                background: url('https://images.unsplash.com/photo-1547394765-185e1e68f34e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80') ;
            }
            
            .tsiko{
                background-color:  black;
            }
            ::-webkit-scrollbar {
                width: 6px;
            } 
            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            } 
            ::-webkit-scrollbar-thumb {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            }

        </style>
    </head>
    <body>
        <section>
            <h1>[Trainers List]</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">

                    
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>FIRSTNAME</th>
                                <th>LASTNAME</th>
                                <th>SUBJECT</th>
                                <th>DELETE</th>
                                <th>UPDATE</th>

                            </tr>
                        </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                        <c:forEach items="${tableTr}" var="train">
                            <tr>
                                <td>${train.id}</td>
                                <td>${train.fname} </td>
                                <td>${train.lname}</td>
                                <td>${train.subject}</td>
                                <td><a href="${pageContext.request.contextPath}/trainer/removetrainer.htm?id=${train.id}">DELETE</a></td>
                                <td><a href="${pageContext.request.contextPath}/trainer/findtrainerup.htm?id=${train.id}">UPDATE</a></td>

                            </tr>
                        </c:forEach>     

                    </tbody>

                </table>
            </div>

            <button type="button"><a href="${pageContext.request.contextPath}/index.htm">HOME</a></button>
       



    </section>

    <script>

        $(window).on("load resize ", function () {
            var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
            $('.tbl-header').css({'padding-right': scrollWidth});
        }).resize();

    </script>
</body>
</html>
