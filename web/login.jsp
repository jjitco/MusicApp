<%-- 
    Document   : login
    Created on : Mar 3, 2017, 11:07:36 PM
    Author     : Jason, Jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-Up/Login Page</title>
     <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
     <link rel="stylesheet" href="css/style.css">
    <body>
        <div class="form">
              
            <ul class="tab-group">
              <li class="tab"><a href="#login">Log In</a></li>
              <li class="tab active"><a href="#signup">Sign Up</a></li>
            </ul>
            
            <div class="tab-content">
                <div id="login">
                     <h1>Please Login</h1>          
          <form action="musicForm" method="post">          
            <div class="field-wrap">
            <label>
              Username<span class="req">*</span>
            </label>
            <input type="text" name="username" value="" />
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" value="" />
          </div>                   
          <input type="hidden" name="action" value="login">
          <input type="submit" value="Log In" class="button button-block"/>
          </form>                                           
                </div>                                                
                
                 <div id="signup">   
                   <h1>Sign Up</h1>                        
        <form action="musicForm" method="post">                       
            <div class="field-wrap">
              <label>
                Username<span class="req">*</span>
              </label>
              <input type="text" name="username" value="${user.username}" />
            </div>        
            <div class="field-wrap">
              <label>
                Password<span class="req">*</span>
              </label>
              <input type="password" name="password" value=""/>
            </div>
            <div class="field-wrap">
              <label>
                Confirm Password<span class="req">*</span>
              </label>
              <input type="password" name="passwordConfirm" value=""/>
            </div>                 
              <input type="hidden" name="action" value="register">
               <input type="submit" value="Get Started" class="button button-block">
          </form>
               <p Style="color:red">${errorMessage}</p>
        </div>                       
           </div>         
              
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>        
            </body>
                </html>
