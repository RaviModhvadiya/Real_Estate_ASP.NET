<%@ Page Title="Residences" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Properties.aspx.cs" Inherits="Real_Estate.Properties" %>

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

                <button type="button" class="filter-btn active" data-filter="all">
                    All Residences
                </button>

                <button type="button" class="filter-btn" data-filter="villa">
                    Villas
                </button>

                <button type="button" class="filter-btn" data-filter="penthouse">
                    Penthouses
                </button>

                <button type="button" class="filter-btn" data-filter="townhouse">
                    Townhouses
                </button>

            </div>

            <div class="properties-grid" id="properties-grid">

                <asp:Repeater ID="rptProperties" runat="server">

                    <ItemTemplate>

                        <div class="property-card reveal revealed"
                            data-type='<%# Eval("PropertyType") %>'
                            data-title='<%# Eval("Title") %>'
                            data-location='<%# Eval("Location") %>'
                            data-price='<%# Eval("Price") %>'
                            data-bedrooms='<%# Eval("Bedrooms") %>'
                            data-bathrooms='<%# Eval("Bathrooms") %>'
                            data-photo1='<%# ResolveUrl(Eval("Photo1").ToString()) %>'
                            data-photo2='<%# ResolveUrl(Eval("Photo2").ToString()) %>'
                            data-photo3='<%# ResolveUrl(Eval("Photo3").ToString()) %>'>

                            <div class="property-image-wrapper">

                                <div class="property-badge-row">

                                    <span class="property-tag">
                                        <%# Eval("Status") %>
                                    </span>

                                    <span class="photo-count-badge">Photos
                                    </span>

                                </div>

                                <img src='<%# ResolveUrl(Eval("Photo1").ToString()) %>' class="property-img card-main-img" loading="lazy" alt='<%# Eval("Title") %>' />

                                <div class="property-price">
                                    <%# Eval("Price") %>
                                </div>

                            </div>

                            <div class="property-body">

                                <h3 class="property-title">
                                    <%# Eval("Title") %>
                                </h3>

                                <div class="property-location">
                                    <span>
                                        <%# Eval("Location") %>
                                    </span>
                                </div>

                                <div class="property-gallery-thumbs">

                                    <img src='<%# ResolveUrl(Eval("Photo1").ToString()) %>' class="thumb-preview active" loading="lazy" alt='<%# Eval("Title") %>' />
                                    <img src='<%# ResolveUrl(Eval("Photo2").ToString()) %>' class="thumb-preview" loading="lazy" alt='<%# Eval("Title") %>' />
                                    <img src='<%# ResolveUrl(Eval("Photo3").ToString()) %>' class="thumb-preview" loading="lazy" alt='<%# Eval("Title") %>' />

                                </div>

                                <div class="property-features">

                                    <div class="feature-item">
                                        <span>
                                            <%# Eval("Bedrooms") %> Beds
                                        </span>
                                    </div>

                                    <div class="feature-item">
                                        <span>
                                            <%# Eval("Bathrooms") %> Baths
                                        </span>
                                    </div>

                                </div>

                                <a class="btn btn-outline property-cta" href='Inquiry.aspx?Property=<%# Server.UrlEncode(Eval("Title").ToString()) %>'>Inquire Now</a>

                            </div>

                        </div>

                    </ItemTemplate>

                </asp:Repeater>

            </div>

        </div>

    </section>

    <div class="modal-overlay" id="details-modal">

        <div class="modal-container">

            <button type="button" class="modal-close-btn" id="modal-close-btn">

                <svg viewBox="0 0 24 24" width="20" height="20" stroke="currentColor" stroke-width="2" fill="none">

                    <line x1="18" y1="6" x2="6" y2="18"></line>
                    <line x1="6" y1="6" x2="18" y2="18"></line>

                </svg>

            </button>

            <div class="modal-hero">

                <img id="modal-hero-img" src="?" alt="Property" class="modal-hero-img" />

            </div>

            <div class="modal-gallery-bar" id="modal-gallery-bar">
            </div>

            <div class="modal-content">

                <div class="modal-info-header"
                    style="display: flex; justify-content: space-between; margin-bottom: 1.5rem;">

                    <div>

                        <h3 id="modal-title" style="font-size: 1.85rem; font-weight: 700;"></h3>

                        <div class="property-location">
                            <span id="modal-loc"></span>
                        </div>

                    </div>

                    <div id="modal-price" style="font-size: 1.75rem; font-weight: 700; color: var(--accent);">
                    </div>

                </div>

                <div class="modal-specs" style="display: flex; gap: 2.5rem; padding: 1.25rem 0; border-top: 1px solid var(--border); border-bottom: 1px solid var(--border); margin-bottom: 1.75rem;">

                    <div>
                        <span id="modal-beds"></span>
                    </div>

                    <div>
                        <span id="modal-baths"></span>
                    </div>

                </div>

                <div class="modal-description">

                    <p id="modal-desc" style="color: var(--text-secondary); line-height: 1.65;"></p>

                </div>

                <div style="margin-top: 1.5rem;">

                    <a href="Inquiry.aspx" class="btn btn-primary" id="modal-inquire-direct-btn">Inquire About This Residence</a>

                </div>

            </div>

        </div>

    </div>


    <script>

        document.addEventListener("DOMContentLoaded", function () {

            var modal = document.getElementById("details-modal");
            var close = document.getElementById("modal-close-btn");
            var modalImage = document.getElementById("modal-hero-img");
            var gallery = document.getElementById("modal-gallery-bar");

            document.querySelectorAll(".property-card").forEach(function (card) {

                var mainImage = card.querySelector(".card-main-img");
                var thumbnails = card.querySelectorAll(".thumb-preview");

                thumbnails.forEach(function (thumb) {

                    thumb.addEventListener("click", function () {

                        mainImage.src = thumb.src;

                        thumbnails.forEach(function (item) {
                            item.classList.remove("active");
                        });

                        thumb.classList.add("active");

                    });

                });

                mainImage.addEventListener("click", function () {

                    document.getElementById("modal-title").innerText =
                        card.dataset.title;

                    document.getElementById("modal-loc").innerText =
                        card.dataset.location;

                    document.getElementById("modal-price").innerText =
                        card.dataset.price;

                    document.getElementById("modal-beds").innerText =
                        card.dataset.bedrooms + " Beds";

                    document.getElementById("modal-baths").innerText =
                        card.dataset.bathrooms + " Baths";

                    modalImage.src = card.dataset.photo1;

                    gallery.innerHTML = "";

                    var photos = [
                        card.dataset.photo1,
                        card.dataset.photo2,
                        card.dataset.photo3
                    ];

                    photos.forEach(function (photo, index) {

                        var img = document.createElement("img");

                        img.src = photo;
                        img.className = "modal-gallery-thumb";

                        if (index === 0) {
                            img.classList.add("active");
                        }

                        img.onclick = function () {

                            modalImage.src = photo;

                            gallery.querySelectorAll("img").forEach(function (item) {
                                item.classList.remove("active");
                            });

                            img.classList.add("active");

                        };

                        gallery.appendChild(img);

                    });

                    document.getElementById("modal-inquire-direct-btn").href =
                        "Inquiry.aspx?Property=" +
                        encodeURIComponent(card.dataset.title);

                    modal.classList.add("active");

                });

            });

            close.onclick = function () {
                modal.classList.remove("active");
            };

            modal.onclick = function (e) {

                if (e.target === modal) {
                    modal.classList.remove("active");
                }

            };

        });

    </script>

    <style>
        .card-main-img {
            cursor: pointer;
        }

        .modal-overlay {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.75);
            z-index: 9999;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

            .modal-overlay.active {
                display: flex;
            }

        .modal-container {
            width: 90%;
            max-width: 900px;
            max-height: 90vh;
            overflow-y: auto;
            background: var(--bg-primary,#fff);
            border-radius: 10px;
            position: relative;
        }

        .modal-hero {
            height: 450px;
            overflow: hidden;
        }

        .modal-hero-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .modal-gallery-bar {
            display: flex;
            gap: 10px;
            padding: 12px;
        }

        .modal-gallery-thumb {
            width: 80px;
            height: 60px;
            object-fit: cover;
            cursor: pointer;
            opacity: .6;
            border: 2px solid transparent;
        }

            .modal-gallery-thumb.active {
                opacity: 1;
                border-color: var(--accent);
            }

        .modal-close-btn {
            position: absolute;
            right: 15px;
            top: 15px;
            z-index: 2;
            width: 40px;
            height: 40px;
            border: 0;
            border-radius: 50%;
            background: rgba(0,0,0,.7);
            color: white;
            cursor: pointer;
        }
    </style>

</asp:Content>
