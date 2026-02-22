<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC Newsletters
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
/* Newsletter Styles */
.newsletter-card {
    background: white;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 2px 12px rgba(0,0,0,0.08);
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    border: 1px solid #e5e7eb;
    display: flex;
    gap: 16px;
    align-items: flex-start;
}

.newsletter-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 24px rgba(26,58,92,0.15);
    border-color: #c8102e;
}

.newsletter-icon {
    width: 56px;
    height: 56px;
    background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}

.newsletter-content {
    flex: 1;
    min-width: 0;
}

.newsletter-title {
    font-size: 15px;
    font-weight: 600;
    color: #1a3a5c;
    margin-bottom: 6px;
    line-height: 1.4;
}

.newsletter-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    font-size: 13px;
    color: #6b7280;
    margin-bottom: 12px;
}

.newsletter-badge {
    display: inline-flex;
    align-items: center;
    gap: 4px;
    background: #f3f4f6;
    padding: 4px 10px;
    border-radius: 6px;
    font-size: 12px;
    font-weight: 500;
}

.newsletter-actions {
    display: flex;
    gap: 8px;
}

.btn-download, .btn-view {
    padding: 8px 16px;
    border-radius: 6px;
    font-size: 13px;
    font-weight: 600;
    transition: all 0.2s;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 6px;
}

.btn-download {
    background: #1a3a5c;
    color: white;
}

.btn-download:hover {
    background: #c8102e;
    transform: scale(1.05);
}

.btn-view {
    background: #f3f4f6;
    color: #1a3a5c;
}

.btn-view:hover {
    background: #e5e7eb;
}

/* Tab Styles */
.tabs-container {
    display: flex;
    gap: 8px;
    overflow-x: auto;
    padding-bottom: 8px;
    margin-bottom: 24px;
    scrollbar-width: thin;
}

.tabs-container::-webkit-scrollbar {
    height: 4px;
}

.tabs-container::-webkit-scrollbar-thumb {
    background: #cbd5e1;
    border-radius: 4px;
}

.tab-button {
    padding: 10px 20px;
    border: 2px solid #e5e7eb;
    background: white;
    color: #6b7280;
    border-radius: 8px;
    font-weight: 600;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.2s;
    white-space: nowrap;
    flex-shrink: 0;
}

.tab-button:hover {
    border-color: #1a3a5c;
    color: #1a3a5c;
}

.tab-button.active {
    background: #1a3a5c;
    color: white;
    border-color: #1a3a5c;
}

/* Search Bar */
.search-container {
    position: relative;
    margin-bottom: 24px;
}

.search-input {
    width: 100%;
    padding: 14px 48px 14px 44px;
    border: 2px solid #e5e7eb;
    border-radius: 10px;
    font-size: 15px;
    transition: all 0.2s;
}

.search-input:focus {
    outline: none;
    border-color: #1a3a5c;
    box-shadow: 0 0 0 3px rgba(26,58,92,0.1);
}

.search-icon {
    position: absolute;
    left: 14px;
    top: 50%;
    transform: translateY(-50%);
    color: #9ca3af;
}

.clear-search {
    position: absolute;
    right: 14px;
    top: 50%;
    transform: translateY(-50%);
    background: #f3f4f6;
    border: none;
    border-radius: 50%;
    width: 28px;
    height: 28px;
    display: none;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.2s;
}

.clear-search:hover {
    background: #e5e7eb;
}

.clear-search.show {
    display: flex;
}

/* Stats */
.stats-bar {
    background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
    color: white;
    padding: 16px 20px;
    border-radius: 10px;
    margin-bottom: 24px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 12px;
}

.stat-item {
    display: flex;
    align-items: center;
    gap: 8px;
}

.stat-number {
    font-size: 24px;
    font-weight: 700;
}

.stat-label {
    font-size: 13px;
    opacity: 0.9;
}

/* No Results */
.no-results {
    text-align: center;
    padding: 60px 20px;
}

