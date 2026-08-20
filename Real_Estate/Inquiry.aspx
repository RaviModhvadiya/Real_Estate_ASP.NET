<%@ Page Title="Property Inquiry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="Real_Estate.Inquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .inquiry-container {
            max-width: 550px;
            margin: 50px auto;
            padding: 35px;
            background: #fff;
            border: 1px solid #EAEAEA;
            border-radius: 4px;
        }

        .inquiry-title {
            color: #111111;
            margin-top: 0;
            margin-bottom: 5px;
            font-size: 22px;
        }

        .inquiry-desc {
            color: #777777;
            margin-bottom: 30px;
            font-size: 14px;
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

        .form-control-readonly {
            background-color: #f9f9f9;
            color: #777;
        }

        .btn-gold {
            width: 100%;
            background: #d4af37;
            color: #111827;
            padding: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 15px;
            font-weight: bold;
            margin-top: 15px;
        }

            .btn-gold:hover {
                background: #c19b2e;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="inquiry-container">
        <h2 class="inquiry-title">Inquire About This Property</h2>
        <p class="inquiry-desc">Provide your contact number and message to schedule a viewing or request more details.</p>

        <!-- Pre-filled automatically from the user's login Session -->
        <div class="form-group">
            <label class="form-label">FULL NAME</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-control-readonly" ReadOnly="True"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">PHONE NUMBER</label>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-control" placeholder="(555) 000-0000"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">YOUR MESSAGE</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="I am interested in viewing this property..."></asp:TextBox>
        </div>

        <asp:Button ID="btnSubmitInquiry" runat="server" Text="Submit Inquiry" CssClass="btn-gold" OnClientClick="alert('Inquiry saving will be connected in the database phase.'); return false;" />
    </div>
</asp:Content>
