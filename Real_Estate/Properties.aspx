<%@ Page Title="Residences" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="section-padding" id="properties">
        <div class="container">
            <div class="section-header reveal">
                <span>International Portfolio</span>
                <h2>Distinctive Global Sanctuaries</h2>
                <p>Featuring Villas, Penthouses, and Townhouses across unique countries.</p>
            </div>

            <div class="properties-filter reveal">
                <button type="button" class="filter-btn active" data-filter="all">All Residences</button>
                <button type="button" class="filter-btn" data-filter="villa">Villas</button>
                <button type="button" class="filter-btn" data-filter="penthouse">Penthouses</button>
                <button type="button" class="filter-btn" data-filter="townhouse">Townhouses</button>
            </div>

            <div class="properties-grid" id="properties-grid">

            </div>
        </div>
    </section>

    <div class="modal-overlay" id="details-modal">
        <div class="modal-container">
            <button type="button" class="modal-close-btn" id="modal-close-btn" aria-label="Close modal">
                <svg viewBox="0 0 24 24" width="20" height="20" stroke="currentColor" stroke-width="2" fill="none">
                    <line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
            </button>

            <div class="modal-hero">
                <img id="modal-hero-img" src="" alt="Property detail view" class="modal-hero-img">
            </div>

            <div class="modal-gallery-bar" id="modal-gallery-bar">

            </div>

            <div class="modal-content">
                <div class="modal-info-header" style="display: flex; justify-content: space-between; margin-bottom: 1.5rem;">
                    <div class="modal-title">
                        <h3 id="modal-title" style="font-size: 1.85rem; font-weight: 700;">Property Title</h3>
                        <div class="property-location" style="margin-bottom: 0; margin-top: 5px; display: flex; align-items: center; gap: 5px; color: var(--text-muted);">
                            <svg viewBox="0 0 24 24" width="16" height="16" stroke="currentColor" stroke-width="2" fill="none">
                                <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                            <span id="modal-loc">Location</span>
                        </div>
                    </div>
                    <div class="modal-price" id="modal-price" style="font-size: 1.75rem; font-weight: 700; color: var(--accent);">$0</div>
                </div>


                <div class="modal-specs" style="display: flex; gap: 2.5rem; padding: 1.25rem 0; border-top: 1px solid var(--border); border-bottom: 1px solid var(--border); margin-bottom: 1.75rem;">

                    <div class="modal-spec-item" style="display: flex; align-items: center; gap: 6px; color: var(--text-secondary);">
  
                        <svg viewBox="0 0 24 24" width="20" height="20" stroke="var(--accent)" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M3 7v11"></path><path d="M3 14h18"></path><path d="M21 18v-8a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v6"></path><circle cx="7" cy="10" r="1"></circle></svg>
                        <span id="modal-beds">0 Bedrooms</span>
                    </div>

                    <div class="modal-spec-item" style="display: flex; align-items: center; gap: 6px; color: var(--text-secondary);">
                        <!-- Exact Bathtub Icon -->
                        <svg viewBox="0 0 24 24" width="20" height="20" stroke="var(--accent)" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 11h16v5a4 4 0 0 1-4 4H8a4 4 0 0 1-4-4v-5z"></path><path d="M9 11V6a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v5"></path><circle cx="12" cy="7" r="1"></circle></svg>
                        <span id="modal-baths">0 Bathrooms</span>
                    </div>

                    <div class="modal-spec-item" style="display: flex; align-items: center; gap: 6px; color: var(--text-secondary);">
                    
                        <svg viewBox="0 0 24 24" width="18" height="18" stroke="var(--accent)" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect><line x1="3" y1="9" x2="21" y2="9"></line><line x1="9" y1="21" x2="9" y2="9"></line></svg>
                        <span id="modal-area">0 Sq Ft</span>
                    </div>

                </div>

                <div class="modal-description">
                    <p id="modal-desc" style="color: var(--text-secondary); line-height: 1.65; margin-bottom: 2rem;">Overview details placed here.</p>
                </div>

                <div style="margin-top: 1.5rem;">
                    <button type="button" class="btn btn-primary" id="modal-inquire-direct-btn" onclick="window.location.href='Contact.aspx'">Inquire About This Residence</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
