<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Technical Training Programs - Hi-Tech Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<main class="container mx-auto py-8 px-4">

  <!-- Page Header -->
  <div class="text-center mb-8 md:mb-12">
    <h1
      class="text-3xl sm:text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4 px-2">
      Analytical Facilities
    </h1>
    <div class="h-1 w-24 sm:w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
    <p class="mt-4 md:mt-6 text-gray-600 max-w-3xl mx-auto text-base md:text-lg px-4">
      Sample Analysis Services at Central Hi-Tech Laboratory
    </p>
  </div>
  <!-- Sample Analysis Rate List Section -->
  <div class="bg-white rounded-xl md:rounded-2xl shadow-xl p-4 sm:p-6 md:p-10 mb-8 md:mb-12 border border-gray-200">
    <div class="flex items-center mb-6 md:mb-8">
      <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] p-2 md:p-3 rounded-lg mr-3 md:mr-4">
        <svg class="w-6 h-6 md:w-8 md:h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
        </svg>
      </div>
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c]">Sample Analysis Rate List</h2>
    </div>

    <!-- Desktop Rate List Table -->
    <div class="hidden md:block overflow-x-auto">
      <table class="w-full text-sm text-gray-700 border-collapse">
        <thead class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white">
          <tr>
            <th class="px-4 py-3 text-left border border-white/20">Test Category</th>
            <th class="px-4 py-3 text-left border border-white/20">Test Particulars</th>
            <th class="px-4 py-3 text-center border border-white/20">UAF Students (Rs)</th>
            <th class="px-4 py-3 text-center border border-white/20">Other Students (Rs)</th>
            <th class="px-4 py-3 text-center border border-white/20">General (Rs)</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Vitamins</td>
            <td class="px-4 py-3">Vitamin C, E & B-Carotene</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3500*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2500 / 4000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">9000</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Sugars</td>
            <td class="px-4 py-3">Glucose, Fructose & Sucrose</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3500*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2500 / 4000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">9000</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Phenolic Compounds</td>
            <td class="px-4 py-3">Gallic Acid, Vanillic Acid, Caffeic Acid, p-Coumaric Acid, m-Coumaric Acid, Chlorogenic Acid, Syringic Acid, Sinapic Acid</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3500*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2500 / 4000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">9000</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Flavonoids</td>
            <td class="px-4 py-3">Quercetin, Kaempferol</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3500*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2500 / 4000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">9000</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Organic Acids</td>
            <td class="px-4 py-3">Pyruvic, Citric, Tartaric, Oxalic, Malic, Fumaric & Succinic Acid</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3500*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2500 / 4000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">7000</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Elemental Analysis</td>
            <td class="px-4 py-3">Ca, Cd, Co, Cu, Cr, Fe, Pb, Mg, Mn, Ni, Zn</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">100</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">200</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">300</td>
          </tr>
          <tr class="border-b hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Sample Digestion</td>
            <td class="px-4 py-3">—</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">500</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">600</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">700</td>
          </tr>
          <tr class="hover:bg-blue-50 transition-colors">
            <td class="px-4 py-3 font-semibold">Volatile Compounds</td>
            <td class="px-4 py-3">Fatty Acids & Essential Oils</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">1500 / 2000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">2000 / 3000*</td>
            <td class="px-4 py-3 text-center text-[#1a4d7c] font-semibold">7000</td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Mobile Rate List Cards -->
    <div class="md:hidden space-y-4">
      <!-- Card 1: Vitamins -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Vitamins</h3>
        <p class="text-xs text-gray-600 mb-3">Vitamin C, E & B-Carotene</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3500*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2500 / 4000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 9000</span>
          </div>
        </div>
      </div>

      <!-- Card 2: Sugars -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Sugars</h3>
        <p class="text-xs text-gray-600 mb-3">Glucose, Fructose & Sucrose</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3500*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2500 / 4000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 9000</span>
          </div>
        </div>
      </div>

      <!-- Card 3: Phenolic Compounds -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Phenolic Compounds</h3>
        <p class="text-xs text-gray-600 mb-3">Gallic Acid, Vanillic Acid, Caffeic Acid, p-Coumaric Acid, m-Coumaric Acid, Chlorogenic Acid, Syringic Acid, Sinapic Acid</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3500*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2500 / 4000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 9000</span>
          </div>
        </div>
      </div>

      <!-- Card 4: Flavonoids -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Flavonoids</h3>
        <p class="text-xs text-gray-600 mb-3">Quercetin, Kaempferol</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3500*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2500 / 4000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 9000</span>
          </div>
        </div>
      </div>

      <!-- Card 5: Organic Acids -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Organic Acids</h3>
        <p class="text-xs text-gray-600 mb-3">Pyruvic, Citric, Tartaric, Oxalic, Malic, Fumaric & Succinic Acid</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3500*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2500 / 4000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7000</span>
          </div>
        </div>
      </div>

      <!-- Card 6: Elemental Analysis -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Elemental Analysis</h3>
        <p class="text-xs text-gray-600 mb-3">Ca, Cd, Co, Cu, Cr, Fe, Pb, Mg, Mn, Ni, Zn</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 100</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 200</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 300</span>
          </div>
        </div>
      </div>

      <!-- Card 7: Sample Digestion -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Sample Digestion</h3>
        <p class="text-xs text-gray-600 mb-3">—</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 500</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 600</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 700</span>
          </div>
        </div>
      </div>

      <!-- Card 8: Volatile Compounds -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <h3 class="text-base font-bold text-[#1a4d7c] mb-2">Volatile Compounds</h3>
        <p class="text-xs text-gray-600 mb-3">Fatty Acids & Essential Oils</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 1500 / 2000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">Other Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2000 / 3000*</span>
          </div>
          <div class="flex justify-between bg-blue-50 p-2 rounded">
            <span class="text-gray-600">General:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7000</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- PDF Section -->
  <div class="bg-white rounded-xl md:rounded-2xl shadow-xl p-4 sm:p-6 md:p-10 mb-8 md:mb-12 border border-gray-200">
    <div class="flex items-center mb-6 md:mb-8">
      <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] p-2 md:p-3 rounded-lg mr-3 md:mr-4">
        <svg class="w-6 h-6 md:w-8 md:h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
        </svg>
      </div>
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c]">Rate List of All Available Analytical Facilities</h2>
    </div>

    <!-- PDF Viewer -->
    <div class="w-full overflow-hidden rounded-lg border border-gray-200 mb-6">
      <iframe 
        src="assets/files/Hi-Tech/Sample-Analysis-Rate-List-of-CHTL.pdf"
        class="w-full"
        style="height: 500px;"
      ></iframe>
    </div>

    <!-- Download Button -->
    <div class="text-center">
      <a href="assets/files/Hi-Tech/Sample-Analysis-Rate-List-of-CHTL.pdf" 
         download
         class="inline-flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white px-6 py-3 rounded-lg font-semibold hover:shadow-lg transition-all duration-300 hover:scale-105">
        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"></path>
        </svg>
        Download Rate List (PDF)
      </a>
    </div>
  </div>

  <!-- Download Proforma Section -->
  <div class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-xl md:rounded-2xl shadow-2xl overflow-hidden mb-8 md:mb-12 text-white">
    <div class="p-6 sm:p-8 md:p-12 text-center">
      <div class="mb-6">
        <svg class="w-16 h-16 md:w-20 md:h-20 mx-auto text-white/80" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
        </svg>
      </div>
      <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-4">Sample Analysis Proforma</h2>
      <p class="text-base md:text-lg text-white/90 mb-6">
        Download the official Sample Analysis Proforma of Central Hi-Tech Laboratory, UAF.
      </p>
      <a href="assets/files/Hi-Tech/Sample-Analysis-Proforma.pdf" 
         download
         class="inline-flex items-center justify-center bg-orange-500 px-8 py-3 rounded-lg font-semibold hover:shadow-2xl transition-all duration-300 hover:scale-105">
        <!-- <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"></path>
        </svg> -->
        Download Proforma
      </a>
    </div>
  </div>

</main>

<style>
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

  .bg-white,
  .bg-gradient-to-br {
    animation: fadeInUp 0.6s ease-out;
  }

  /* Table hover effects */
  tbody tr {
    transition: background-color 0.2s ease;
  }

  /* Mobile iframe responsive */
  @media (max-width: 768px) {
    iframe {
      height: 400px !important;
    }
  }
</style>


</asp:Content>
