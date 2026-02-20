<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    News & Announcements - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
.filter-btn {
    transition: all 0.3s ease;
}

.filter-btn.active {
    background: linear-gradient(to right, #1a4d7c, #3674B5, #2c5282);
    color: white;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(54, 116, 181, 0.4);
}

.pdf-card {
    transition: all 0.3s ease;
    border: 2px solid transparent;
}

.pdf-card:hover {
    transform: translateY(-5px);
    border-color: #3674B5;
    box-shadow: 0 10px 30px rgba(54, 116, 181, 0.3);
}

.pdf-thumbnail {
    background: linear-gradient(135deg, #1a4d7c 0%, #3674B5 50%, #2c5282 100%);
    position: relative;
    overflow: hidden;
}

.pdf-thumbnail img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.search-input:focus {
    outline: none;
    border-color: #3674B5;
    box-shadow: 0 0 0 3px rgba(54, 116, 181, 0.1);
}
</style>

<main class="container mx-auto py-8 px-4">
  
    <!-- Page Header -->
    <div class="text-center mb-12">
        <h1 class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
            ORIC Newsletter
        </h1>
        <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
        <p class="mt-4 text-gray-600 text-lg">Stay updated with our latest research and innovation activities</p>
    </div>

    <!-- Search Bar -->
    <div class="max-w-2xl mx-auto mb-8">
        <div class="relative">
            <input 
                type="text" 
                id="searchInput" 
                placeholder="Search newsletters..." 
                class="search-input w-full px-6 py-4 text-lg border-2 border-gray-300 rounded-full transition-all duration-300"
            />
            <svg class="absolute right-6 top-1/2 transform -translate-y-1/2 w-6 h-6 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
            </svg>
        </div>
    </div>

    <!-- Year Filter Buttons -->
    <div class="flex flex-wrap justify-center gap-4 mb-12">
        <button class="filter-btn active px-6 md:px-8 py-3 rounded-full font-bold text-base md:text-lg border-2 border-[#3674B5] text-[#1a4d7c] hover:bg-[#3674B5] hover:text-white" data-year="all">
            All Years
        </button>
        <button class="filter-btn px-6 md:px-8 py-3 rounded-full font-bold text-base md:text-lg border-2 border-[#3674B5] text-[#1a4d7c] hover:bg-[#3674B5] hover:text-white" data-year="2025">
            2025
        </button>
        <button class="filter-btn px-6 md:px-8 py-3 rounded-full font-bold text-base md:text-lg border-2 border-[#3674B5] text-[#1a4d7c] hover:bg-[#3674B5] hover:text-white" data-year="2024">
            2024
        </button>
        <button class="filter-btn px-6 md:px-8 py-3 rounded-full font-bold text-base md:text-lg border-2 border-[#3674B5] text-[#1a4d7c] hover:bg-[#3674B5] hover:text-white" data-year="2023">
            2023
        </button>
    </div>

    <!-- Newsletters Grid -->
    <div id="newslettersGrid" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
        <!-- Dynamic content loaded by JavaScript -->
    </div>

    <!-- No Results Message -->
    <div id="noResults" class="hidden text-center py-12">
        <svg class="w-24 h-24 mx-auto text-gray-300 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
        </svg>
        <p class="text-xl text-gray-500">No newsletters found</p>
    </div>

    <!-- Archive Section Divider -->
    <div id="archiveSection" class="mt-16 mb-8">
        <div class="flex items-center justify-center">
            <div class="flex-1 h-px bg-gradient-to-r from-transparent via-[#3674B5] to-transparent"></div>
            <h2 class="mx-4 md:mx-6 text-xl md:text-2xl lg:text-3xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent text-center">
                Archive Collection
            </h2>
            <div class="flex-1 h-px bg-gradient-to-r from-transparent via-[#3674B5] to-transparent"></div>
        </div>
        <p class="text-center text-gray-600 mt-4">Historical newsletters and volumes</p>
    </div>

    <!-- Archive Newsletters Grid -->
    <div id="volNewslettersGrid" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
        <!-- Dynamic content loaded by JavaScript -->
    </div>

</main>

<script>
// Newsletter data from PHP
const newsletters = <?= $newslettersJson ?>;
const volNewsletters = <?= $volNewslettersJson ?>;
const thumbnailImage = 'assets/files/ORIC Newsletter/ORIC_Newsletter.jpg';
let currentFilter = 'all';
let currentSearch = '';

// Initialize
document.addEventListener('DOMContentLoaded', function() {
    renderNewsletters();
    renderVolNewsletters();
    setupFilters();
    setupSearch();
});

// Render newsletters
function renderNewsletters() {
    const grid = document.getElementById('newslettersGrid');
    const noResults = document.getElementById('noResults');
    
    let filtered = newsletters.filter(newsletter => {
        const matchesYear = currentFilter === 'all' || newsletter.year === currentFilter;
        const matchesSearch = currentSearch === '' || 
            newsletter.name.toLowerCase().includes(currentSearch.toLowerCase()) ||
            newsletter.year.includes(currentSearch);
        return matchesYear && matchesSearch;
    });

    if (filtered.length === 0) {
        grid.classList.add('hidden');
        noResults.classList.remove('hidden');
        return;
    }

    grid.classList.remove('hidden');
    noResults.classList.add('hidden');

    grid.innerHTML = filtered.map(newsletter => `
        <div class="pdf-card bg-white rounded-xl shadow-lg overflow-hidden">
            <!-- PDF Thumbnail -->
            <div class="pdf-thumbnail aspect-[3/4] relative">
                <img src="${thumbnailImage}" alt="Newsletter Thumbnail" />
                <span class="absolute top-2 right-2 bg-white text-[#1a4d7c] px-3 py-1 rounded-full text-xs font-bold shadow-lg">
                    ${newsletter.year}
                </span>
            </div>
            
            <!-- PDF Info -->
            <div class="p-4">
                <h3 class="font-bold text-sm mb-3 text-gray-800 line-clamp-2 min-h-[2.5rem]">
                    ${escapeHtml(newsletter.name)}
                </h3>
                
                <!-- Action Buttons -->
                <div class="flex gap-2">
                    <a href="${newsletter.path}" target="_blank" 
                       class="flex-1 bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white px-3 md:px-4 py-2 rounded-lg text-xs md:text-sm font-semibold hover:shadow-lg transition-all duration-300 text-center">
                        <svg class="w-4 h-4 inline-block mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                        </svg>
                        View
                    </a>
                    <a href="${newsletter.path}" download 
                       class="flex-1 bg-gradient-to-r from-[#2c5282] to-[#1a4d7c] text-white px-3 md:px-4 py-2 rounded-lg text-xs md:text-sm font-semibold hover:shadow-lg transition-all duration-300 text-center">
                        <svg class="w-4 h-4 inline-block mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
                        </svg>
                        Download
                    </a>
                </div>
            </div>
        </div>
    `).join('');
}

// Render archive/vol newsletters
function renderVolNewsletters() {
    const grid = document.getElementById('volNewslettersGrid');
    const archiveSection = document.getElementById('archiveSection');
    
    let filtered = volNewsletters.filter(newsletter => {
        const matchesSearch = currentSearch === '' || 
            newsletter.name.toLowerCase().includes(currentSearch.toLowerCase());
        return matchesSearch;
    });

    if (filtered.length === 0) {
        grid.classList.add('hidden');
        archiveSection.classList.add('hidden');
        return;
    }

    grid.classList.remove('hidden');
    archiveSection.classList.remove('hidden');

    grid.innerHTML = filtered.map(newsletter => `
        <div class="pdf-card bg-white rounded-xl shadow-lg overflow-hidden">
            <!-- PDF Thumbnail -->
            <div class="pdf-thumbnail aspect-[3/4] relative">
                <img src="${thumbnailImage}" alt="Newsletter Thumbnail" />
                <span class="absolute top-2 right-2 bg-white text-[#1a4d7c] px-3 py-1 rounded-full text-xs font-bold shadow-lg">
                    Archive
                </span>
            </div>
            
            <!-- PDF Info -->
            <div class="p-4">
                <h3 class="font-bold text-sm mb-3 text-gray-800 line-clamp-2 min-h-[2.5rem]">
                    ${escapeHtml(newsletter.name)}
                </h3>
                
                <!-- Action Buttons -->
                <div class="flex gap-2">
                    <a href="${newsletter.path}" target="_blank" 
                       class="flex-1 bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white px-3 md:px-4 py-2 rounded-lg text-xs md:text-sm font-semibold hover:shadow-lg transition-all duration-300 text-center">
                        <svg class="w-4 h-4 inline-block mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                        </svg>
                        View
                    </a>
                    <a href="${newsletter.path}" download 
                       class="flex-1 bg-gradient-to-r from-[#2c5282] to-[#1a4d7c] text-white px-3 md:px-4 py-2 rounded-lg text-xs md:text-sm font-semibold hover:shadow-lg transition-all duration-300 text-center">
                        <svg class="w-4 h-4 inline-block mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
                        </svg>
                        Download
                    </a>
                </div>
            </div>
        </div>
    `).join('');
}

// Setup filter buttons
function setupFilters() {
    const filterBtns = document.querySelectorAll('.filter-btn');
    filterBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            // Remove active class from all buttons
            filterBtns.forEach(b => b.classList.remove('active'));
            // Add active class to clicked button
            this.classList.add('active');
            // Update filter
            currentFilter = this.dataset.year;
            renderNewsletters();
        });
    });
}

// Setup search
function setupSearch() {
    const searchInput = document.getElementById('searchInput');
    searchInput.addEventListener('input', function(e) {
        currentSearch = e.target.value;
        renderNewsletters();
        renderVolNewsletters();
    });
}

// Escape HTML to prevent XSS
function escapeHtml(text) {
    const map = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#039;'
    };
    return text.replace(/[&<>"']/g, m => map[m]);
}
</script>
</asp:Content>
