<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Documentaries - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
<main class="container mx-auto py-8 px-4">
  
  <!-- Page Header -->
  <div class="text-center mb-12">
    <h1 class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
      Documentaries
    </h1>
    <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
    <p class="mt-4 text-gray-600 text-lg">Explore our research and innovation through video</p>
  </div>

  <?php
  $documentaries = [
    ["BURAKH-UAF Technology", "https://www.youtube.com/embed/SZSlMmtcHHs"],
    ["Solar Umbrella-UAF Technology", "https://www.youtube.com/embed/H2V7ENejQ0k"],
    ["Anaaji Bag & Drum-UAF Technology", "https://www.youtube.com/embed/sAPDMGuw7Ts"],
    ["Golden Nuggets-UAF Technology", "https://www.youtube.com/embed/GdusTGemFow"],
    ["Soil Moisture Sensor", "https://www.youtube.com/embed/N1gRqYtF8os"],
    ["Solar Cold Storage", "https://www.youtube.com/embed/gDKBQRITKQQ"],
    ["Solar Hybrid Food Dryer", "https://www.youtube.com/embed/qColP3KX2s4"],
    ["Office of Research, Innovation & Commercialization", "https://www.youtube-nocookie.com/embed/ejg7C8rAm9E?rel=0"],
    ["Business Incubation Center", "https://www.youtube.com/embed/Tq95ofyrSaQ?rel=0"],
    ["HEC-SIOP-040-17-Dr. Muhammad Iftikhar", "https://www.youtube.com/embed/Qs8xlLunREI?rel=0"],
    ["SIOP-039-2017-Nadeem Akbar", "https://www.youtube.com/embed/W1yJkyy1nak?rel=0"],
    ["Fiber from Banana's Plant", "https://www.youtube.com/embed/IpvBrMhCV9o"],
  ];
  ?>

  <!-- Documentaries Grid -->
  <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8">
    
    <?php foreach ($documentaries as $index => $doc): ?>
      <div class="bg-gradient-to-br from-[#1a4d7c] to-[#2c5282] rounded-xl shadow-xl overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-2xl">
        
        <!-- Video Title -->
        <div class="bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] text-white text-center py-4 px-4">
          <h3 class="text-lg md:text-xl font-bold leading-tight">
            <?= htmlspecialchars($doc[0]) ?>
          </h3>
        </div>
        
        <!-- Video Container -->
        <div class="relative w-full" style="padding-top: 56.25%;">
          <iframe 
            class="absolute top-0 left-0 w-full h-full" 
            src="<?= htmlspecialchars($doc[1]) ?>" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen
            loading="lazy"
          ></iframe>
        </div>
        
      </div>
    <?php endforeach; ?>
    
  </div>
</main>

<style>
/* Additional responsive adjustments */
@media (max-width: 640px) {
  .grid {
    gap: 1rem;
  }
}

/* Smooth video loading */
iframe {
  transition: opacity 0.3s ease-in-out;
}

/* Card hover effect enhancement */
.hover\:scale-105:hover {
  transform: scale(1.02);
}

@media (min-width: 1024px) {
  .hover\:scale-105:hover {
    transform: scale(1.05);
  }
}
</style>




</asp:Content>