.no-results-icon {
    width: 80px;
    height: 80px;
    background: #f3f4f6;
    border-radius: 50%;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 16px;
}

/* Loading */
.loading-skeleton {
    animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

@keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.5; }
}

/* Responsive */
@media (max-width: 640px) {
    .newsletter-card {
        flex-direction: column;
        padding: 16px;
    }
    
    .newsletter-icon {
        width: 48px;
        height: 48px;
    }
    
    .newsletter-actions {
        flex-direction: column;
        width: 100%;
    }
    
    .btn-download, .btn-view {
        justify-content: center;
        width: 100%;
    }
    
    .stats-bar {
        flex-direction: column;
        text-align: center;
    }
}
</style>

<!-- Page Header -->
<section class="relative bg-gradient-to-r from-[#1a3a5c] to-[#1e5799] py-16 sm:py-20">
    <div class="absolute inset-0 opacity-10" style="background-image: url('data:image/svg+xml,%3Csvg width=\'60\' height=\'60\' viewBox=\'0 0 60 60\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'none\' fill-rule=\'evenodd\'%3E%3Cg fill=\'%23ffffff\' fill-opacity=\'0.4\'%3E%3Cpath d=\'M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z\'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 relative z-10">
        <div class="text-center">
            <h1 class="text-3xl sm:text-4xl md:text-5xl font-extrabold text-white mb-3 sm:mb-4 leading-tight">
                ORIC Newsletters
            </h1>
            <p class="text-base sm:text-lg md:text-xl text-blue-100 max-w-2xl mx-auto">
                Stay Updated with Research, Innovation & Academic Excellence
            </p>
            <div class="w-20 h-1 bg-[#c8102e] mx-auto mt-5 sm:mt-6 rounded-full"></div>
        </div>
    </div>
</section>

<!-- Main Content -->
<section class="py-12 sm:py-16 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6">
        
        <!-- Stats Bar -->
        <div class="stats-bar">
            <div class="stat-item">
                <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                </svg>
                <div>
                    <div class="stat-number" id="totalCount">0</div>
                    <div class="stat-label">Total Newsletters</div>
                </div>
            </div>
            <div class="stat-item">
                <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"/>
                </svg>
                <div>
                    <div class="stat-number" id="displayCount">0</div>
                    <div class="stat-label">Showing</div>
                </div>
            </div>
        </div>

        <!-- Search Bar -->
        <div class="search-container">
            <svg class="search-icon w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
            </svg>
            <input type="text" 
                   id="searchInput" 
                   class="search-input" 
                   placeholder="Search newsletters by title, date, or month..."
                   autocomplete="off" />
            <button type="button" class="clear-search" id="clearSearch">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                </svg>
            </button>
        </div>

        <!-- Tabs -->
        <div class="tabs-container">
            <button type="button" class="tab-button active" data-category="all">All Newsletters</button>
            <button type="button" class="tab-button" data-category="2026">2026</button>
            <button type="button" class="tab-button" data-category="2025">2025</button>
            <button type="button" class="tab-button" data-category="2024">2024</button>
            <button type="button" class="tab-button" data-category="2023">2023</button>
            <button type="button" class="tab-button" data-category="vol">Vol Archives</button>
        </div>

        <!-- Newsletters Grid -->
        <div id="newslettersGrid" class="space-y-4">
            <!-- Newsletters will be inserted here -->
        </div>

        <!-- No Results -->
        <div id="noResults" class="no-results" style="display: none;">
            <div class="no-results-icon">
                <svg class="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-700 mb-2">No Newsletters Found</h3>
            <p class="text-gray-500">Try adjusting your search or filter criteria</p>
        </div>

    </div>
</section>

