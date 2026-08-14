const img1 = "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=600&q=80";
const img2 = "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?w=600&q=80";
const img3 = "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=600&q=80";
const img4 = "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?w=600&q=80";
const img5 = "https://images.unsplash.com/photo-1600566752355-35792bedcfea?w=600&q=80";

const properties = [
    { id: 1, title: "The Aegean Cliffside Sanctuary", type: "villa", price: "$5,400,000", location: "Santorini, Greece", image: img3, gallery: [img3, img1, img2], beds: 5, baths: 6, area: "6,200 Sq Ft", tag: "Greece Villa", description: "A cantilevered coastal sanctuary overlooking the Aegean Sea." },
    { id: 2, title: "Kyoto Bamboo Forest Estate", type: "villa", price: "$4,850,000", location: "Kyoto, Japan", image: img4, gallery: [img4, img5, img1], beds: 4, baths: 4.5, area: "5,100 Sq Ft", tag: "Japan Villa", description: "Minimalist concrete and natural timber villa surrounded by bamboo groves." },
    { id: 3, title: "Amalfi Coastal Pavilion", type: "villa", price: "$6,200,000", location: "Positano, Italy", image: img1, gallery: [img1, img3, img2], beds: 6, baths: 7, area: "7,500 Sq Ft", tag: "Italy Villa", description: "Terraced cliffside villa carved into Mediterranean limestone cliffs." },
    { id: 6, title: "Manhattan Sky Horizon Penthouse", type: "penthouse", price: "$8,900,000", location: "New York, USA", image: img1, gallery: [img1, img2, img3], beds: 3, baths: 3.5, area: "3,400 Sq Ft", tag: "USA Penthouse", description: "Crown penthouse in Tribeca boasting 360-degree Manhattan skyline." },
    { id: 7, title: "The Eiffel Minimalist Sky Deck", type: "penthouse", price: "$6,500,000", location: "Paris, France", image: img2, gallery: [img2, img3, img4], beds: 3, baths: 3, area: "2,900 Sq Ft", tag: "France Penthouse", description: "Duplex penthouse in the 16th arrondissement framing direct views of the Eiffel Tower." },
    { id: 11, title: "Shou-Sugi-Ban Zen Residence", type: "townhouse", price: "$3,800,000", location: "Tokyo, Japan", image: img4, gallery: [img4, img1, img2], beds: 3, baths: 3.5, area: "3,100 Sq Ft", tag: "Japan Townhouse", description: "Charred cedar timber facade in quiet Minato neighborhood." },
    { id: 12, title: "Copenhagen Nordic Timber House", type: "townhouse", price: "$2,950,000", location: "Copenhagen, Denmark", image: img2, gallery: [img2, img3, img4], beds: 3, baths: 3, area: "2,800 Sq Ft", tag: "Denmark Townhouse", description: "Minimalist Scandinavian townhouse facing Nyhavn water canals." }
];

