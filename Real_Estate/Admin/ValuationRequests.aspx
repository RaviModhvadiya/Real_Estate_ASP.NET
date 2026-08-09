<%@ Page Title="Valuation Requests" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ValuationRequests.aspx.cs" Inherits="Real_Estate.Admin.ValuationRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="data-panel">
        <div class="data-panel-header">
            <h3>Pending Property Valuations</h3>
        </div>

        <table class="admin-table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Client</th>
                    <th>Property Details</th>
                    <th>Stated Goal</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptValuations" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="font-size: 0.85rem;"><%# Eval("RequestDate") %></td>
                            <td style="font-weight: 600;"><%# Eval("ClientName") %></td>
                            <td>
                                <%# Eval("PropertyType") %><br />
                                <span style="font-size: 0.75rem; color: var(--text-muted);"><%# Eval("Location") %></span>
                            </td>
                            <td><%# Eval("Goal") %></td>
                            <td>
                                <span class='badge <%# Eval("Status").ToString() == "Pending Review" ? "badge-new" : "badge-reviewed" %>'>
                                    <%# Eval("Status") %>
                                </span>
                            </td>
                            <td>
                                <a href="#" class="btn-sm">Assess</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
