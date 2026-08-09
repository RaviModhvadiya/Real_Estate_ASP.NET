<%@ Page Title="Client Directory" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ClientDirectory.aspx.cs" Inherits="Real_Estate.Admin.ClientDirectory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="data-panel">
        <div class="data-panel-header">
            <h3>Discerning Client Directory</h3>
            <button type="button" class="btn-sm" style="background-color: var(--accent);">+ Add Client</button>
        </div>

        <table class="admin-table">
            <thead>
                <tr>
                    <th>Client ID</th>
                    <th>Full Name</th>
                    <th>Primary Contact</th>
                    <th>Portfolio Tier</th>
                    <th>Last Active</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptClients" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="color: var(--text-muted);">#<%# Eval("Id") %></td>
                            <td style="font-weight: 600;"><%# Eval("Name") %></td>
                            <td>
                                <%# Eval("Email") %><br />
                                <span style="font-size: 0.75rem; color: var(--text-muted);"><%# Eval("Phone") %></span>
                            </td>
                            <td>
                                <span class='badge <%# Eval("Tier").ToString() == "Black Card" ? "badge-new" : "badge-reviewed" %>' style='<%# Eval("Tier").ToString() == "Black Card" ? "background-color: #1a1a1a; color: #9c7f50;": "" %>'>
                                    <%# Eval("Tier") %>
                                </span>
                            </td>
                            <td style="font-size: 0.85rem;"><%# Eval("LastActive") %></td>
                            <td>
                                <a href="#" class="btn-sm">Profile</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
