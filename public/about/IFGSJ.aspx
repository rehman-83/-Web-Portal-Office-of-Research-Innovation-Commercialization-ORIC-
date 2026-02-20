<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    IFGSJ - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <main class="container mx-auto px-4 py-8 md:py-12">
  <!-- Page Header -->
  <div class="text-center mb-8 md:mb-12 animate-fade-in-up">
    <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-[#1a4d7c] mb-4">
      Impact Factor of Global Science Journals
    </h1>
    <div class="w-24 h-1 bg-gradient-to-r from-[#3674B5] to-[#A1E3F9] mx-auto rounded-full"></div>
    <p class="text-gray-600 mt-4 text-lg max-w-3xl mx-auto">Reference guide for research publication quality assessment</p>
  </div>

  <!-- PDF Viewer Section -->
  <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 animate-slide-in">
    <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] px-6 py-4">
      <div class="flex items-center justify-between flex-wrap gap-4">
        <div class="flex items-center space-x-3">
          <i class="fas fa-chart-line text-white text-2xl"></i>
          <h2 class="text-white font-semibold text-lg md:text-xl">Journal Impact Factors Database</h2>
        </div>
        <a href="assets/files/about/Impact Factor of Global Science Journals.pdf" 
           target="_blank" 
           class="bg-white text-[#1a4d7c] px-4 py-2 rounded-lg hover:bg-[#D1F8EF] transition-all duration-300 flex items-center space-x-2 text-sm md:text-base">
          <i class="fas fa-download"></i>
          <span>Download PDF</span>
        </a>
      </div>
    </div>
    <div class="p-2 md:p-4">
      <iframe 
        src="assets/files/about/Impact Factor of Global Science Journals.pdf" 
        class="w-full h-[500px] md:h-[700px] lg:h-[800px] border-0 rounded-lg"
        title="Impact Factor of Global Science Journals">
      </iframe>
    </div>
  </div>

  <!-- Information Cards -->
  <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-8 md:mt-12">
    <div class="bg-gradient-to-br from-[#3674B5] to-[#578FCA] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-book-open text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Journal Selection</h3>
      </div>
      <p class="text-white/90">Choose high-impact journals for your research publications</p>
    </div>

    <div class="bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-star text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Quality Metrics</h3>
      </div>
      <p class="text-white/90">Assess journal quality and research visibility</p>
    </div>

    <div class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-xl p-6 text-white shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2">
      <div class="flex items-center space-x-4 mb-4">
        <div class="bg-white/20 p-3 rounded-lg">
          <i class="fas fa-trophy text-3xl"></i>
        </div>
        <h3 class="text-xl font-bold">Research Excellence</h3>
      </div>
      <p class="text-white/90">Enhance your academic profile with quality publications</p>
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
