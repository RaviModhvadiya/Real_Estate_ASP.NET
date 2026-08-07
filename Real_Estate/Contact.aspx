<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Real_Estate.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <section class="section-padding" id="contact">
        <div class="container">
            <div class="contact-wrapper">
                
                <!-- Left Panel: Info -->
                <div class="contact-info-panel reveal">
                    <h3>Initiate a Private Inquiry</h3>
                    <p>Request confidential viewings or discuss off-market property acquisitions with our senior advisory desk across 15 countries.</p>
                    
                    <div class="contact-details">
                        <div class="contact-detail-item">
                            <div class="contact-detail-icon">
                                <svg viewBox="0 0 24 24"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                            </div>
                            <div>
                                <h5 style="font-size: 0.95rem; font-weight: 600;">Direct Advisory Line</h5>
                                <p style="margin: 0; font-size: 0.85rem;">+1 (800) 888-9020</p>
                            </div>
                        </div>
                        
                        <div class="contact-detail-item">
                            <div class="contact-detail-icon">
                                <svg viewBox="0 0 24 24"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                            </div>
                            <div>
                                <h5 style="font-size: 0.95rem; font-weight: 600;">Private Advisory Desk</h5>
                                <p style="margin: 0; font-size: 0.85rem;">advisory@realestate.luxury</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Right Panel: Form -->
                <div class="contact-form-panel reveal">
                    <div class="contact-form">
                        <div class="form-grid-2">
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" id="contactName" runat="server" class="form-input" placeholder="e.g. Julian Vance" required />
                            </div>
                            
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="email" id="contactEmail" runat="server" class="form-input" placeholder="e.g. julian@vance.com" required />
                            </div>
                        </div>

                        <div class="form-grid-2">
                            <div class="form-group">
                                <label>Phone / WhatsApp</label>
                                <input type="tel" id="contactPhone" runat="server" class="form-input" placeholder="e.g. +1 (555) 019-2831" required />
                            </div>

                            <div class="form-group">
                                <label>Residence of Interest</label>
                                <div class="select-wrapper">
                                    <select id="contactProperty" runat="server" class="form-select">
                                        <option value="General Private Inquiry">General Private Inquiry</option>
                                        <option value="Greece – The Aegean Cliffside Sanctuary">Greece – The Aegean Cliffside Sanctuary</option>
                                        <option value="USA – Manhattan Sky Horizon Penthouse">USA – Manhattan Sky Horizon Penthouse</option>
                                        <option value="Japan – Shou-Sugi-Ban Zen Residence">Japan – Shou-Sugi-Ban Zen Residence</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-grid-2">
                            <div class="form-group">
                                <label>Preferred Contact Method</label>
                                <div class="select-wrapper">
                                    <select id="contactMethod" runat="server" class="form-select">
                                        <option value="Email Communication">Email Communication</option>
                                        <option value="Direct Phone Call">Direct Phone Call</option>
                                        <option value="WhatsApp Discreet Message">WhatsApp Discreet Message</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Acquisition Timeframe</label>
                                <div class="select-wrapper">
                                    <select id="contactTimeline" runat="server" class="form-select">
                                        <option value="Immediate (0-30 Days)">Immediate (0-30 Days)</option>
                                        <option value="Within 1-3 Months">Within 1-3 Months</option>
                                        <option value="Portfolio Research / Future">Portfolio Research / Future</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label>Inquiry Details</label>
                            <textarea id="contactMessage" runat="server" class="form-input" rows="3" placeholder="Share specific requirements..." required></textarea>
                        </div>
                        
                        <!-- ASP.NET Server Button -->
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Private Inquiry" CssClass="btn btn-primary" style="margin-top: 0.5rem; width: 100%; height: 46px;" OnClick="btnSubmit_Click" />
                    </div>

                    <div id="formResult" runat="server" style="display:none; margin-top: 2rem; padding: 2rem; background-color: var(--bg-secondary); border-left: 4px solid var(--accent); border-radius: var(--radius-sm);">

                    </div>

                </div>
                
            </div>
        </div>
    </section>

</asp:Content>