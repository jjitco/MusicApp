<%-- 
    Document   : index
    Created on : Mar 1, 2017, 9:46:44 PM
    Author     : Jason
--%>


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
</style>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
    </head>
    <body>





        <form action="musicForm" method="post">
            <div class="nav">
                <h1>Music Application</h1>
                <ul>

                    <c:if test ="${loginName == null}">

                        <li>Login</li>
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

                    <tr>
                        <td>Money Trees</td>
                        <td>Kendrick Lamar</td>
                        <td>Good Kid Maad City</td>
                        <td>Hip Hop</td>
                        <td>   
                            <input type="hidden" name="action" value="add">
                            <input type="submit" value="Add to Playlist"></form>
                        </td>
                    </tr>

                    <tr>
                        <td>Palm Trees</td>
                        <td>Flatbush Zombies</td>
                        <td>BetterOffDead</td>
                        <td>Hip Hop</td>
                        <td>          
                            <input type="hidden" name="action" value="add">
                            <input type="submit" value="Add to Playlist">
                        </td>
                    </tr>

                    <tr>
                        <td>Gold Soul Theory</td>
                        <td>The Underachievers</td>
                        <td>Indigoism</td>
                        <td>Hip Hop</td>
                        <td>
                            <input type="hidden" name="action" value="add">
                            <input type="submit" value="Add to Playlist">
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
