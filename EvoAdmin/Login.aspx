﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EvoAdmin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login - Growers Transplanting, Inc</title>

        <!-- Cross platform favicon setup & app themeing -->
        <link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="images/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
        <link rel="manifest" href="manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="images/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#005a01">

        <!-- SEO tags -->
        <meta name="description" content="Growers Transplanting, Inc">

        <meta property="og:locale" content="en_US" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="Login - Growers Transplanting, Inc" />
        <meta property="og:description" content="Growers Transplanting, Inc" />
        <meta property="og:url" content="/" />
        <meta property="og:site_name" content="Growers Transplanting" />
        <meta property="og:image" content="growers-transplanting.jpg" />
        <meta property="og:image:secure_url" content="growers-transplanting.jpg" />
        <meta property="og:image:width" content="1104" />
        <meta property="og:image:height" content="736" />

        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:description" content="Growers Transplanting, Inc" />
        <meta name="twitter:title" content="Login - Growers Transplanting, Inc" />
        <meta name="twitter:site" content="@growerstransplanting" />
        <meta name="twitter:image" content="growers-transplanting.jpg" />
        <meta name="twitter:creator" content="@growerstransplanting" />

        <link rel="preload" href="fonts/fa/fa-solid-900.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="fonts/fa/fa-regular-400.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="fonts/fa/fa-brands-400.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="fonts/Roboto-Bold.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="fonts/Roboto-Medium.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="fonts/Roboto-Regular.woff2" as="font" type="font/woff2" crossorigin>

        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/custom.css">
    </head>
    <body class="login__page">
     <div class="login__container">
       <div class="col-lg-6 ml-lg-auto">
            <div class="login__wrapper text-center">
                <a href="#" class="logo-link logo-link--vertical">
                    <img src="images/logo-vertical.svg" alt="" width="180" height="179" />
                </a>

                <h1>Login</h1>

                <form class="login__form" runat="server">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True"
                        ForeColor="Red" Text=""></asp:Label>
                    <label>
                        <h3>User Name</h3>
                        <asp:TextBox ID="txtUserName" runat="server" placeholder="Username" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                            SetFocusOnError="true" ErrorMessage="Please Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>

                    </label>

                    <label>
                        <h3>Password</h3>
                        <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                             SetFocusOnError="true" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>


                    </label>

                    <label>
                        <a class="bttn-link" href="#" title="Forgot Password?">Forgot Password?</a>
                    </label>

                    <asp:Button ID="btnlogin" class="bttn bttn-primary w-100 bttn-action" runat="server" Text="Login" OnClick="btnlogin_Click" />
                </form>
            </div>
        </div>
    </div>

        <script src="js/jquery.min.js"></script>
        <script defer="defer" src="js/popper.min.js"></script>
        <script defer="defer" src="js/bootstrap.min.js"></script>
        <script defer="defer" src="js/custom.js"></script>
    </body>
</html>
