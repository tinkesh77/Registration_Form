<%-- 
    Document   : signup
    Created on : 19-Feb-2023, 7:50:05 pm
    Author     : tinke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="style" href="/style.css">
        <style>
            body{
                font-family: Helvetica, sans-serif;
                margin: 0;
                padding: 0;
/*                background: url('img/wallpaperflare_wallpaper (1).jpg');*/
             background-repeat: no-repeat;
             background-size: auto;
             display: flex;
             justify-content: center;
             align-items: center;
             height: 100vh;
             border: solid black; 
            }
            .container{
               margin-top: 10px; 
                width: 30%;
                display: flex;
             justify-content: center;
             align-items: center;
/*             border: solid black;*/
border-radius: 10px; 
            background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);

            }
            h1{
                font-weight: 900;
                color: wheat;
            }
            tr{

            }
            td{
                font-family: Arial, Helvetica, sans-serif;
                color: black;
/*                border: solid black;*/
                padding: 2px;
                margin-right: 10px;
            }
            table{
                margin-top: 10px;
            }
        </style>
    </head>
    <body style="background-image: url('img/wallpaperflare.com_wallpaper (1).jpg');">
        <div class="container">
            <div class="new" style="">
                
                <h1 style="text-align: center;">Regesiter Here</h1>
            <div class="content">
                <form action="Register">
                    <table>
                        <tr>
                            <td>Enter Your Name</td>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>Set Pssword</td>
                            <td><input type="password" name="password"></td>
                        </tr>
                        <tr>
                            <td>Enter Your Email</td>
                            <td><input type="email" name="eamil"></td>
                        </tr>
                        <tr>
                            <td>Enter Your Number</td>
                            <td><input type="text" name="number"></td>
                        </tr>
                   
                        <tr>
                            <td><button>Sign Up</button></td>
                            <td><button>Login</button></td>
                        </tr>
                    </table>
                    
                </form>
            </div>
            </div>
        </div>
        <script>
            $(document).ready(function ()){
                console.log("Ready.....")
                $("#myform").on("submit" , function(event)){
                    var f = $(this).serialize();
                    console.log(f) 
                    
                    
                    $.ajax({
                        url : "Register" , 
                        data : f , 
                        type : 'POST'
                        success: function (data  , textStatus , jqXHR){
                             console.log(data);
                              console.log("Succes........."); 
                             
                        },
                        error : function (jqXHR , textStatus , errorThrown){
                            console.log(data);
                            console.log("erroe......");
                        
                    })
                }
            }
        </script>
    </body>
</html>
