﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login-temp.aspx.cs" Inherits="dashboard_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--<link rel="stylesheet/less" type="text/css" href="css/style.less" />--%>
    <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.9.0/less.min.js"></script>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <style>
        @font-face {
            font-family: 'Source Sans Pro';
            font-style: normal;
            font-weight: 200;
            src: local('Source Sans Pro ExtraLight'), local('SourceSansPro-ExtraLight'), url(https://fonts.gstatic.com/s/sourcesanspro/v13/6xKydSBYKcSV-LCoeQqfX1RYOo3i94_wlxdr.ttf) format('truetype');
        }

        @font-face {
            font-family: 'Source Sans Pro';
            font-style: normal;
            font-weight: 300;
            src: local('Source Sans Pro Light'), local('SourceSansPro-Light'), url(https://fonts.gstatic.com/s/sourcesanspro/v13/6xKydSBYKcSV-LCoeQqfX1RYOo3ik4zwlxdr.ttf) format('truetype');
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-weight: 300;
        }

        html {
            min-height: 100%;
        }

        body {
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            font-weight: 300;
            min-height: 100vh;
        }

            body ::-webkit-input-placeholder {
                /* WebKit browsers */
                font-family: 'Source Sans Pro', sans-serif;
                color: white;
                font-weight: 300;
            }

            body :-moz-placeholder {
                /* Mozilla Firefox 4 to 18 */
                font-family: 'Source Sans Pro', sans-serif;
                color: white;
                opacity: 1;
                font-weight: 300;
            }

            body ::-moz-placeholder {
                /* Mozilla Firefox 19+ */
                font-family: 'Source Sans Pro', sans-serif;
                color: white;
                opacity: 1;
                font-weight: 300;
            }

            body :-ms-input-placeholder {
                /* Internet Explorer 10+ */
                font-family: 'Source Sans Pro', sans-serif;
                color: white;
                font-weight: 300;
            }

        .wrapper {
            background: #50a3a2;
            /*background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);*/
            background: linear-gradient(141deg, #050505 0%, #124c54 51%, #06648a 75%);
            transition: background 0.25s ease;
            -webkit-transition: background 0.25s ease;
            -moz-transition: background 0.25s ease;
            -ms-transition: background 0.25s ease;
            position: relative;
            top: 50%;
            left: 0;
            width: 100%;
            /*height: 400px;*/
            min-height: 100vh;
            /*margin-top: -200px;*/
            overflow: hidden;
        }

            .wrapper.form-success .container h1 {
                -webkit-transform: translateY(85px);
                transform: translateY(85px);
            }

        .container {
            position: relative;
            z-index: 2;
            /*max-width: 600px;*/
            margin: 0 0;
            padding: 80px 0;
            height: 100%;
            text-align: center;
        }

            .container h1 {
                font-size: 30px;
                transition-duration: 1s;
                transition-timing-function: ease-in-put;
                font-weight: bold;
                margin: 15px 0;
            }

        form {
            padding: 20px 0;
            position: relative;
            z-index: 2;
        }

            form input {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                outline: 0;
                border: 1px solid rgba(255, 255, 255, 0.4);
                background-color: rgba(255, 255, 255, 0.2);
                width: 250px;
                border-radius: 3px;
                padding: 10px 15px;
                margin: 0 auto 10px auto;
                display: block;
                text-align: center;
                font-size: 18px;
                color: white;
                transition-duration: 0.25s;
                font-weight: 300;
            }

                form input:hover {
                    background-color: rgba(255, 255, 255, 0.4);
                }

                form input:focus {
                    background-color: white;
                    width: 300px;
                    color: #53e3a6;
                }

            .btnEnter {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                outline: 0;
                background-color: white;
                border: 0;
                padding: 10px 15px;
                color: #53e3a6;
                border-radius: 3px;
                width: 250px;
                cursor: pointer;
                font-size: 18px;
                transition-duration: 0.25s;
            }

                .btnEnter:hover {
                    background-color: #f5f7f9;
                }

        .bg-bubbles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

            .bg-bubbles li {
                position: absolute;
                list-style: none;
                display: block;
                width: 40px;
                height: 40px;
                background-color: rgba(255, 255, 255, 0.15);
                bottom: -160px;
                -webkit-animation: square 25s infinite;
                animation: square 25s infinite;
                transition-timing-function: linear;
            }

                .bg-bubbles li:nth-child(1) {
                    left: 10%;
                }

                .bg-bubbles li:nth-child(2) {
                    left: 20%;
                    width: 80px;
                    height: 80px;
                    -webkit-animation-delay: 2s;
                    animation-delay: 2s;
                    -webkit-animation-duration: 17s;
                    animation-duration: 17s;
                }

                .bg-bubbles li:nth-child(3) {
                    left: 25%;
                    -webkit-animation-delay: 4s;
                    animation-delay: 4s;
                }

                .bg-bubbles li:nth-child(4) {
                    left: 40%;
                    width: 60px;
                    height: 60px;
                    -webkit-animation-duration: 22s;
                    animation-duration: 22s;
                    background-color: rgba(255, 255, 255, 0.25);
                }

                .bg-bubbles li:nth-child(5) {
                    left: 70%;
                }

                .bg-bubbles li:nth-child(6) {
                    left: 80%;
                    width: 120px;
                    height: 120px;
                    -webkit-animation-delay: 3s;
                    animation-delay: 3s;
                    background-color: rgba(255, 255, 255, 0.2);
                }

                .bg-bubbles li:nth-child(7) {
                    left: 32%;
                    width: 160px;
                    height: 160px;
                    -webkit-animation-delay: 7s;
                    animation-delay: 7s;
                }

                .bg-bubbles li:nth-child(8) {
                    left: 55%;
                    width: 20px;
                    height: 20px;
                    -webkit-animation-delay: 15s;
                    animation-delay: 15s;
                    -webkit-animation-duration: 40s;
                    animation-duration: 40s;
                }

                .bg-bubbles li:nth-child(9) {
                    left: 25%;
                    width: 10px;
                    height: 10px;
                    -webkit-animation-delay: 2s;
                    animation-delay: 2s;
                    -webkit-animation-duration: 40s;
                    animation-duration: 40s;
                    background-color: rgba(255, 255, 255, 0.3);
                }

                .bg-bubbles li:nth-child(10) {
                    left: 90%;
                    width: 160px;
                    height: 160px;
                    -webkit-animation-delay: 11s;
                    animation-delay: 11s;
                }

        .farsi-title {
            font-family: tahoma;
            direction:rtl
        }

        .farsi-text {
            font-family: tahoma;
            direction:rtl
        }

        .farsi-btn {
            font-family: tahoma;
        }


        @-webkit-keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }

            100% {
                -webkit-transform: translateY(-700px) rotate(600deg);
                transform: translateY(-700px) rotate(600deg);
            }
        }

        @keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }

            100% {
                -webkit-transform: translateY(-700px) rotate(600deg);
                transform: translateY(-700px) rotate(600deg);
            }
        }
        @media screen and (max-width: 600px) {
            form input {
                width: 90%;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" style="min-height: 100vh; padding: 0; margin: 0;">
        <div class="wrapper">
            <div class="container">
                <h1>Enter your username and password:</h1>

                <div class="form">
                    <asp:TextBox ID="txtUser" runat="server" placeholder="Username" AutoCompleteType="None"></asp:TextBox>
                    <asp:TextBox ID="txtPass" runat="server" placeholder="Password" AutoCompleteType="None" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="btnEnter" runat="server" CssClass="btnEnter" ClientIDMode="Static" Text="Enter" OnClick="btnEnter_Click" />
                    <asp:Button ID="btnReg" runat="server" CssClass="btnEnter" ClientIDMode="Static" Text="Register" OnClick="btnReg_Click" />
                    <asp:Label ID="lblError" runat="server" Text="Username/Password was incorrect" ForeColor="#FF3300" Visible="false"></asp:Label>
                </div>
            </div>

            <ul class="bg-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </form>
    <script>
        $("#login-button").click(function (event) {
            event.preventDefault();

            $('form').fadeOut(500);
            $('.wrapper').addClass('form-success');
        });
    </script>
</body>
</html>
