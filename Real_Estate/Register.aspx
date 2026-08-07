<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Real_Estate.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="section-padding">
        <div class="container">
            <div class="reveal" style="max-width: 600px; margin: 0 auto;">
                <div style="background-color: var(--card-bg); border: 1px solid var(--border); border-radius: var(--radius-md); padding: 3rem; box-shadow: var(--card-shadow);">

                    <div style="text-align: center; margin-bottom: 2.5rem;">
                        <h2 style="font-size: 2rem; margin-bottom: 0.5rem; color: var(--text-primary);">Client Registration</h2>
                        <p style="color: var(--text-secondary); font-size: 0.95rem;">Create an account to access private off-market listings.</p>
                    </div>

                    <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" id="regName" runat="server" class="form-input" placeholder="e.g. Julian Vance" required />
                    </div>

                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="email" id="regEmail" runat="server" class="form-input" placeholder="e.g. julian@vance.com" required />
                    </div>

                    <div class="form-group">
                        <label>Phone / WhatsApp</label>
                        <input type="tel" id="regPhone" runat="server" class="form-input" placeholder="e.g. +91 98765 43210" required />
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" id="regPassword" runat="server" class="form-input" placeholder="Create a strong password" required />
                    </div>

                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" id="regConfirmPassword" runat="server" class="form-input" placeholder="Confirm your password" required />
                    </div>

                    <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn btn-primary" Style="width: 100%; margin-top: 1rem; height: 46px;" OnClick="btnRegister_Click" />

                    <div id="formResult" runat="server" style="display: none; margin-top: 1.5rem; padding: 1.5rem; background-color: var(--bg-secondary); border-left: 4px solid var(--accent); border-radius: var(--radius-sm); text-align: left;"></div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>