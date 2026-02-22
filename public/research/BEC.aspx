<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Board of Ethical Committee (BEC) - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
<main class="container mx-auto px-4 py-8 md:py-12">
  <!-- Page Header -->
  <div class="text-center mb-8 md:mb-12 animate-fade-in-up">
    <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-[#1a4d7c] mb-4">
      Constitution of Institutional BioEthics Committee
    </h1>
    <div class="w-24 h-1 bg-gradient-to-r from-[#3674B5] to-[#A1E3F9] mx-auto rounded-full"></div>
  </div>

  <!-- PDF Viewer Section -->
  <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 animate-slide-in">
    <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] px-6 py-4">
      <div class="flex items-center justify-between flex-wrap gap-4">
        <div class="flex items-center space-x-3">
          <i class="fas fa-file-pdf text-white text-2xl"></i>
          <h2 class="text-white font-semibold text-lg md:text-xl">Committee Constitution Document</h2>
        </div>
        <a href="../assets/files/research&outreach/Constitution of Institutional BioEthic Committee.pdf" 
           target="_blank" 
           class="bg-white text-[#1a4d7c] px-4 py-2 rounded-lg hover:bg-[#D1F8EF] transition-all duration-300 flex items-center space-x-2 text-sm md:text-base">
          <i class="fas fa-download"></i>
          <span>Download PDF</span>
        </a>
      </div>
    </div>
    <div class="p-2 md:p-4">
      <iframe 
        src="../assets/files/research/Constitution of Institutional BioEthic Committee.pdf" 
        class="w-full h-[500px] md:h-[700px] lg:h-[800px] border-0 rounded-lg"
        title="Institutional BioEthics Committee Constitution">
      </iframe>
    </div>
  </div>

  <!-- Info Cards -->
  <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-8 md:mt-12">
    <div class="bg-gradient-to-br from-[#3674B5] to-[#578FCA] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-gavel text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Ethical Review</h3>
      </div>
      <p class="text-white/90">Ensures research compliance with ethical standards and regulations</p>
    </div>

    <div class="bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-shield-alt text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Protection</h3>
      </div>
      <p class="text-white/90">Protects rights and welfare of research participants</p>
    </div>

    <div class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-balance-scale text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Compliance</h3>
      </div>
      <p class="text-white/90">Maintains institutional research integrity and guidelines</p>
    </div>
  </div>
</main>

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
