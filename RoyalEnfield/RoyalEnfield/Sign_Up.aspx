﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="RoyalEnfield.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
</head>
<style>
	body {
		margin-top:30px;
		color: #6a6f8c;
		background-color: lightcyan;
		font: 600 16px/18px 'Open Sans',sans-serif;
	}

	*, :after, :before {
		box-sizing: border-box
	}

	.clearfix:after, .clearfix:before {
		content: '';
		display: table
	}

	.clearfix:after {
		clear: both;
		display: block
	}

	a {
		color: inherit;
		text-decoration: none
	}

	.login-wrap {
		width: 100%;
		margin: auto;
		max-width: 525px;
		min-height: 670px;
		position: relative;
		background: url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
		box-shadow: 0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
	}

	.login-html {
		width: 100%;
		height: 100%;
		position: absolute;
		padding: 90px 70px 50px 70px;
		background: rgba(40,57,101,.9);
	}

		.login-html .sign-in-htm,
		.login-html .sign-up-htm {
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			position: absolute;
			transform: rotateY(180deg);
			backface-visibility: hidden;
			transition: all .4s linear;
		}

		.login-html .sign-in,
		.login-html .sign-up,
		.login-form .group .check {
			display: none;
		}

		.login-html .tab,
		.login-form .group .label,
		.login-form .group .button {
			text-transform: uppercase;
		}

		.login-html .tab {
			font-size: 22px;
			margin-right: 15px;
			padding-bottom: 5px;
			margin: 0 15px 10px 0;
			display: inline-block;
			border-bottom: 2px solid transparent;
		}

		.login-html .sign-in:checked + .tab,
		.login-html .sign-up:checked + .tab {
			color: #fff;
			border-color: #1161ee;
		}

	.login-form {
		min-height: 345px;
		position: relative;
		perspective: 1000px;
		transform-style: preserve-3d;
	}

		.login-form .group {
			margin-bottom: 15px;
		}

			.login-form .group .label,
			.login-form .group .input,
			.login-form .group .button {
				width: 100%;
				color: #fff;
				display: block;
			}

			.login-form .group .input,
			.login-form .group .button {
				border: none;
				padding: 15px 20px;
				border-radius: 25px;
				background: rgba(255,255,255,.1);
			}

			.login-form .group input[data-type="password"] {
				text-security: circle;
				-webkit-text-security: circle;
			}

			.login-form .group .label {
				color: #aaa;
				font-size: 12px;
			}

			.login-form .group .button {
				background: #1161ee;
			}

			.login-form .group label .icon {
				width: 15px;
				height: 15px;
				border-radius: 2px;
				position: relative;
				display: inline-block;
				background: rgba(255,255,255,.1);
			}

				.login-form .group label .icon:before,
				.login-form .group label .icon:after {
					content: '';
					width: 10px;
					height: 2px;
					background: #fff;
					position: absolute;
					transition: all .2s ease-in-out 0s;
				}

				.login-form .group label .icon:before {
					left: 3px;
					width: 5px;
					bottom: 6px;
					transform: scale(0) rotate(0);
				}

				.login-form .group label .icon:after {
					top: 6px;
					right: 0;
					transform: scale(0) rotate(0);
				}

			.login-form .group .check:checked + label {
				color: #fff;
			}

				.login-form .group .check:checked + label .icon {
					background: #1161ee;
				}

					.login-form .group .check:checked + label .icon:before {
						transform: scale(1) rotate(45deg);
					}

					.login-form .group .check:checked + label .icon:after {
						transform: scale(1) rotate(-45deg);
					}

	.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm {
		transform: rotate(0);
	}

	.login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
		transform: rotate(0);
	}

	.hr {
		height: 2px;
		margin: 60px 0 50px 0;
		background: rgba(255,255,255,.2);
	}

	.foot-lnk {
		text-align: center;
	}
</style>
<body>
    <form runat="server">
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="user" class="label">Email</label>
                           <asp:TextBox class="input" ID="email_signin" MaxLength="50" PlaceHolder="Email" runat="server" TextMode="Email"/>
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                           <asp:TextBox class="input" ID="pass_signin" MaxLength="50" PlaceHolder="Password" runat="server" TextMode="Password"/>
                        </div>
					    
                        <div class="group">
                             <asp:Button class="button" ID="signin" Text="Sign In" runat="server" OnClick="button_signin" />
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">Forgot Password?</a>
                        </div>
                    </div>
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="user" class="label">Username</label>
						 <asp:TextBox class="input" ID="user_signup" MaxLength="50" PlaceHolder="Username" runat="server" />
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Email</label>
                         <asp:TextBox class="input" ID="email_signup" MaxLength="50" PlaceHolder="Email" runat="server" TextMode="Email"/>
						 <%--<asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="email_signup" errormessage="Please enter a value!" />--%>
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Phone Number</label>
                         <asp:TextBox class="input" ID="phone_signup" MaxLength="10" PlaceHolder="Phone Number" runat="server" TextMode="Phone" />
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                         <asp:TextBox class="input" ID="password_signup" MaxLength="20" PlaceHolder="Password" runat="server" TextMode="Password" />
                        </div>
                        <div class="group">
                            
						 <asp:Button class="button" ID="button" Text="Sign Up" runat="server" OnClick="button_Click" />
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <label for="tab-1">
                            Already Member?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
