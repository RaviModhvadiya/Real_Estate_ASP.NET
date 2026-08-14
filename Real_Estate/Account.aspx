<%@ Page Title="My Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Real_Estate.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .account-container {
            max-width: 450px;
            margin: 50px auto;
            padding: 35px;
            background: #fff;
            border: 1px solid #EAEAEA;
            border-radius: 4px;
        }

        .account-title {
            color: #111111;
            margin-top: 0;
            margin-bottom: 30px;
            font-size: 22px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-size: 12px;
            font-weight: bold;
            color: #555;
            margin-bottom: 8px;
            letter-spacing: 0.5px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .btn-dark {
            width: 100%;
            background: #111111;
            color: #FFFFFF;
            padding: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            margin-top: 15px;
        }

            .btn-dark:hover {
                background: #333333;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="account-container">
        <h2 class="account-title">Change Password</h2>

        <div class="form-group">
            <label class="form-label">CURRENT PASSWORD</label>
            <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">NEW PASSWORD</label>
            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">CONFIRM NEW PASSWORD</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="btn-dark" />
    </div>
</asp:Content>