document.addEventListener('DOMContentLoaded', () => {

    const pageLoader = document.getElementById('page-loader');
    if (pageLoader) {
        setTimeout(() => pageLoader.classList.add('loaded'), 300);
    }

    const currentPath = window.location.pathname.split('/').pop() || 'Default.aspx';
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => {
        if (link.getAttribute('href') === currentPath) {
            link.classList.add('active');
        }
    });

    const revealObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('revealed');
                revealObserver.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1 });
    document.querySelectorAll('.reveal').forEach(el => revealObserver.observe(el));

    const header = document.querySelector('header');
    window.addEventListener('scroll', () => {
        if (window.scrollY > 40) header?.classList.add('scrolled');
        else header?.classList.remove('scrolled');
    });

    const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
    const navMenu = document.getElementById('nav-menu');
    if (mobileMenuToggle && navMenu) {
        mobileMenuToggle.addEventListener('click', () => {
            navMenu.classList.toggle('active');
        });
    }

    const backToTop = document.getElementById('back-to-top');
    if (backToTop) {
        window.addEventListener('scroll', () => {
            if (window.scrollY > 500) backToTop.classList.add('visible');
            else backToTop.classList.remove('visible');
        });
        backToTop.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));
    }

    const statsStrip = document.getElementById('stats-strip');
    if (statsStrip) {
        function animateCounters() {
            document.querySelectorAll('.stat-number').forEach(counter => {
                const target = parseInt(counter.getAttribute('data-target'));
                const suffix = counter.getAttribute('data-suffix') || '';
                const duration = 1800;
                const startTime = performance.now();

                function updateCounter(currentTime) {
                    const elapsed = currentTime - startTime;
                    const progress = Math.min(elapsed / duration, 1);
                    const eased = 1 - Math.pow(1 - progress, 3);
                    counter.textContent = Math.floor(eased * target).toLocaleString() + suffix;
                    if (progress < 1) requestAnimationFrame(updateCounter);
                }
                requestAnimationFrame(updateCounter);
            });
        }

        const statsObserver = new IntersectionObserver((entries) => {
            if (entries[0].isIntersecting) {
                animateCounters();
                statsObserver.disconnect();
            }
        }, { threshold: 0.5 });
        statsObserver.observe(statsStrip);
    }

    const accordionHeaders = document.querySelectorAll('.accordion-header');
    if (accordionHeaders.length > 0) {
        accordionHeaders.forEach(header => {
            header.addEventListener('click', function () {
                const item = this.parentElement;
                const isActive = item.classList.contains('active');

                document.querySelectorAll('.accordion-item').forEach(i => i.classList.remove('active'));

                if (!isActive) {
                    item.classList.add('active');
                }
            });
        });
    }

    const propertiesContainer = document.getElementById('properties-grid');
    if (propertiesContainer) {
        const renderProperties = (filteredList) => {
            propertiesContainer.innerHTML = '';
            filteredList.forEach((prop) => {
                let thumbsHtml = '<div class="property-gallery-thumbs">';
                prop.gallery.forEach((imgUrl, idx) => {
                    thumbsHtml += `<img src="${imgUrl}" class="thumb-preview ${idx === 0 ? 'active' : ''}" data-target-img="${imgUrl}">`;
                });
                thumbsHtml += '</div>';

                propertiesContainer.innerHTML += `
                    <div class="property-card reveal revealed">
                        <div class="property-image-wrapper">
                            <div class="property-badge-row">
                                <span class="property-tag">${prop.tag}</span>
                                <span class="photo-count-badge"><svg viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>3</span>
                            </div>
                            <img src="${prop.image}" class="property-img card-main-img" loading="lazy">
                            <div class="property-price">${prop.price}</div>
                        </div>
                        <div class="property-body">
                            <h3 class="property-title">${prop.title}</h3>
                            <div class="property-location"><svg viewBox="0 0 24 24"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg><span>${prop.location}</span></div>
                            ${thumbsHtml}
                            <div class="property-features">
                                <!-- NEW BED ICON -->
                                <div class="feature-item"><svg viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 7v11"></path><path d="M3 14h18"></path><path d="M21 18v-8a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v6"></path><circle cx="7" cy="10" r="1"></circle></svg><span>${prop.beds} Beds</span></div>
                                <!-- NEW BATH ICON -->
                                <div class="feature-item"><svg viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 11h16v5a4 4 0 0 1-4 4H8a4 4 0 0 1-4-4v-5z"></path><path d="M9 11V6a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v5"></path><circle cx="12" cy="7" r="1"></circle></svg><span>${prop.baths} Baths</span></div>
                            </div>
                            <button class="btn btn-outline property-cta view-details-btn" data-id="${prop.id}">Explore Residence</button>
                        </div>
                    </div>
                `;
            });

            document.querySelectorAll('.property-card').forEach(card => {
                const mainImg = card.querySelector('.card-main-img');
                const thumbs = card.querySelectorAll('.thumb-preview');
                thumbs.forEach(thumb => {
                    thumb.addEventListener('mouseenter', (e) => {
                        thumbs.forEach(t => t.classList.remove('active'));
                        e.target.classList.add('active');
                        mainImg.src = e.target.getAttribute('data-target-img');
                    });
                });

                const modalOverlay = document.getElementById('details-modal');
                card.querySelector('.view-details-btn').addEventListener('click', function (e) {
                    e.preventDefault();
                    const propId = parseInt(this.getAttribute('data-id'));
                    const prop = properties.find(p => p.id === propId);

                    document.getElementById('modal-title').innerText = prop.title;
                    document.getElementById('modal-price').innerText = prop.price;
                    // ... [existing modal population code] ...

                    // ADD THIS: Update the Inquiry button to pass the property name via URL
                    document.getElementById('modal-inquire-direct-btn').onclick = function () {
                        window.location.href = 'Inquiry.aspx?Property=' + encodeURIComponent(prop.title);
                    };

                    modalOverlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            });
        };

        renderProperties(properties);

        const filterButtons = document.querySelectorAll('.filter-btn');
        filterButtons.forEach(btn => {
            btn.addEventListener('click', function () {
                filterButtons.forEach(b => b.classList.remove('active'));
                this.classList.add('active');
                const filter = this.getAttribute('data-filter');
                renderProperties(filter === 'all' ? properties : properties.filter(p => p.type === filter));
            });
        });

        const modalCloseBtn = document.getElementById('modal-close-btn');
        const modalOverlay = document.getElementById('details-modal');
        if (modalCloseBtn && modalOverlay) {
            modalCloseBtn.addEventListener('click', () => {
                modalOverlay.classList.remove('active');
                document.body.style.overflow = 'auto';
            });
        }
    }
});