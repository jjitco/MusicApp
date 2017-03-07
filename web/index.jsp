<%-- 
    Document   : index
    Created on : Mar 1, 2017, 9:46:44 PM
    Author     : Jason
--%>


<%@page import="business.MusicServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.SongDB"%>
<%@page import="business.Song"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    .nav ul {
        list-style-type: none;
    }

    .nav li {
        display: inline-block;
    }

    .nav input{

        width:80px;
    }

    .left{
        float:left;
        margin:auto;
        width:20%;
        
    }
    
    .center{
        margin: auto;
        width: 50%;
    }

    table{

    }

    tr:hover{
        background-color:lightcyan;
    }

    tr { list-style-type: none;}

    .playing{
        width:100%;
        position:fixed;
        bottom:0;
        background-color:black;
        color:white;
        font-size:20px;
        text-align: center;
    }
    
    .functionButtons button:hover{
        display: none;

    }
</style>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
    </head>

    <body>

        <div class="left">
            <p>Playlists</p>
            
        </div>
        
        
        <div class="center">
            <form action="musicForm" method="post">
                <div class="nav">
                    <h1>Music Application</h1>
                    <ul>

                        <c:if test ="${loginName == null}">

                            <li>

                                <label >Username:</label>
                                <input type="text" name="username" value=""><br>   

                                <label >Password:</label>
                                <input type="password" name="password" value="">   

                                <input type="submit" name ="action" value="Login">

                            </li>
                            <li>
                                <a href="login.jsp">
                                    <input type="button" value="Sign Up" />
                                </a></li>
                        </ul>
                    </c:if>

                    <c:if test ="${loginName != null}">
                        <ul>
                            <input type="hidden" name="loginName" value="${loginName}" />
                            <li>Hi ${loginName}!</li>
                            <li><a href=""><input type="submit" name="action" value="Log Out"></a></li>
                        </ul>
                    </c:if>
                    <hr>
                </div>

                <div>

                    <h2>${message}</h2>

                    <table>
                        <tr>
                            <td>Song</td>
                            <td>Artist</td>
                            <td>Album</td>
                            <td>Genre</td>
                        </tr>

                        <%
                            ArrayList<Song> songs = SongDB.getSongs();
                            for (Song s : songs) {
                        %>
                        <tr>
                            <td>
                                <%=s.title%>
                            </td>

                            <td>
                                <%=s.artist%>
                            </td>
                            <td>
                                <%=s.album%>
                            </td>

                            <td>
                                <%=s.genre%>
                            </td>

                        <div class="functionButtons">
                            <form method="post">
                                <td>   
                                    <button type="submit" name="action" value="add">+</button>

                                </td>
                                <td>
                                    <input type="hidden" name="nowPlaying" value="<%=s.title%>">
                                    <button type="submit" name="action" value="play">></button>
                                </td>
                            </form>
                        </div>

                        </tr>

                        <%}%>

                    </table>
                </div>
            </form>
        </div>


        <div class="playing">
            <p>Now Playing: ${nowPlaying}</p>

        </div>
    </body>
</html>
