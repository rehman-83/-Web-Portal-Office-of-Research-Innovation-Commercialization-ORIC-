<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Downloads - ORIC
  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mx-auto py-8 px-4">

      <!-- Page Header -->
      <div class="text-center mb-12">
        <h1
          class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
          Downloads
        </h1>
        <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
        <p class="mt-6 text-gray-600 max-w-3xl mx-auto text-lg">
          Access important documents, proformas, and resources for faculty and research students.
        </p>
      </div>

      <!-- Downloads Content -->
      <div class="max-w-4xl mx-auto">
        <div class="bg-white rounded-2xl shadow-xl p-6 md:p-10 border border-gray-200">
          <ol id="downloadsList" class="space-y-6 text-gray-700 text-lg"></ol>
          <p id="downloadsState" class="mt-4 text-sm text-gray-500">Loading downloads...</p>
        </div>

        <!-- Info Card -->
        <!-- <div class="mt-8 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-xl p-6 md:p-8 border-l-4 border-[#3674B5]">
      <div class="flex items-start">
        <svg class="w-6 h-6 text-[#3674B5] mr-3 mt-1 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
        </svg>
        <div>
          <h3 class="text-lg font-semibold text-[#1a4d7c] mb-2">Need Help?</h3>
          <p class="text-gray-700">If you have any questions or need assistance with these documents, please contact ORIC at <a href="mailto:oric@uaf.edu.pk" class="text-[#3674B5] hover:underline font-semibold">oric@uaf.edu.pk</a></p>
        </div>
      </div>
    </div>
  </div> -->

    </main>

    <script>
      (function () {
        const list = document.getElementById('downloadsList');
        const state = document.getElementById('downloadsState');

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

        function createItem(item, index) {
          const title = escapeHtml(item.title || `Download ${index + 1}`);
          const summary = escapeHtml(item.summary || item.content || 'Download resource file.');
          const fileUrl = item.fileUrl ? escapeHtml(item.fileUrl) : '';

          return `
      <li class="flex items-start">
        <span class="mr-4 mt-1 flex h-8 w-8 flex-shrink-0 items-center justify-center rounded-full bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] font-bold text-white">${index + 1}</span>
        <div class="flex-1">
          <h3 class="font-semibold text-[#1a4d7c]">${title}</h3>
          <p class="mt-1 text-sm text-gray-600">${summary}</p>
          ${fileUrl ? `<a href="${fileUrl}" target="_blank" rel="noopener" class="mt-3 inline-flex items-center text-sm font-semibold text-[#3674B5] transition-all duration-300 hover:text-[#1a4d7c] hover:underline">Open File</a>` : '<p class="mt-2 text-xs text-gray-500">File URL not provided</p>'}
        </div>
      </li>
    `;
        }

        async function loadDownloads() {
          try {
            const items = await fetchWithFallback('/api/downloads');
            if (!Array.isArray(items) || !items.length) {
              list.innerHTML = '';
              state.textContent = 'No published downloads found yet.';
              return;
            }

            list.innerHTML = items.map(createItem).join('');
            state.textContent = '';
          } catch (error) {
            list.innerHTML = '';
            state.textContent = `Unable to load downloads right now. ${error.message || ''}`.trim();
          }
        }

        loadDownloads();
      })();
    </script>

    <style>
      /* Responsive adjustments */
      @media (max-width: 640px) {
        ol li>div a {
          font-size: 0.95rem;
        }

        .flex-shrink-0 {
          width: 2rem;
          height: 2rem;
          font-size: 0.875rem;
        }
      }

      /* Smooth animations */
      @keyframes fadeInUp {
        from {
          opacity: 0;
          transform: translateY(20px);
        }

        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      .bg-white {
        animation: fadeInUp 0.6s ease-out;
      }
    </style>


  </asp:Content>