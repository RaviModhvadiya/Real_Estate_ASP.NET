<%@ Page Title="Manage Properties" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageProperties.aspx.cs" Inherits="Real_Estate.Admin.ManageProperties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .panel-container {
            background: #fff;
            padding: 30px;
            border: 1px solid #EAEAEA;
            border-radius: 4px;
        }

        .panel-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .panel-title {
            color: #111111;
            margin-top: 0;
            margin-bottom: 5px;
        }

        .panel-desc {
            color: #777777;
            margin: 0;
            font-size: 14px;
        }

        .btn-dark {
            background: #111111;
            color: #FFFFFF;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 13px;
            font-weight: 500;
        }

        .btn-grid {
            background: #FAFAFA;
            color: #111111;
            padding: 6px 12px;
            border: 1px solid #EAEAEA;
            border-radius: 4px;
            cursor: pointer;
            font-size: 12px;
        }

            .btn-grid:hover {
                background: #111111;
                color: #FFFFFF;
            }

        .table-responsive {
            overflow-x: auto;
        }

        /* GridView Minimal Styling */
        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .grid-header th {
            background-color: #FAFAFA;
            color: #555555;
            padding: 15px;
            text-align: left;
            font-size: 12px;
            letter-spacing: 0.5px;
            border-bottom: 2px solid #EAEAEA;
        }

        .grid-row td {
            padding: 15px;
            border-bottom: 1px solid #EAEAEA;
            color: #333;
            font-size: 14px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel-container">

        <div class="panel-header">
            <div>
                <h2 class="panel-title">Property Listings</h2>
                <p class="panel-desc">Add new real estate properties or update the status of existing ones.</p>
            </div>
            <asp:Button ID="btnAddProperty" runat="server" Text="+ Add New Property" CssClass="btn-dark" />
        </div>

        <div class="table-responsive">
            <asp:GridView ID="gvProperties" runat="server" CssClass="table" AutoGenerateColumns="False" OnRowCommand="gvProperties_RowCommand" GridLines="None">
                <HeaderStyle CssClass="grid-header" />
                <RowStyle CssClass="grid-row" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("PropertyID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgProperty" Height="50" Width="70" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Style="object-fit: cover; border-radius: 4px;" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CommandName="EditRow" CommandArgument='<%# Eval("PropertyID") %>' Text="Edit" CssClass="btn-grid" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" CommandName="DeleteRow" CommandArgument='<%# Eval("PropertyID") %>' Text="Delete" CssClass="btn-grid" OnClientClick="return confirm('Are you sure you want to delete this property?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

    </div>
</asp:Content>