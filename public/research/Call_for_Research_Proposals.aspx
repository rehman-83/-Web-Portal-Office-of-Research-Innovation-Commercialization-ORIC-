<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Call for Research Proposals - ORIC
  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <main class="container mx-auto px-4 py-8 md:py-12">
      <!-- Page Header -->
      <div class="text-center mb-8 md:mb-12 animate-fade-in-up">
        <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-[#1a4d7c] mb-4">
          Research Funding Opportunities
        </h1>
        <div class="w-24 h-1 bg-gradient-to-r from-[#3674B5] to-[#A1E3F9] mx-auto rounded-full"></div>
        <p class="text-gray-600 mt-4 text-lg">Explore National and International Grant Opportunities</p>
      </div>

      <section class="mb-10 rounded-2xl border border-gray-200 bg-white p-6 shadow-lg">
        <div class="mb-4 flex items-center justify-between gap-3">
          <h2 class="text-2xl font-bold text-[#1a4d7c]">Live Announcements</h2>
          <a href="<%= ResolveUrl(" ~/media/News.aspx") %>" class="text-sm font-semibold text-[#3674B5]
            hover:underline">See all news</a>
        </div>
        <div id="announcementsList" class="space-y-3"></div>
        <p id="announcementsState" class="mt-3 text-sm text-gray-500">Loading announcements...</p>
      </section>

      <!-- Featured Opportunity Banner -->
      <a href="https://www.sbbusba.edu.pk/sbbu-main/research-funding-opportunities.html?utm_source=chatgpt.com"
        target="_blank" rel="noopener noreferrer" class="block mb-8 md:mb-12 animate-slide-in group">
        <div
          class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-2xl shadow-2xl p-8 md:p-12 text-white overflow-hidden relative hover:shadow-3xl transition-all duration-500 hover:-translate-y-1">
          <!-- Background Pattern -->
          <div class="absolute inset-0 opacity-10">
            <div class="absolute top-0 right-0 w-64 h-64 bg-white rounded-full -mr-32 -mt-32"></div>
            <div class="absolute bottom-0 left-0 w-96 h-96 bg-white rounded-full -ml-48 -mb-48"></div>
          </div>

          <div class="relative z-10 flex flex-col md:flex-row items-center justify-between gap-6">
            <div class="flex-1 text-center md:text-left">
              <div class="inline-block bg-white/20 px-4 py-1 rounded-full text-sm font-semibold mb-4">
                <i class="fas fa-star mr-2"></i>Featured Partner Opportunity
              </div>
              <h2 class="text-3xl md:text-4xl font-bold mb-4 group-hover:text-[#A1E3F9] transition-colors duration-300">
                Applications are Open for Research Funding Opportunities
              </h2>
              <p class="text-lg text-white/90 mb-4">
                Shaheed Benazir Bhutto University - Comprehensive database of national and international research grants
              </p>
              <div class="flex flex-wrap gap-4 justify-center md:justify-start text-sm">
                <div class="flex items-center gap-2">
                  <i class="fas fa-globe text-[#A1E3F9]"></i>
                  <span>International Opportunities</span>
                </div>
                <div class="flex items-center gap-2">
                  <i class="fas fa-flag text-[#A1E3F9]"></i>
                  <span>National Grants</span>
                </div>
                <div class="flex items-center gap-2">
                  <i class="fas fa-clock text-[#A1E3F9]"></i>
                  <span>Updated Regularly</span>
                </div>
              </div>
            </div>

            <div class="flex-shrink-0">
              <div
                class="bg-white text-[#1a4d7c] px-8 py-4 rounded-xl font-bold text-lg shadow-lg group-hover:bg-[#A1E3F9] group-hover:scale-110 transition-all duration-300 flex items-center gap-3">
                <span>Explore Opportunities</span>
                <i class="fas fa-external-link-alt"></i>
              </div>
            </div>
          </div>
        </div>
      </a>

      <!-- Key Features Grid -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-12 animate-fade-in-up">
        <div
          class="bg-white rounded-xl p-6 shadow-lg border-t-4 border-[#3674B5] hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
          <div class="text-center">
            <div
              class="bg-gradient-to-br from-[#3674B5] to-[#578FCA] w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">
              <i class="fas fa-search-dollar text-white text-2xl"></i>
            </div>
            <h3 class="text-xl font-bold text-[#1a4d7c] mb-3">Comprehensive Database</h3>
            <p class="text-gray-600">
              Access a wide range of funding opportunities from international organizations, national bodies, and
              research institutions
            </p>
          </div>
        </div>

        <div
          class="bg-white rounded-xl p-6 shadow-lg border-t-4 border-[#578FCA] hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
          <div class="text-center">
            <div
              class="bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">
              <i class="fas fa-calendar-check text-white text-2xl"></i>
            </div>
            <h3 class="text-xl font-bold text-[#1a4d7c] mb-3">Active Deadlines</h3>
            <p class="text-gray-600">
              Stay updated with current application deadlines for various research grants and funding programs
            </p>
          </div>
        </div>

        <div
          class="bg-white rounded-xl p-6 shadow-lg border-t-4 border-[#A1E3F9] hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
          <div class="text-center">
            <div
              class="bg-gradient-to-br from-[#A1E3F9] to-[#578FCA] w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">
              <i class="fas fa-handshake text-white text-2xl"></i>
            </div>
            <h3 class="text-xl font-bold text-[#1a4d7c] mb-3">Collaborative Programs</h3>
            <p class="text-gray-600">
              Discover joint research opportunities with international partners and collaborative funding schemes
            </p>
          </div>
        </div>
      </div>

      <!-- Sample Funding Categories -->
      <div
        class="bg-gradient-to-br from-[#f0f9ff] to-white rounded-2xl shadow-xl p-6 md:p-10 border border-gray-200 mb-12">
        <div class="text-center mb-8">
          <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">Funding Categories Available</h2>
          <p class="text-gray-600 text-lg max-w-3xl mx-auto">
            Browse through various categories of research funding opportunities
          </p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <div class="bg-white rounded-lg p-5 shadow-md border-l-4 border-[#3674B5] hover:shadow-lg transition-shadow">
            <i class="fas fa-flask text-[#3674B5] text-2xl mb-3"></i>
            <h4 class="font-bold text-[#1a4d7c] mb-2">Science & Technology</h4>
            <p class="text-sm text-gray-600">Research grants for scientific innovation and technological advancement</p>
          </div>

          <div class="bg-white rounded-lg p-5 shadow-md border-l-4 border-[#578FCA] hover:shadow-lg transition-shadow">
            <i class="fas fa-medkit text-[#578FCA] text-2xl mb-3"></i>
            <h4 class="font-bold text-[#1a4d7c] mb-2">Health & Medicine</h4>
            <p class="text-sm text-gray-600">Medical research and healthcare innovation funding programs</p>
          </div>

          <div class="bg-white rounded-lg p-5 shadow-md border-l-4 border-[#A1E3F9] hover:shadow-lg transition-shadow">
            <i class="fas fa-users text-[#578FCA] text-2xl mb-3"></i>
            <h4 class="font-bold text-[#1a4d7c] mb-2">Social Sciences</h4>
            <p class="text-sm text-gray-600">Grants for social research and community development projects</p>
          </div>

          <div class="bg-white rounded-lg p-5 shadow-md border-l-4 border-[#3674B5] hover:shadow-lg transition-shadow">
            <i class="fas fa-leaf text-[#3674B5] text-2xl mb-3"></i>
            <h4 class="font-bold text-[#1a4d7c] mb-2">Environmental Studies</h4>
            <p class="text-sm text-gray-600">Climate change, sustainability, and environmental research funding</p>
          </div>
        </div>
      </div>

      <!-- Featured Organizations -->
      <div class="bg-white rounded-2xl shadow-xl p-6 md:p-10 mb-12">
        <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6 text-center">Notable Funding Organizations</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-6 text-center">
          <div class="p-4 bg-green-50 rounded-lg hover:bg-[#3674B5] hover:text-white">
            <p class="text-sm font-semibold">HEC Pakistan</p>
          </div>
          <div class="p-4 bg-purple-50 rounded-lg hover:bg-[#3674B5] hover:text-white transition-colors">
            <p class="text-sm font-semibold ">Sindh HEC</p>
          </div>
          <div class="p-4 bg-gray-50 rounded-lg hover:bg-[#3674B5] hover:text-white transition-colors">
            <p class="text-sm font-semibold">DAAD Germany</p>
          </div>
          <div class="p-4 bg-blue-50 rounded-lg hover:bg-[#3674B5] hover:text-white transition-colors">
            <p class="text-sm font-semibold">British Council</p>
          </div>
          <div class="p-4 bg-yellow-50 rounded-lg hover:bg-[#3674B5] hover:text-white transition-colors">
            <p class="text-sm font-semibold">UNESCO</p>
          </div>
          <div class="p-4 bg-green-50 rounded-lg hover:bg-[#3674B5] hover:text-white transition-colors">
            <p class="text-sm font-semibold">World Bank</p>
          </div>
        </div>
      </div>

      <!-- Information Cards -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
        <div class="bg-gradient-to-br from-[#3674B5] to-[#578FCA] rounded-xl p-6 md:p-8 text-white shadow-lg">
          <div class="flex items-start space-x-4">
            <div class="flex-shrink-0">
              <div class="bg-white/20 w-12 h-12 rounded-full flex items-center justify-center">
                <i class="fas fa-info-circle text-2xl"></i>
              </div>
            </div>
            <div>
              <h3 class="text-xl font-bold mb-3">Why Use This Resource?</h3>
              <ul class="space-y-2 text-white/90">
                <li class="flex items-start">
                  <i class="fas fa-check-circle mt-1 mr-2"></i>
                  <span>Regularly updated funding opportunities</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle mt-1 mr-2"></i>
                  <span>Detailed application deadlines</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle mt-1 mr-2"></i>
                  <span>Direct links to funding sources</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-check-circle mt-1 mr-2"></i>
                  <span>Both national and international programs</span>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] rounded-xl p-6 md:p-8 text-white shadow-lg">
          <div class="flex items-start space-x-4">
            <div class="flex-shrink-0">
              <div class="bg-white/20 w-12 h-12 rounded-full flex items-center justify-center">
                <i class="fas fa-lightbulb text-2xl"></i>
              </div>
            </div>
            <div>
              <h3 class="text-xl font-bold mb-3">Application Tips</h3>
              <ul class="space-y-2 text-white/90">
                <li class="flex items-start">
                  <i class="fas fa-arrow-right mt-1 mr-2"></i>
                  <span>Review eligibility criteria carefully</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-arrow-right mt-1 mr-2"></i>
                  <span>Prepare documents well in advance</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-arrow-right mt-1 mr-2"></i>
                  <span>Follow submission guidelines precisely</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-arrow-right mt-1 mr-2"></i>
                  <span>Contact funding agencies for clarifications</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </main>

    <script>
      (function () {
        const list = document.getElementById('announcementsList');
        const state = document.getElementById('announcementsState');

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

        async function loadAnnouncements() {
          try {
            const items = await fetchWithFallback('/api/announcements');
            const topItems = items.slice(0, 5);
            if (!topItems.length) {
              list.innerHTML = '';
              state.textContent = 'No announcements published yet.';
              return;
            }

            list.innerHTML = topItems.map((item) => `
        <article class="rounded-xl border border-gray-200 p-4">
          <h3 class="text-lg font-bold text-[#1a4d7c]">${escapeHtml(item.title)}</h3>
          <p class="mt-1 text-sm text-gray-500">${new Date(item.publishDate).toLocaleDateString()}</p>
          <p class="mt-2 text-gray-700">${escapeHtml(item.summary || item.content || 'No details available.')}</p>
          ${item.fileUrl ? `<a href="${escapeHtml(item.fileUrl)}" target="_blank" rel="noopener" class="mt-2 inline-block text-sm font-semibold text-[#3674B5] hover:underline">Open attachment</a>` : ''}
        </article>
      `).join('');

            state.textContent = '';
          } catch (error) {
            list.innerHTML = '';
            state.textContent = `Unable to load announcements right now. ${error.message}`;
          }
        }

        loadAnnouncements();
      })();
    </script>

    <style>
      @keyframes fade-in-up {
        from {
          opacity: 0;
          transform: translateY(30px);
        }

        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      @keyframes slide-in {
        from {
          opacity: 0;
          transform: translateX(-30px);
        }

        to {
          opacity: 1;
          transform: translateX(0);
        }
      }

      .animate-fade-in-up {
        animation: fade-in-up 0.6s ease-out;
      }

      .animate-slide-in {
        animation: slide-in 0.8s ease-out;
      }
    </style>





  </asp:Content>