<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Photo Gallery - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
/* Gallery Styles */
.gallery-item {
    position: relative;
    overflow: hidden;
    border-radius: 12px;
    cursor: pointer;
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    background: #f3f4f6;
}

.gallery-item:hover {
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
}

.gallery-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
}

.gallery-item:hover img {
    transform: scale(1.1);
}

.gallery-overlay {
    position: absolute;
    inset: 0;
    background: linear-gradient(to top, rgba(26,58,92,0.9) 0%, rgba(26,58,92,0.3) 50%, transparent 100%);
    opacity: 0;
    transition: opacity 0.4s ease;
    display: flex;
    align-items: flex-end;
    padding: 20px;
}

.gallery-item:hover .gallery-overlay {
    opacity: 1;
}

.gallery-overlay-content {
    color: white;
    transform: translateY(20px);
    transition: transform 0.4s ease;
}

.gallery-item:hover .gallery-overlay-content {
    transform: translateY(0);
}

/* Lightbox Modal */
.lightbox-modal {
    display: none;
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.95);
    z-index: 9999;
    animation: fadeIn 0.3s ease;
}

.lightbox-modal.active {
    display: flex;
    align-items: center;
    justify-content: center;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

.lightbox-content {
    max-width: 95%;
    max-height: 95vh;
    position: relative;
    animation: zoomIn 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

@keyframes zoomIn {
    from { transform: scale(0.8); opacity: 0; }
    to { transform: scale(1); opacity: 1; }
}

.lightbox-content img {
    max-width: 100%;
    max-height: 90vh;
    object-fit: contain;
    border-radius: 8px;
    box-shadow: 0 25px 50px rgba(0,0,0,0.5);
}

.lightbox-close {
    position: absolute;
    top: -50px;
    right: 0;
    background: rgba(255,255,255,0.1);
    border: 2px solid rgba(255,255,255,0.3);
    color: white;
    width: 44px;
    height: 44px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s ease;
    backdrop-filter: blur(10px);
}

.lightbox-close:hover {
    background: rgba(255,255,255,0.2);
    transform: rotate(90deg);
}

.lightbox-nav {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(255,255,255,0.1);
    border: 2px solid rgba(255,255,255,0.3);
    color: white;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s ease;
    backdrop-filter: blur(10px);
}

.lightbox-nav:hover {
    background: rgba(255,255,255,0.25);
    transform: translateY(-50%) scale(1.1);
}

.lightbox-nav.prev { left: 20px; }
.lightbox-nav.next { right: 20px; }

.lightbox-counter {
    position: absolute;
    bottom: -50px;
    left: 50%;
    transform: translateX(-50%);
    color: white;
    background: rgba(255,255,255,0.1);
    padding: 8px 20px;
    border-radius: 20px;
    font-size: 14px;
    backdrop-filter: blur(10px);
}

/* Loading Animation */
@keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.5; }
}

