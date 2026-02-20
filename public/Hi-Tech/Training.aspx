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
      Trainings
    </h1>
    <div class="h-1 w-24 sm:w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
    <p class="mt-4 md:mt-6 text-gray-600 max-w-3xl mx-auto text-base md:text-lg px-4">
      One Week Hands-On Training Programs at Central Hi-Tech Laboratory
    </p>
  </div>

  <!-- Training Advertisement Images -->
  <div class="mb-8 md:mb-12">
    <h2 class="text-2xl md:text-3xl font-bold text-center text-[#1a4d7c] mb-6 md:mb-8 px-4">Training Program Details</h2>
    
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-4 sm:gap-6 max-w-7xl mx-auto">
      <!-- Advertisement Image 1 -->
      <div class="bg-white rounded-xl shadow-lg overflow-hidden border border-gray-200 hover:shadow-2xl transition-all duration-300">
        <img src="../assets/img/high-tech/One-Week Hands on Training_page-0001.jpg" 
             alt="Training Program Page 1" 
             class="w-full h-auto object-contain">
      </div>

      <!-- Advertisement Image 2 -->
      <div class="bg-white rounded-xl shadow-lg overflow-hidden border border-gray-200 hover:shadow-2xl transition-all duration-300">
        <img src="../assets/img/high-tech/One-Week Hands on Training_page-0002.jpg" 
             alt="Training Program Page 2" 
             class="w-full h-auto object-contain">
      </div>
    </div>
  </div>

  <!-- Training Rate List Section -->
  <div class="bg-white rounded-xl md:rounded-2xl shadow-xl p-4 sm:p-6 md:p-10 mb-8 md:mb-12 border border-gray-200">
    <div class="flex items-center mb-6 md:mb-8">
      <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] p-2 md:p-3 rounded-lg mr-3 md:mr-4">
        <svg class="w-6 h-6 md:w-8 md:h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
        </svg>
      </div>
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c]">CHTL Training Rate List</h2>
    </div>

    <p class="text-sm sm:text-base text-gray-700 mb-6 md:mb-8 leading-relaxed">
      CHTL rate list for one week customized hands-on/general operational training is given below:
    </p>

    <!-- Desktop Table -->
    <div class="hidden md:block overflow-x-auto">
      <table class="w-full border-collapse bg-white shadow-sm rounded-lg overflow-hidden">
        <thead>
          <tr class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white">
            <th class="px-4 py-3 text-left text-sm font-semibold">Sr#</th>
            <th class="px-4 py-3 text-left text-sm font-semibold">Training</th>
            <th class="px-4 py-3 text-center text-sm font-semibold">Duration</th>
            <th class="px-4 py-3 text-center text-sm font-semibold">UAF Students (Rs.)</th>
            <th class="px-4 py-3 text-center text-sm font-semibold">UAF Faculty (Rs.)</th>
            <th class="px-4 py-3 text-center text-sm font-semibold">Other Organizations (Rs.)</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-b border-gray-200 hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">1.</td>
            <td class="px-4 py-3 text-sm font-medium">High Performance Liquid Chromatography (HPLC)</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
          <tr class="border-b border-gray-200 hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">2.</td>
            <td class="px-4 py-3 text-sm font-medium">Atomic Absorption Spectrophotometer (AAS)</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
          <tr class="border-b border-gray-200 hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">3.</td>
            <td class="px-4 py-3 text-sm font-medium">Scanning Electron Microscope (SEM)</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
          <tr class="border-b border-gray-200 hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">4.</td>
            <td class="px-4 py-3 text-sm font-medium">Proximate Analysis</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
          <tr class="border-b border-gray-200 hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">5.</td>
            <td class="px-4 py-3 text-sm font-medium">Gas Chromatography (GC)</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
          <tr class="hover:bg-gray-50 transition-colors">
            <td class="px-4 py-3 text-sm">6.</td>
            <td class="px-4 py-3 text-sm font-medium">General Laboratory Equipment (Spectrophotometer, Flame Photometer, Ultra Centrifuge, pH, EC DO meters etc.)</td>
            <td class="px-4 py-3 text-sm text-center">1 week</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">2,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">5,000</td>
            <td class="px-4 py-3 text-sm text-center font-semibold text-[#1a4d7c]">7,000</td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Mobile Cards -->
    <div class="md:hidden space-y-4">
      <!-- Card 1 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 1</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">High Performance Liquid Chromatography (HPLC)</h3>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>

      <!-- Card 2 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 2</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">Atomic Absorption Spectrophotometer (AAS)</h3>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>

      <!-- Card 3 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 3</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">Scanning Electron Microscope (SEM)</h3>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>

      <!-- Card 4 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 4</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">Proximate Analysis</h3>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>

      <!-- Card 5 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 5</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">Gas Chromatography (GC)</h3>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>

      <!-- Card 6 -->
      <div class="bg-gradient-to-br from-gray-50 to-white rounded-lg border border-gray-200 p-4 shadow-sm">
        <div class="flex justify-between items-start mb-3">
          <span class="text-xs font-semibold text-gray-500">Sr# 6</span>
          <span class="bg-[#1a4d7c] text-white text-xs px-2 py-1 rounded">1 week</span>
        </div>
        <h3 class="text-base font-bold text-[#1a4d7c] mb-3">General Laboratory Equipment</h3>
        <p class="text-xs text-gray-600 mb-3">(Spectrophotometer, Flame Photometer, Ultra Centrifuge, pH, EC DO meters etc.)</p>
        <div class="space-y-2 text-sm">
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Students:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 2,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">UAF Faculty:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 5,000</span>
          </div>
          <div class="flex justify-between">
            <span class="text-gray-600">Other Organizations:</span>
            <span class="font-semibold text-[#1a4d7c]">Rs. 7,000</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Apply for Training Section -->
  <div class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-xl md:rounded-2xl shadow-2xl overflow-hidden mb-8 md:mb-12 text-white">
    <div class="p-6 sm:p-8 md:p-12 text-center">
      <div class="mb-6">
        <svg class="w-16 h-16 md:w-20 md:h-20 mx-auto text-white/80" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
        </svg>
      </div>
      <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-4">Apply for Training</h2>
      <p class="text-lg md:text-xl text-white/90 mb-2">Coming Soon...</p>
      <p class="text-sm md:text-base text-white/70">Online application system will be available shortly</p>
    </div>
  </div>

  <!-- Download Section -->
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4 sm:gap-6 mb-8 md:mb-12">
    
    <!-- Download Training Proforma -->
    <div class="bg-white rounded-xl shadow-lg overflow-hidden border border-gray-200 hover:shadow-2xl transition-all duration-300">
      <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] p-6 text-white">
        <div class="flex items-center justify-between">
          <div>
            <h3 class="text-lg sm:text-xl font-bold mb-2">Training Proforma</h3>
            <p class="text-sm text-white/80">Download Application Form</p>
          </div>
          <svg class="w-10 h-10 sm:w-12 sm:h-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                  d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
          </svg>
        </div>
      </div>
      <div class="p-6">
        <p class="text-sm text-gray-600 mb-6">Download the training application form and submit it to apply for the training program.</p>
        <a href="../assets/files/Hi-Tech/Training_Proforma.pdf" 
           target="_blank"
           class="inline-flex items-center justify-center w-full bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white px-6 py-3 rounded-lg font-semibold hover:shadow-lg transition-all duration-300 hover:scale-105">
          <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"></path>
          </svg>
          Download Proforma
        </a>
      </div>
    </div>

    <!-- Training Record -->
    <div class="bg-white rounded-xl shadow-lg overflow-hidden border border-gray-200 hover:shadow-2xl transition-all duration-300">
      <div class="bg-gradient-to-r from-[#2c5282] to-[#1a4d7c] p-6 text-white">
        <div class="flex items-center justify-between">
          <div>
            <h3 class="text-lg sm:text-xl font-bold mb-2">Training Record</h3>
            <p class="text-sm text-white/80">One Week Hands-On Training</p>
          </div>
          <svg class="w-10 h-10 sm:w-12 sm:h-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                  d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
          </svg>
        </div>
      </div>
      <div class="p-6">
        <p class="text-sm text-gray-600 mb-6">View or download the one week hands-on training record document for reference.</p>
        <a href="../assets/files/Hi-Tech/One Week Hands-On Training Record.pdf" 
           target="_blank"
           class="inline-flex items-center justify-center w-full bg-gradient-to-r from-[#2c5282] to-[#1a4d7c] text-white px-6 py-3 rounded-lg font-semibold hover:shadow-lg transition-all duration-300 hover:scale-105">
          <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
          </svg>
          View Training Record
        </a>
      </div>
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
</style>



</asp:Content>
