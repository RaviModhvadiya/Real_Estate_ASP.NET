<%@ Page Title="System Settings" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Real_Estate.Admin.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .settings-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2.5rem;
        }

        @media (max-width: 900px) {
            .settings-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="settings-grid">
        <div class="data-panel" style="padding: 2.5rem;">
            <h3 style="margin-bottom: 1.5rem; font-size: 1.2rem;">Profile Configuration</h3>

            <div style="margin-bottom: 1.25rem;">
                <label style="display: block; font-size: 0.75rem; font-weight: 700; text-transform: uppercase; color: var(--text-muted); margin-bottom: 0.5rem;">Full Name</label>
                <input type="text" id="txtAgentName" runat="server" class="form-input" style="width: 100%; padding: 0.8rem; border: 1px solid var(--border); border-radius: 6px; background: var(--bg-primary);" value="Julian Vance" />
            </div>

            <div style="margin-bottom: 1.25rem;">
                <label style="display: block; font-size: 0.75rem; font-weight: 700; text-transform: uppercase; color: var(--text-muted); margin-bottom: 0.5rem;">Official Email</label>
                <input type="email" id="txtAgentEmail" runat="server" class="form-input" style="width: 100%; padding: 0.8rem; border: 1px solid var(--border); border-radius: 6px; background: var(--bg-primary);" value="admin@realestate.luxury" />
            </div>

            <asp:Button ID="btnSaveProfile" runat="server" Text="Update Profile" CssClass="btn-sm" Style="background-color: var(--accent); padding: 0.6rem 1.2rem; font-size: 0.85rem;" OnClick="btnSaveProfile_Click" />

            <div id="msgProfile" runat="server" visible="false" style="margin-top: 1rem; color: #065f46; font-size: 0.85rem; font-weight: 600;">
                Profile updated successfully.
            </div>
        </div>

        <div class="data-panel" style="padding: 2.5rem;">
            <h3 style="margin-bottom: 1.5rem; font-size: 1.2rem;">Security & Preferences</h3>

            <div style="margin-bottom: 1.25rem;">
                <label style="display: block; font-size: 0.75rem; font-weight: 700; text-transform: uppercase; color: var(--text-muted); margin-bottom: 0.5rem;">New Access Key</label>
                <input type="password" id="txtNewPassword" runat="server" class="form-input" style="width: 100%; padding: 0.8rem; border: 1px solid var(--border); border-radius: 6px; background: var(--bg-primary);" placeholder="Leave blank to keep current" />
            </div>

            <div style="margin-bottom: 1.5rem;">
                <label style="display: flex; align-items: center; gap: 0.5rem; font-size: 0.9rem; color: var(--text-secondary); cursor: pointer;">
                    <input type="checkbox" id="chkEmailNotif" runat="server" checked />
                    Receive Email Alerts for New Inquiries
                </label>
            </div>

            <asp:Button ID="btnSaveSecurity" runat="server" Text="Save Preferences" CssClass="btn-sm" Style="background-color: var(--text-primary); padding: 0.6rem 1.2rem; font-size: 0.85rem;" OnClick="btnSaveSecurity_Click" />

            <div id="msgSecurity" runat="server" visible="false" style="margin-top: 1rem; color: #065f46; font-size: 0.85rem; font-weight: 600;">
                Preferences saved successfully.
            </div>
        </div>
    </div>

</asp:Content>
