<%-- 
    Document   : login
    Created on : Mar 3, 2017, 11:07:36 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h2>Login</h2>
        <form action="musicForm" method="post">
            <label >Username:</label>
            <input type="text" name="username" value=""><br>   

            <label >Password:</label>
            <input type="password" name="password" value="">   

            <form>
                <input type="hidden" name="action" value="login">
                <input type="submit" value="Login"></form>

            <br>
            <h2>Sign Up</h2>
            <form action="musicForm" method="post">
                <label >Username:</label>
                <input type="text" name="username" value="${user.username}"><br>   

                <label >Password:</label>
                <input type="password" name="password" value="">   
                
                 <label >Confirm Password:</label>
                <input type="password" name="passwordConfirm" value="">   

                <form>
                    <input type="hidden" name="action" value="register">
                    <input type="submit" value="Sign Up"></form>
                <p Style="color:red">${errorMessage}</p>
                </body>
                </html>