.loading {
    animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

/* Responsive */
@media (max-width: 640px) {
    .lightbox-nav {
        width: 40px;
        height: 40px;
    }
    .lightbox-nav.prev { left: 10px; }
    .lightbox-nav.next { right: 10px; }
    .lightbox-close {
        top: -45px;
        width: 40px;
        height: 40px;
    }
}
</style>

<!-- Page Header -->
<section class="relative bg-gradient-to-r from-[#1a3a5c] to-[#1e5799] py-16 sm:py-20">
    <div class="absolute inset-0 opacity-10" style="background-image: url('data:image/svg+xml,%3Csvg width=\'60\' height=\'60\' viewBox=\'0 0 60 60\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'none\' fill-rule=\'evenodd\'%3E%3Cg fill=\'%23ffffff\' fill-opacity=\'0.4\'%3E%3Cpath d=\'M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z\'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 relative z-10">
        <div class="text-center">
            <h1 class="text-3xl sm:text-4xl md:text-5xl font-extrabold text-white mb-3 sm:mb-4 leading-tight">
                Photo Gallery
            </h1>
            <p class="text-base sm:text-lg md:text-xl text-blue-100 max-w-2xl mx-auto">
                Capturing Moments of Excellence, Innovation & Research
            </p>
            <div class="w-20 h-1 bg-[#c8102e] mx-auto mt-5 sm:mt-6 rounded-full"></div>
        </div>
    </div>
</section>

<!-- Gallery Section -->
<section class="py-12 sm:py-16 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6">  
      <!-- Gallery Grid -->
        <div id="galleryGrid" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 sm:gap-6">
            <!-- Gallery items will be inserted here by JavaScript -->
        </div>

        <!-- Load More Button -->
        <div class="text-center mt-10 sm:mt-12">
            <button type="button" id="loadMoreBtn" 
                    class="inline-flex items-center gap-2 bg-[#1a3a5c] hover:bg-[#c8102e] text-white font-semibold px-6 sm:px-8 py-3 sm:py-4 rounded-lg transition-all duration-300 transform hover:scale-105 shadow-lg hover:shadow-xl text-sm sm:text-base">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"/>
                </svg>
                <span>Load More Photos</span>
            </button>
        </div>
    </div>
</section>

<!-- Lightbox Modal -->
<div id="lightboxModal" class="lightbox-modal">
    <div class="lightbox-content">
        <button type="button" class="lightbox-close" onclick="closeLightbox()">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
            </svg>
        </button>
        <img id="lightboxImg" src="" alt="Gallery Image" />
        <button type="button" class="lightbox-nav prev" onclick="navigateLightbox(-1)">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"/>
            </svg>
        </button>
        <button type="button" class="lightbox-nav next" onclick="navigateLightbox(1)">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/>
            </svg>
        </button>
        <div class="lightbox-counter">
            <span id="currentIndex">1</span> / <span id="totalImages">70</span>
        </div>
    </div>
</div>

<script>
(function() {
    // Configuration
    const TOTAL_IMAGES = 70;
    const INITIAL_LOAD = 20;
    const LOAD_MORE_COUNT = 12;
    const BASE_PATH = '<%= ResolveUrl("~/assets/img/gallery/") %>';
    
    let currentLoaded = 0;
    let currentLightboxIndex = 0;
    let allImages = [];
    
    // Generate all image paths
    for (let i = 1; i <= TOTAL_IMAGES; i++) {
        const num = String(i).padStart(2, '0');
        allImages.push({
            src: BASE_PATH + 'g' + num + '.JPG',
            title: 'ORIC Gallery Image ' + i,
            index: i
        });
    }
    
    // Create gallery item HTML
    function createGalleryItem(img, index) {
        return `
            <div class="gallery-item loading" style="aspect-ratio: 4/3;" data-index="${index}" onclick="openLightbox(${index})">
                <img src="${img.src}" 
                     alt="${img.title}"
                     loading="lazy"
                     onerror="this.parentElement.style.display='none'"
                     onload="this.parentElement.classList.remove('loading')" />
                <div class="gallery-overlay">
                    <div class="gallery-overlay-content">
                        <div class="flex items-center gap-2">
                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                            </svg>
                            <span class="font-semibold text-sm">View Full Size</span>
                        </div>
                    </div>
                </div>
            </div>
        `;
    }
    
    // Load images into gallery
    function loadImages(count) {
        const grid = document.getElementById('galleryGrid');
        const endIndex = Math.min(currentLoaded + count, TOTAL_IMAGES);
        
        let htmlToAdd = '';
        for (let i = currentLoaded; i < endIndex; i++) {
            htmlToAdd += createGalleryItem(allImages[i], i);
        }
        
        // Use insertAdjacentHTML instead of innerHTML += for better performance
        grid.insertAdjacentHTML('beforeend', htmlToAdd);
        
        currentLoaded = endIndex;
        
        // Hide load more button if all images loaded
        const loadMoreBtn = document.getElementById('loadMoreBtn');
        if (currentLoaded >= TOTAL_IMAGES) {
            loadMoreBtn.style.display = 'none';
        }
        
        // Update counter
        document.getElementById('galleryCount').textContent = currentLoaded;
    }
    
    // Open lightbox
    window.openLightbox = function(index) {
        currentLightboxIndex = index;
        updateLightbox();
        document.getElementById('lightboxModal').classList.add('active');
        document.body.style.overflow = 'hidden';
    };
    
    // Close lightbox
    window.closeLightbox = function() {
        document.getElementById('lightboxModal').classList.remove('active');
        document.body.style.overflow = '';
    };
    
    // Navigate lightbox
    window.navigateLightbox = function(direction) {
        currentLightboxIndex += direction;
        
        // Wrap around
        if (currentLightboxIndex < 0) {
            currentLightboxIndex = TOTAL_IMAGES - 1;
        } else if (currentLightboxIndex >= TOTAL_IMAGES) {
            currentLightboxIndex = 0;
        }
        
        updateLightbox();
    };
    
    // Update lightbox image
    function updateLightbox() {
        const img = allImages[currentLightboxIndex];
        document.getElementById('lightboxImg').src = img.src;
        document.getElementById('currentIndex').textContent = currentLightboxIndex + 1;
        document.getElementById('totalImages').textContent = TOTAL_IMAGES;
    }
    
    // Keyboard navigation
    document.addEventListener('keydown', function(e) {
        const modal = document.getElementById('lightboxModal');
        if (modal.classList.contains('active')) {
            if (e.key === 'Escape') {
                closeLightbox();
            } else if (e.key === 'ArrowLeft') {
                navigateLightbox(-1);
            } else if (e.key === 'ArrowRight') {
                navigateLightbox(1);
            }
        }
    });
    
    // Close on background click
    document.getElementById('lightboxModal').addEventListener('click', function(e) {
        if (e.target === this) {
            closeLightbox();
        }
    });
    
    // Load more button
    document.getElementById('loadMoreBtn').addEventListener('click', function() {
        loadImages(LOAD_MORE_COUNT);
        
        // Smooth scroll to newly loaded images
        setTimeout(function() {
            const lastLoadedItem = document.querySelector('.gallery-item:nth-child(' + currentLoaded + ')');
            if (lastLoadedItem) {
                lastLoadedItem.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        }, 100);
    });
    
    // Initial load
    loadImages(INITIAL_LOAD);
    
    // Preload next images for better UX
    function preloadImages(startIndex, count) {
        for (let i = startIndex; i < Math.min(startIndex + count, TOTAL_IMAGES); i++) {
            const img = new Image();
            img.src = allImages[i].src;
        }
    }
    
    // Preload next batch
    setTimeout(function() {
        preloadImages(INITIAL_LOAD, LOAD_MORE_COUNT);
    }, 2000);
    
})();
</script>

</asp:Content>
