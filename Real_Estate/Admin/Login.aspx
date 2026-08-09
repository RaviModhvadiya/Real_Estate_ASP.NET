<%@ Page Title="Admin Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Real_Estate.Admin.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure Agent Login | realEstate</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');

        body {
            font-family: 'Inter', sans-serif;
            background-color: #222222; /* Dark background for admin portal entry */
            color: #1a1a1a;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .login-card {
            background-color: #eceae3;
            padding: 3rem;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 10px 25px -10px rgba(0,0,0,0.5);
            border-top: 4px solid #9c7f50; /* Muted Gold accent */
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

            .login-header h2 {
                font-size: 1.75rem;
                margin-bottom: 0.5rem;
                font-weight: 800;
            }

                .login-header h2 span {
                    font-weight: 400;
                    color: #9c7f50;
                }

        .form-group {
            margin-bottom: 1.25rem;
            display: flex;
            flex-direction: column;
        }

            .form-group label {
                font-size: 0.75rem;
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: 0.1em;
                color: #525252;
                margin-bottom: 0.5rem;
            }

        .form-input {
            padding: 0.8rem 1rem;
            border: 1px solid #cdcaca;
            border-radius: 6px;
            font-family: inherit;
            font-size: 0.9rem;
            outline: none;
            transition: 0.3s;
        }

            .form-input:focus {
                border-color: #9c7f50;
            }

        .btn-login {
            width: 100%;
            padding: 0.8rem;
            background-color: #1a1a1a;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 1rem;
        }

            .btn-login:hover {
                background-color: #9c7f50;
            }

        .error-message {
            color: #ef4444;
            font-size: 0.85rem;
            margin-top: 1rem;
            text-align: center;
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <div class="login-header">
                <h2>real<span>Estate</span></h2>
                <p style="color: #7a7a7a; font-size: 0.9rem; margin: 0;">Agent Advisory Portal</p>
            </div>

            <div class="form-group">
                <label>Agent Email</label>
                <input type="email" id="txtEmail" runat="server" class="form-input" placeholder="agent@realestate.luxury" required />
            </div>

            <div class="form-group">
                <label>Access Key / Password</label>
                <input type="password" id="txtPassword" runat="server" class="form-input" placeholder="••••••••" required />
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Authenticate" CssClass="btn-login" OnClick="btnLogin_Click" />

            <div id="divError" runat="server" class="error-message">
                Invalid credentials. Please contact IT desk.
            </div>
        </div>
    </form>
</body>
</html>
