<%@ Page Title="Agent Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Real_Estate.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="stats-grid">
        <div class="stat-card">
            <h4>Total Inquiries</h4>
            <div class="value">24</div>
        </div>
        <div class="stat-card">
            <h4>Unread Messages</h4>
            <div class="value">7</div>
        </div>
        <div class="stat-card">
            <h4>Active Viewings</h4>
            <div class="value">3</div>
        </div>
        <div class="stat-card">
            <h4>Completed Deals</h4>
            <div class="value">12</div>
        </div>
    </div>

    <div class="data-panel">
        <div class="data-panel-header">
            <h3>Recent Private Inquiries</h3>
            <asp:Button ID="btnRefresh" runat="server" Text="Refresh List" CssClass="btn-sm" OnClick="btnRefresh_Click" />
        </div>

        <table class="admin-table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Client Name</th>
                    <th>Contact</th>
                    <th>Residence of Interest</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptInquiries" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("DateSubmitted") %></td>
                            <td style="font-weight: 600;"><%# Eval("Name") %></td>
                            <td>
                                <%# Eval("Email") %><br />
                                <span style="font-size: 0.75rem; color: var(--text-muted);"><%# Eval("Phone") %></span>
                            </td>
                            <td><%# Eval("Property") %></td>
                            <td>
                                <span class='badge <%# Eval("Status").ToString() == "New" ? "badge-new" : "badge-reviewed" %>'>
                                    <%# Eval("Status") %>
                                </span>
                            </td>
                            <td>
                                <asp:LinkButton ID="btnView" runat="server" CssClass="btn-sm" CommandArgument='<%# Eval("Id") %>'>View</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <div id="emptyState" runat="server" visible="false" style="padding: 3rem; text-align: center; color: var(--text-muted);">
            No pending inquiries found.
        </div>
    </div>

</asp:Content>
