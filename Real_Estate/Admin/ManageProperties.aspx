<%@ Page Title="Manage Properties" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageProperties.aspx.cs" Inherits="Real_Estate.Admin.ManageProperties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="data-panel">
        <div class="data-panel-header">
            <h3>Active International Portfolio</h3>
            <button type="button" class="btn-sm" style="background-color: var(--accent);">+ Add New Residence</button>
        </div>

        <table class="admin-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Residence Title</th>
                    <th>Location</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptProperties" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="color: var(--text-muted);">#<%# Eval("Id") %></td>
                            <td style="font-weight: 600;"><%# Eval("Title") %></td>
                            <td><%# Eval("Location") %></td>
                            <td style="text-transform: capitalize;"><%# Eval("Type") %></td>
                            <td style="color: var(--accent); font-weight: 600;"><%# Eval("Price") %></td>
                            <td><span class="badge badge-reviewed">Active</span></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
