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
                box-shadow: 0 2px 12px rgba(0, 0, 0, 0.08);
                transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
                border: 1px solid #e5e7eb;
                display: flex;
                gap: 16px;
                align-items: flex-start;
            }

            .newsletter-card:hover {
                transform: translateY(-4px);
                box-shadow: 0 8px 24px rgba(26, 58, 92, 0.15);
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

            .btn-download,
            .btn-view {
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
                box-shadow: 0 0 0 3px rgba(26, 58, 92, 0.1);
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

                0%,
                100% {
                    opacity: 1;
                }

                50% {
                    opacity: 0.5;
                }
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

                .btn-download,
                .btn-view {
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
            <div class="absolute inset-0 opacity-10"
                style="background-image: url('data:image/svg+xml,%3Csvg width=\'60\' height=\'60\' viewBox=\'0 0 60 60\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'none\' fill-rule=\'evenodd\'%3E%3Cg fill=\'%23ffffff\' fill-opacity=\'0.4\'%3E%3Cpath d=\'M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z\'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')">
            </div>
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
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                        </svg>
                        <div>
                            <div class="stat-number" id="totalCount">0</div>
                            <div class="stat-label">Total Newsletters</div>
                        </div>
                    </div>
                    <div class="stat-item">
                        <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z" />
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
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                    </svg>
                    <input type="text" id="searchInput" class="search-input"
                        placeholder="Search newsletters by title, date, or month..." autocomplete="off" />
                    <button type="button" class="clear-search" id="clearSearch">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M6 18L18 6M6 6l12 12" />
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
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold text-gray-700 mb-2">No Newsletters Found</h3>
                    <p class="text-gray-500">Try adjusting your search or filter criteria</p>
                </div>

            </div>
        </section>

        <script>
            (function () {
                let currentCategory = 'all';
                let searchQuery = '';
                let allItems = [];

                function sanitizeBase(base) {
                    return String(base || '').trim().replace(/\/+$/, '');
                }

                function getApiCandidates() {
                    const fromWindow = typeof window.ORIC_API_BASE_URL === 'string' ? window.ORIC_API_BASE_URL : '';
                    const fromStorage = localStorage.getItem('oric_api_base_url') || '';
                    const candidates = [
                        sanitizeBase(fromWindow),
                        sanitizeBase(fromStorage),
                        sanitizeBase(window.location.origin),
                        'http://localhost:5233',
                        'https://localhost:7259'
                    ];

                    return [...new Set(candidates.filter(Boolean))];
                }

                function escapeHtml(value) {
                    return String(value || '')
                        .replace(/&/g, '&amp;')
                        .replace(/</g, '&lt;')
                        .replace(/>/g, '&gt;')
                        .replace(/"/g, '&quot;')
                        .replace(/'/g, '&#039;');
                }

                function toYearLabel(value) {
                    const d = new Date(value);
                    if (Number.isNaN(d.getTime())) {
                        return 'Unknown';
                    }
                    return String(d.getFullYear());
                }

                function formatDate(value) {
                    const d = new Date(value);
                    if (Number.isNaN(d.getTime())) {
                        return 'No date';
                    }
                    return d.toLocaleDateString();
                }

                function createCard(item) {
                    const title = escapeHtml(item.title || 'Untitled');
                    const summary = escapeHtml(item.summary || item.content || 'No summary available.');
                    const yearLabel = toYearLabel(item.publishDate);
                    const fileUrl = item.fileUrl ? escapeHtml(item.fileUrl) : null;

                    return `
            <div class="newsletter-card" data-title="${title.toLowerCase()}" data-category="${yearLabel}">
                <div class="newsletter-icon">
                    <svg class="w-7 h-7 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                    </svg>
                </div>
                <div class="newsletter-content">
                    <h3 class="newsletter-title">${title}</h3>
                    <div class="newsletter-meta">
                        <span class="newsletter-badge">${yearLabel}</span>
                        <span class="newsletter-badge">${formatDate(item.publishDate)}</span>
                    </div>
                    <p class="text-sm text-gray-600 mb-3">${summary}</p>
                    ${fileUrl ? `
                        <div class="newsletter-actions">
                            <a href="${fileUrl}" class="btn-download" target="_blank" rel="noopener">Open File</a>
                        </div>
                    ` : ''}
                </div>
            </div>
        `;
                }

                function applyFilters() {
                    const grid = document.getElementById('newslettersGrid');
                    const noResults = document.getElementById('noResults');

                    const filtered = allItems.filter((item) => {
                        const byCategory = currentCategory === 'all' || toYearLabel(item.publishDate) === currentCategory;
                        const text = `${item.title || ''} ${item.summary || ''} ${item.content || ''}`.toLowerCase();
                        const bySearch = !searchQuery || text.includes(searchQuery.toLowerCase());
                        return byCategory && bySearch;
                    });

                    document.getElementById('displayCount').textContent = filtered.length;

                    if (!filtered.length) {
                        grid.innerHTML = '';
                        noResults.style.display = 'block';
                        return;
                    }

                    noResults.style.display = 'none';
                    grid.innerHTML = filtered.map(createCard).join('');
                }

                async function fetchWithFallback(path) {
                    let lastError = null;
                    for (const base of getApiCandidates()) {
                        try {
                            const response = await fetch(`${base}${path}`);
                            if (!response.ok) {
                                if (response.status === 404) {
                                    continue;
                                }
                                throw new Error(`Server returned ${response.status}`);
                            }

                            localStorage.setItem('oric_api_base_url', base);
                            return await response.json();
                        } catch (error) {
                            lastError = error;
                        }
                    }

                    throw lastError || new Error('Could not connect to API server.');
                }

                async function loadNews() {
                    const grid = document.getElementById('newslettersGrid');
                    const noResults = document.getElementById('noResults');
                    grid.innerHTML = '<div class="loading-skeleton h-24 rounded-lg bg-gray-200"></div><div class="loading-skeleton h-24 rounded-lg bg-gray-200"></div>';
                    noResults.style.display = 'none';

                    try {
                        allItems = await fetchWithFallback('/api/publications');
                        document.getElementById('totalCount').textContent = allItems.length;
                        applyFilters();
                    } catch (error) {
                        grid.innerHTML = '';
                        noResults.style.display = 'block';
                        noResults.innerHTML = `<div class="no-results-icon"><svg class="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg></div><h3 class="text-xl font-bold text-gray-700 mb-2">Unable to load news</h3><p class="text-gray-500">${escapeHtml(error.message)}</p>`;
                        document.getElementById('totalCount').textContent = '0';
                        document.getElementById('displayCount').textContent = '0';
                    }
                }

                document.querySelectorAll('.tab-button').forEach((btn) => {
                    btn.addEventListener('click', function () {
                        document.querySelectorAll('.tab-button').forEach((x) => x.classList.remove('active'));
                        this.classList.add('active');
                        currentCategory = this.getAttribute('data-category');
                        applyFilters();
                    });
                });

                const searchInput = document.getElementById('searchInput');
                const clearSearch = document.getElementById('clearSearch');

                searchInput.addEventListener('input', function () {
                    searchQuery = this.value;
                    clearSearch.classList.toggle('show', searchQuery.length > 0);
                    applyFilters();
                });

                clearSearch.addEventListener('click', function () {
                    searchInput.value = '';
                    searchQuery = '';
                    this.classList.remove('show');
                    applyFilters();
                });

                loadNews();
            })();
        </script>

    </asp:Content>