<script>
(function() {
    const BASE_PATH = '<%= ResolveUrl("~/assets/files/ORIC Newsletter/") %>';
    
    // Newsletter data structure
    const newsletters = {
        '2026': [
            { file: 'ORIC Newsletter-1 (January 01 to 31, 2026).pdf', title: 'January 01 to 31, 2026', date: new Date('2026-01-31') }
        ],
        '2025': [
            { file: 'ORIC Newsletter-1 (December 01 to 31, 2025).pdf', title: 'December 01 to 31, 2025', date: new Date('2025-12-31') },
            { file: 'ORIC Newsletter-1 (November 16 to 30, 2025).pdf', title: 'November 16 to 30, 2025', date: new Date('2025-11-30') },
            { file: 'ORIC Newsletter-1 (November 01 to 15, 2025).pdf', title: 'November 01 to 15, 2025', date: new Date('2025-11-15') },
            { file: 'UAF Newsletter-1 (october 1, 2025).pdf', title: 'October 1, 2025', date: new Date('2025-10-01') },
            { file: 'ORIC Newsletter-1 (October 16 to 31, 2025).pdf', title: 'October 16 to 31, 2025', date: new Date('2025-10-31') },
            { file: 'ORIC Newsletter-1 (October 01 to 15, 2025).pdf', title: 'October 01 to 15, 2025', date: new Date('2025-10-15') },
            { file: 'ORIC Newsletter-1 (September 16 to 30, 2025).pdf', title: 'September 16 to 30, 2025', date: new Date('2025-09-30') },
            { file: 'ORIC Newsletter-1 (September 01 to 15, 2025).pdf', title: 'September 01 to 15, 2025', date: new Date('2025-09-15') },
            { file: 'ORIC Newsletter-1 (August 16 to 31, 2025).pdf', title: 'August 16 to 31, 2025', date: new Date('2025-08-31') },
            { file: 'ORIC Newsletter-1 (August 1 to 15, 2025).pdf', title: 'August 1 to 15, 2025', date: new Date('2025-08-15') },
            { file: 'ORIC Newsletter-1 (July 16 to 31, 2025).pdf', title: 'July 16 to 31, 2025', date: new Date('2025-07-31') },
            { file: 'ORIC Newsletter-1 (July 1 to 15, 2025).pdf', title: 'July 1 to 15, 2025', date: new Date('2025-07-15') },
            { file: 'ORIC Newsletter-1 (June 16 to 30, 2025).pdf', title: 'June 16 to 30, 2025', date: new Date('2025-06-30') },
            { file: 'ORIC Newsletter-1 (June 01 to 15, 2025).pdf', title: 'June 01 to 15, 2025', date: new Date('2025-06-15') },
            { file: 'ORIC Newsletter-1 (May 16 to 31, 2025).pdf', title: 'May 16 to 31, 2025', date: new Date('2025-05-31') },
            { file: 'ORIC Newsletter-1 (May 1 to 15, 2025).pdf', title: 'May 1 to 15, 2025', date: new Date('2025-05-15') },
            { file: 'ORIC Newsletter-1 (April 16 to 30, 2025).pdf', title: 'April 16 to 30, 2025', date: new Date('2025-04-30') },
            { file: 'ORIC Newsletter-1 (April 01 to 15, 2025).pdf', title: 'April 01 to 15, 2025', date: new Date('2025-04-15') },
            { file: 'ORIC Newsletter-1 (March 16 to 31, 2025).pdf', title: 'March 16 to 31, 2025', date: new Date('2025-03-31') },
            { file: 'ORIC Newsletter-1 (March 1 to 15, 2025).pdf', title: 'March 1 to 15, 2025', date: new Date('2025-03-15') },
            { file: 'ORIC Newsletter-1 (February 16 to 28, 2025).pdf', title: 'February 16 to 28, 2025', date: new Date('2025-02-28') },
            { file: 'ORIC Newsletter-1 (February 1st to 15, 2025).pdf', title: 'February 1st to 15, 2025', date: new Date('2025-02-15') },
            { file: 'ORIC Newsletter-1 (January 16  to 31, 2025).pdf', title: 'January 16 to 31, 2025', date: new Date('2025-01-31') },
            { file: 'ORIC Newsletter-1 (January 01  to 15, 2025).pdf', title: 'January 01 to 15, 2025', date: new Date('2025-01-15') }
        ],
        '2024': [
            { file: 'ORIC Newsletter-1 (December 16  to 31, 2024).pdf', title: 'December 16 to 31, 2024', date: new Date('2024-12-31') },
            { file: 'ORIC Newsletter-1 (December 1st to 15, 2024).pdf', title: 'December 1st to 15, 2024', date: new Date('2024-12-15') },
            { file: 'ORIC Newsletter-1 (November 15 to 30, 2024).pdf', title: 'November 15 to 30, 2024', date: new Date('2024-11-30') },
            { file: 'ORIC Newsletter-1 (November 1 to 15, 2024).pdf', title: 'November 1 to 15, 2024', date: new Date('2024-11-15') },
            { file: 'Quick Facts October 2024.pdf', title: 'Quick Facts October 2024', date: new Date('2024-10-31') },
            { file: 'ORIC Newsletter-1 (October 1 to 15, 2024).pdf', title: 'October 1 to 15, 2024', date: new Date('2024-10-15') },
            { file: 'ORIC Newsletter-1 (August 1 to 31, 2024).pdf', title: 'August 1 to 31, 2024', date: new Date('2024-08-31') },
            { file: 'ORIC Newsletter-1 (July 1 to 31, 2024).pdf', title: 'July 1 to 31, 2024', date: new Date('2024-07-31') },
            { file: 'ORIC Newsletter-1 (June 16 to 30, 2024).pdf', title: 'June 16 to 30, 2024', date: new Date('2024-06-30') },
            { file: 'ORIC Newsletter-1 (June 1st to 15, 2024).pdf', title: 'June 1st to 15, 2024', date: new Date('2024-06-15') },
            { file: 'ORIC Newsletter-1 (May 16 to 31, 2024).pdf', title: 'May 16 to 31, 2024', date: new Date('2024-05-31') },
            { file: 'ORIC Newsletter-1 (May 01 to 15, 2024).pdf', title: 'May 01 to 15, 2024', date: new Date('2024-05-15') },
            { file: 'ORIC Newsletter-1 (APRIL 01 to 30, 2024).pdf', title: 'April 01 to 30, 2024', date: new Date('2024-04-30') },
            { file: 'ORIC Newsletter-1 (March 01 to 31, 2024).pdf', title: 'March 01 to 31, 2024', date: new Date('2024-03-31') },
            { file: 'ORIC Newsletter-1 (January 01 to 15, 2024).pdf', title: 'January 01 to 15, 2024', date: new Date('2024-01-15') }
        ],
        '2023': [
            { file: 'ORIC Newsletter-1(Sep15,30,2023).pdf', title: 'September 15 to 30, 2023', date: new Date('2023-09-30') },
            { file: 'ORIC Newsletter-1(Sep 01,15,2023).pdf', title: 'September 01 to 15, 2023', date: new Date('2023-09-15') },
            { file: 'ORIC Newsletter-1 (August 15 to 30, 2023).pdf', title: 'August 15 to 30, 2023', date: new Date('2023-08-30') },
            { file: 'ORIC Newsletter-1 (August 1st to 15, 2023).pdf', title: 'August 1st to 15, 2023', date: new Date('2023-08-15') },
            { file: 'ORIC Newsletter-1 (July 1st to 15, 2023) (1).pdf', title: 'July 1st to 15, 2023', date: new Date('2023-07-15') },
            { file: 'ORIC Newsletter-1 (June 1st to 30, 2023).pdf', title: 'June 1st to 30, 2023', date: new Date('2023-06-30') },
            { file: 'ORIC Newsletter-1 (May 15 to 31, 2023).pdf', title: 'May 15 to 31, 2023', date: new Date('2023-05-31') },
            { file: 'ORIC Newsletter-1 (May 01 to 15, 2023).pdf', title: 'May 01 to 15, 2023', date: new Date('2023-05-15') },
            { file: 'ORIC Newsletter-1 (March 15 to 30, 2023).pdf', title: 'March 15 to 30, 2023', date: new Date('2023-03-30') },
            { file: 'ORIC Newsletter-1 (March 01 to 15, 2023).pdf', title: 'March 01 to 15, 2023', date: new Date('2023-03-15') }
        ],
        'vol': [
            { file: 'ORIC NEWS Vol. 138.pdf', title: 'Vol. 138', vol: 138 },
            { file: 'ORIC NEWS Vol. 137.pdf', title: 'Vol. 137', vol: 137 },
            { file: 'ORIC NEWS Vol. 136.pdf', title: 'Vol. 136', vol: 136 },
            { file: 'ORIC NEWS Vol. 135.pdf', title: 'Vol. 135', vol: 135 },
            { file: 'ORIC NEWS Vol. 134.pdf', title: 'Vol. 134', vol: 134 },
            { file: 'ORIC NEWS Vol. 133.pdf', title: 'Vol. 133', vol: 133 },
            { file: 'ORIC NEWS Vol. 132.pdf', title: 'Vol. 132', vol: 132 },
            { file: 'ORIC NEWS Vol. 131.pdf', title: 'Vol. 131', vol: 131 },
            { file: 'ORIC_NEWS_130.pdf', title: 'Vol. 130', vol: 130 },
            { file: 'ORIC NEWS VOL. 129.pdf', title: 'Vol. 129', vol: 129 },
            { file: 'ORIC NEWS VOL. 128.pdf', title: 'Vol. 128', vol: 128 },
            { file: 'ORIC NEWS VOL. 127.pdf', title: 'Vol. 127', vol: 127 },
            { file: 'ORIC NEWS VOL. 126.pdf', title: 'Vol. 126', vol: 126 },
            { file: 'ORIC NEWS VOL. 125.pdf', title: 'Vol. 125', vol: 125 },
            { file: 'ORIC NEWS VOL. 124.pdf', title: 'Vol. 124', vol: 124 },
            { file: 'ORIC NEWS VOL. 123.pdf', title: 'Vol. 123', vol: 123 },
            { file: 'ORIC NEWS VOL. 122.pdf', title: 'Vol. 122', vol: 122 },
            { file: 'ORIC NEWS VOL. 121.pdf', title: 'Vol. 121', vol: 121 },
            { file: 'ORIC NEWS VOL. 120.pdf', title: 'Vol. 120', vol: 120 },
            { file: 'ORIC NEWS VOL. 119.pdf', title: 'Vol. 119', vol: 119 },
            { file: 'ORIC NEWS VOL. 118.pdf', title: 'Vol. 118', vol: 118 },
            { file: 'ORIC NEWS VOL. 117.pdf', title: 'Vol. 117', vol: 117 },
            { file: 'ORIC NEWS VOL. 116.pdf', title: 'Vol. 116', vol: 116 },
            { file: 'ORIC NEWS VOL. 115.pdf', title: 'Vol. 115', vol: 115 },
            { file: 'ORIC NEWS Vol. 114.pdf', title: 'Vol. 114', vol: 114 },
            { file: 'ORIC NEWS Vol. 113.pdf', title: 'Vol. 113', vol: 113 },
            { file: 'ORIC NEWS Vol. 112.pdf', title: 'Vol. 112', vol: 112 },
            { file: 'ORIC_News_111.pdf', title: 'Vol. 111', vol: 111 },
            { file: 'ORIC NEWS Vol. 110.pdf', title: 'Vol. 110', vol: 110 },
            { file: 'March 16-31 Vol. 109.pdf', title: 'Vol. 109', vol: 109 },
            { file: 'March 01-15 Vol. 108.pdf', title: 'Vol. 108', vol: 108 },
            { file: 'ORIC NEWS Vol 107.pdf', title: 'Vol. 107', vol: 107 }
        ]
    };
    
    // Add older volumes (1-92)
    for (let i = 92; i >= 1; i--) {
        newsletters.vol.push({
            file: 'ORIC_News_' + i + '.pdf',
            title: 'Vol. ' + i,
            vol: i
        });
    }
    
    let currentCategory = 'all';
    let searchQuery = '';
    
    // Create newsletter card HTML
    function createNewsletterCard(item, category) {
        const filePath = BASE_PATH + category + '/' + encodeURIComponent(item.file);
        const dateStr = item.date ? formatDate(item.date) : '';
        const badge = category === 'vol' ? 'Volume' : category;
        
        return `
            <div class="newsletter-card" data-title="${item.title.toLowerCase()}" data-category="${category}">
                <div class="newsletter-icon">
                    <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                    </svg>
                </div>
                <div class="newsletter-content">
                    <h3 class="newsletter-title">${item.title}</h3>
                    <div class="newsletter-meta">
                        <span class="newsletter-badge">
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z"/>
                            </svg>
                            ${badge}
                        </span>
                        ${dateStr ? '<span class="newsletter-badge"><svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg>' + dateStr + '</span>' : ''}
                    </div>
                    <div class="newsletter-actions">
                        <a href="${filePath}" class="btn-download" download>
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
                            </svg>
                            Download PDF
                        </a>
                        <a href="${filePath}" class="btn-view" target="_blank">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                            </svg>
                            View
                        </a>
                    </div>
                </div>
            </div>
        `;
    }
    
    // Format date
    function formatDate(date) {
        const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        return months[date.getMonth()] + ' ' + date.getDate() + ', ' + date.getFullYear();
    }
    
    // Render newsletters
    function renderNewsletters() {
        const grid = document.getElementById('newslettersGrid');
        const noResults = document.getElementById('noResults');
        let html = '';
        let count = 0;
        
        if (currentCategory === 'all') {
            // Show all in reverse chronological order
            ['2026', '2025', '2024', '2023'].forEach(function(year) {
                newsletters[year].forEach(function(item) {
                    if (matchesSearch(item.title)) {
                        html += createNewsletterCard(item, year);
                        count++;
                    }
                });
            });
            // Add vol at the end
            newsletters.vol.forEach(function(item) {
                if (matchesSearch(item.title)) {
                    html += createNewsletterCard(item, 'vol');
                    count++;
                }
            });
        } else {
            // Show specific category
            if (newsletters[currentCategory]) {
                newsletters[currentCategory].forEach(function(item) {
                    if (matchesSearch(item.title)) {
                        html += createNewsletterCard(item, currentCategory);
                        count++;
                    }
                });
            }
        }
        
        grid.innerHTML = html;
        document.getElementById('displayCount').textContent = count;
        noResults.style.display = count === 0 ? 'block' : 'none';
    }
    
    // Search match
    function matchesSearch(title) {
        if (!searchQuery) return true;
        return title.toLowerCase().indexOf(searchQuery.toLowerCase()) !== -1;
    }
    
    // Tab click handler
    document.querySelectorAll('.tab-button').forEach(function(btn) {
        btn.addEventListener('click', function() {
            document.querySelectorAll('.tab-button').forEach(function(b) {
                b.classList.remove('active');
            });
            this.classList.add('active');
            currentCategory = this.getAttribute('data-category');
            renderNewsletters();
        });
    });
    
    // Search input
    const searchInput = document.getElementById('searchInput');
    const clearSearch = document.getElementById('clearSearch');
    
    searchInput.addEventListener('input', function() {
        searchQuery = this.value;
        clearSearch.classList.toggle('show', searchQuery.length > 0);
        renderNewsletters();
    });
    
    clearSearch.addEventListener('click', function() {
        searchInput.value = '';
        searchQuery = '';
        this.classList.remove('show');
        renderNewsletters();
    });
    
    // Calculate total count
    function calculateTotal() {
        let total = 0;
        for (let cat in newsletters) {
            total += newsletters[cat].length;
        }
        document.getElementById('totalCount').textContent = total;
    }
    
    // Initialize
    calculateTotal();
    renderNewsletters();
    
})();
</script>

</asp:Content>
