<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Publications - ORIC
  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mx-auto py-8 px-4">

      <!-- Page Header -->
      <div class="text-center mb-12">
        <h1
          class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
          ORIC Publications
        </h1>
        <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
        <p class="mt-6 text-gray-600 max-w-3xl mx-auto text-lg">
          Explore our comprehensive collection of research publications, innovation catalogues, operational manuals, and
          success stories from the Office of Research, Innovation and Commercialization.
        </p>
      </div>

      <!-- Publications List -->
      <div id="publicationsGrid" class="grid md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
      <p id="publicationsState" class="mt-4 text-sm text-gray-500">Loading publications...</p>
      <!-- 101 Innovations Catalogue Section -->
      <div
        class="mt-16 bg-gradient-to-br from-gray-50 to-blue-50 rounded-2xl shadow-xl overflow-hidden border border-gray-200">
        <div class="bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] p-8 md:p-12">
          <h2 class="text-3xl md:text-4xl font-bold text-white text-center mb-4">
            101 Innovations Catalogue
          </h2>
          <p class="text-white/90 text-center text-lg max-w-4xl mx-auto">
            Technologies for Commercialization 2016 - A comprehensive collection of innovative technologies developed at
            the University of Agriculture, Faisalabad
          </p>
        </div>

        <div class="p-8 md:p-12">
          <div class="mb-8">
            <p class="text-gray-700 text-lg leading-relaxed mb-6">
              The 101 Innovations Catalogue showcases cutting-edge agricultural technologies and innovations developed
              by various departments and institutes of UAF. These technologies span across multiple disciplines
              including horticulture, soil sciences, agronomy, plant breeding, agricultural engineering, animal
              husbandry, veterinary sciences, food sciences, and more.
            </p>

            <div class="bg-white rounded-lg p-6 shadow-md border-l-4 border-[#3674B5] mb-8">
              <h3 class="text-xl font-semibold text-[#1a4d7c] mb-4 flex items-center">
                <svg class="w-6 h-6 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
                Key Highlights
              </h3>
              <ul class="space-y-2 text-gray-700">
                <li class="flex items-start">
                  <span class="text-[#3674B5] mr-2 mt-1">�</span>
                  <span>101 innovative technologies ready for commercialization</span>
                </li>
                <li class="flex items-start">
                  <span class="text-[#3674B5] mr-2 mt-1">�</span>
                  <span>Coverage across 15+ departments and institutes</span>
                </li>
                <li class="flex items-start">
                  <span class="text-[#3674B5] mr-2 mt-1">�</span>
                  <span>Solutions for agricultural challenges in Pakistan</span>
                </li>
                <li class="flex items-start">
                  <span class="text-[#3674B5] mr-2 mt-1">�</span>
                  <span>Technologies ranging from crop production to food processing</span>
                </li>
              </ul>
            </div>

            <!-- Featured Categories -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mb-8">
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-green-500">
                <h4 class="font-semibold text-gray-800 mb-2">?? Horticulture</h4>
                <p class="text-sm text-gray-600">Mango genotypes, controlled atmosphere storage, citrus cultivation
                  techniques</p>
              </div>
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-blue-500">
                <h4 class="font-semibold text-gray-800 mb-2">?? Agronomy</h4>
                <p class="text-sm text-gray-600">Moringa cultivation, quinoa production, direct seeded rice technology
                </p>
              </div>
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-yellow-500">
                <h4 class="font-semibold text-gray-800 mb-2">? Engineering</h4>
                <p class="text-sm text-gray-600">Solar energy systems, biogas plants, agricultural machinery</p>
              </div>
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-red-500">
                <h4 class="font-semibold text-gray-800 mb-2">?? Animal Sciences</h4>
                <p class="text-sm text-gray-600">Poultry breeding, artificial insemination, feed optimization</p>
              </div>
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-purple-500">
                <h4 class="font-semibold text-gray-800 mb-2">?? Food Sciences</h4>
                <p class="text-sm text-gray-600">Value-added products, fortified foods, shelf-life improvement</p>
              </div>
              <div
                class="bg-white rounded-lg p-5 shadow-md hover:shadow-lg transition-all duration-300 border-t-4 border-teal-500">
                <h4 class="font-semibold text-gray-800 mb-2">?? Biotechnology</h4>
                <p class="text-sm text-gray-600">Biofertilizers, biopesticides, transgenic crops</p>
              </div>
            </div>

            <!-- Call to Action -->
            <div class="flex flex-col sm:flex-row gap-4 justify-center items-center mt-8">
              <a href="https://uaf.edu.pk/Catalouge/101/contents.html" target="_blank"
                class="inline-flex items-center bg-gradient-to-r from-[#3674B5] to-[#36a3f7] text-white font-semibold py-4 px-8 rounded-lg hover:from-[#36a3f7] hover:to-[#3674B5] transition-all duration-300 shadow-lg hover:shadow-xl transform hover:-translate-y-1">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z">
                  </path>
                </svg>
                View Full Catalogue
              </a>




            </div>
          </div>
        </div>
      </div>


    </main>

    <script>
      (function () {
        const grid = document.getElementById('publicationsGrid');
        const state = document.getElementById('publicationsState');

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

        function createCard(item) {
          const title = escapeHtml(item.title || 'Untitled publication');
          const summary = escapeHtml(item.summary || item.content || 'No description available.');
          const fileUrl = item.fileUrl ? escapeHtml(item.fileUrl) : '';

          return `
      <article class="block rounded-lg border p-5 transition hover:bg-[#3674B5] hover:text-white hover:shadow-xl">
        <h3 class="mb-2 font-semibold">${title}</h3>
        <p class="mb-4 text-sm">${summary}</p>
        ${fileUrl ? `<a href="${fileUrl}" target="_blank" rel="noopener" class="inline-flex items-center gap-2 rounded bg-[#1a4d7c] px-3 py-2 text-sm font-semibold text-white hover:bg-[#163f66]">Open File</a>` : '<span class="text-xs">File URL not provided</span>'}
      </article>
    `;
        }

        async function loadPublications() {
          try {
            const items = await fetchWithFallback('/api/publications');
            if (!Array.isArray(items) || !items.length) {
              grid.innerHTML = '';
              state.textContent = 'No published publications found yet.';
              return;
            }

            grid.innerHTML = items.map(createCard).join('');
            state.textContent = '';
          } catch (error) {
            grid.innerHTML = '';
            state.textContent = `Unable to load publications right now. ${error.message || ''}`.trim();
          }
        }

        loadPublications();
      })();
    </script>

    <style>
      @keyframes fadeInUp {
        from {
          opacity: 0;
          transform: translateY(30px);
        }

        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      /* Animation delays for staggered effect */
      .grid>div {
        animation: fadeInUp 0.6s ease-out forwards;
      }

      .grid>div:nth-child(1) {
        animation-delay: 0.1s;
      }

      .grid>div:nth-child(2) {
        animation-delay: 0.2s;
      }

      .grid>div:nth-child(3) {
        animation-delay: 0.3s;
      }

      .grid>div:nth-child(4) {
        animation-delay: 0.4s;
      }

      .grid>div:nth-child(5) {
        animation-delay: 0.5s;
      }

      .grid>div:nth-child(6) {
        animation-delay: 0.6s;
      }

      .grid>div:nth-child(7) {
        animation-delay: 0.7s;
      }

      .grid>div:nth-child(8) {
        animation-delay: 0.8s;
      }

      /* Responsive adjustments */
      @media (max-width: 768px) {
        .grid>div {
          animation-delay: 0s !important;
        }
      }
    </style>


  </asp:Content>