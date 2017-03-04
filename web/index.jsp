<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
    </head>
    <body>

        <div>
            <ul>
                <li><a href="login.jsp">Login</a></li>
                <li>Sign Up</li>
            </ul>
            <h1>Music Application</h1>



        </div>

        <form action="musicForm" method="post">

            <input type="text" name="username" value="${user.username}">

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
                        <input type="submit" value="Add to Playlist">
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

        </form>

    </body>
</html>
