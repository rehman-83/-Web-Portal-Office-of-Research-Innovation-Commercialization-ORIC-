<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Technology Transfer - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<style>
  /* Gallery Card Styles */
  .tech-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
  }

  .tech-card {
    background: white;
    border-radius: 0.75rem;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    cursor: pointer;
  }

  .tech-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
  }

  .tech-card img {
    width: 100%;
    height: 250px;
    object-fit: cover;
  }

  .tech-card-caption {
    padding: 1rem;
    text-align: center;
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    font-weight: 600;
    font-size: 0.95rem;
    min-height: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  /* Modal Styles */
  .tech-modal {
    display: none;
    position: fixed;
    z-index: 9999;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.9);
    animation: fadeIn 0.3s ease;
  }

  .tech-modal.active {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .tech-modal-content {
    max-width: 100%;
    max-height: 100%;
    width: 90%;
    height: auto;
    animation: zoomIn 0.3s ease;
  }

  .tech-modal-content img {
    width: 100%;
    height: auto;
    max-height: 90vh;
    object-fit: contain;
    border-radius: 0.5rem;
  }

  .tech-modal-close {
    position: absolute;
    top: 20px;
    right: 40px;
    font-size: 40px;
    font-weight: bold;
    color: white;
    cursor: pointer;
    transition: all 0.3s ease;
    z-index: 10000;
  }

  .tech-modal-close:hover {
    color: #3674B5;
    transform: scale(1.2);
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }

  @keyframes zoomIn {
    from {
      transform: scale(0.8);
    }
    to {
      transform: scale(1);
    }
  }

  /* Download Cards */
  .download-card {
    background: white;
    padding: 1.5rem;
    border-radius: 0.75rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    display: flex;
    align-items: center;
    gap: 1rem;
  }

  .download-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
  }

  .download-icon {
    flex-shrink: 0;
    width: 50px;
    height: 50px;
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 1.5rem;
  }

  .download-content {
    flex: 1;
  }

  .download-title {
    font-weight: 600;
    color: #1a4d7c;
    margin-bottom: 0.25rem;
  }

  .download-link {
    color: #3674B5;
    text-decoration: none;
    font-size: 0.875rem;
    transition: color 0.3s ease;
  }

  .download-link:hover {
    color: #1a4d7c;
    text-decoration: underline;
  }

  /* Responsive */
  @media (max-width: 768px) {
    .tech-gallery {
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 1rem;
    }

    .tech-card img {
      height: 200px;
    }

    .tech-modal-close {
      top: 10px;
      right: 20px;
      font-size: 30px;
    }
  }

  @media (max-width: 480px) {
    .tech-gallery {
      grid-template-columns: 1fr;
    }
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-0">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Commercialized Technologies</h1>
      <p class="text-gray-600">Innovation and Success Stories from UAF</p>
    </div>

    <!-- Main Content Card -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8">
      
      <!-- Technologies/Success Stories Section -->
      <div class="mb-8">
        <!-- Hero Image -->
        <div class="mb-6">
          <img src="assets/img/COMMERCILIZATION/Tech.jpg" alt="Technologies" 
               class="w-full rounded-lg shadow-lg" style="max-height: 400px; object-fit: cover;">
        </div>

         <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
          <i class="fas fa-lightbulb mr-2"></i>Technologies/Success Stories
        </h2>

        <!-- Download Links Section -->
        <div class="grid md:grid-cols-3 gap-4 mb-8">
          <a href="assets\files\TechnologiesSuccess&Stories\UAF-COVID-19.pdf" target="_blank" class="download-card">
            <div class="download-icon">
              <i class="fas fa-virus"></i>
            </div>
            <div class="download-content">
              <div class="download-title">COVID-19 Services</div>
              <span class="download-link">
                <i class="fas fa-download mr-1"></i>Download
              </span>
            </div>
          </a>

          <a href="assets\files\TechnologiesSuccess&Stories\Technologies.pdf" target="_blank" class="download-card">
            <div class="download-icon">
              <i class="fas fa-trophy"></i>
            </div>
            <div class="download-content">
              <div class="download-title">Commercialized Technologies</div>
              <span class="download-link">
                <i class="fas fa-download mr-1"></i>Download
              </span>
            </div>
          </a>

          <a href="assets\files\TechnologiesSuccess&Stories\notification.pdf" target="_blank" class="download-card">
            <div class="download-icon">
              <i class="fas fa-file-alt"></i>
            </div>
            <div class="download-content">
              <div class="download-title">UAF Policy Notification</div>
              <span class="download-link">
                <i class="fas fa-download mr-1"></i>Download
              </span>
            </div>
          </a>
        </div>
      </div>

      <!-- UAF Technologies Gallery Section -->
      <div>
        <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
          <i class="fas fa-microscope mr-2"></i>UAF Technologies
        </h2>

        <div class="tech-gallery">
          <!-- Technology Card 1 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Adoption of Heat-Tolerant Wheat.jpg" 
                 alt="Adoption of Heat-Tolerant Wheat">
            <div class="tech-card-caption">
              Adoption of Heat-Tolerant Wheat
            </div>
          </div>

          <!-- Technology Card 2 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/BIO-VERMIFUGE.jpg" 
                 alt="BIO-VERMIFUGE">
            <div class="tech-card-caption">
              BIO-VERMIFUGE
            </div>
          </div>

          <!-- Technology Card 3 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/BSP Natural.jpg" 
                 alt="BSP Natural">
            <div class="tech-card-caption">
              BSP Natural
            </div>
          </div>

          <!-- Technology Card 4 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/CASBios.jpg" 
                 alt="CASBios">
            <div class="tech-card-caption">
              CASBios
            </div>
          </div>

          <!-- Technology Card 5 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Climate Resilient Transport Fuel (CRTF).jpg" 
                 alt="Climate Resilient Transport Fuel">
            <div class="tech-card-caption">
              Climate Resilient Transport Fuel (CRTF)
            </div>
          </div>

          <!-- Technology Card 6 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/HerbaMix-L.jpg" 
                 alt="HerbaMix-L">
            <div class="tech-card-caption">
              HerbaMix-L
            </div>
          </div>

          <!-- Technology Card 7 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Hybrid Wheat.jpg" 
                 alt="Hybrid Wheat">
            <div class="tech-card-caption">
              Hybrid Wheat
            </div>
          </div>

          <!-- Technology Card 8 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Industrial Hemp.jpg" 
                 alt="Industrial Hemp">
            <div class="tech-card-caption">
              Industrial Hemp
            </div>
          </div>

          <!-- Technology Card 9 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Low Gluten Wheat.jpg" 
                 alt="Low Gluten Wheat">
            <div class="tech-card-caption">
              Low Gluten Wheat
            </div>
          </div>

          <!-- Technology Card 10 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/OKARA-3A.jpg" 
                 alt="OKARA-3A">
            <div class="tech-card-caption">
              OKARA-3A
            </div>
          </div>

          <!-- Technology Card 11 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/Production of NON-GMO SOYBEAN.jpg" 
                 alt="Production of NON-GMO SOYBEAN">
            <div class="tech-card-caption">
              Production of NON-GMO SOYBEAN
            </div>
          </div>

          <!-- Technology Card 12 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/SOLAR CONTINUOUS ROASTER (SCR).jpg" 
                 alt="SOLAR CONTINUOUS ROASTER">
            <div class="tech-card-caption">
              SOLAR CONTINUOUS ROASTER (SCR)
            </div>
          </div>

          <!-- Technology Card 13 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/SOLAR HYBRID DEHYDRATOR.jpg" 
                 alt="SOLAR HYBRID DEHYDRATOR">
            <div class="tech-card-caption">
              SOLAR HYBRID DEHYDRATOR
            </div>
          </div>

          <!-- Technology Card 14 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/SOLAR MILK CHILLER.jpg" 
                 alt="SOLAR MILK CHILLER">
            <div class="tech-card-caption">
              SOLAR MILK CHILLER
            </div>
          </div>

          <!-- Technology Card 15 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/SUSTAINTEX FIBERS.jpg" 
                 alt="SUSTAINTEX FIBERS">
            <div class="tech-card-caption">
              SUSTAINTEX FIBERS
            </div>
          </div>

          <!-- Technology Card 16 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/UAF 11.jpg" 
                 alt="UAF 11">
            <div class="tech-card-caption">
              UAF 11
            </div>
          </div>

          <!-- Technology Card 17 -->
          <div class="tech-card" onclick="openTechModal(this)">
            <img src="assets/img/COMMERCILIZATION/uaf_technologies/UAF Gro.jpg" 
                 alt="UAF Gro">
            <div class="tech-card-caption">
              UAF Gro
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</main>

<!-- Modal for Image Preview -->
<div class="tech-modal" id="techModal" onclick="closeTechModal()">
  <span class="tech-modal-close">&times;</span>
  <div class="tech-modal-content" onclick="event.stopPropagation()">
    <img id="modalImage" src="" alt="Technology Image">
  </div>
</div>

<script>
  function openTechModal(card) {
    const modal = document.getElementById('techModal');
    const modalImg = document.getElementById('modalImage');
    const img = card.querySelector('img');
    
    modal.classList.add('active');
    modalImg.src = img.src;
    modalImg.alt = img.alt;
    
    // Prevent body scroll when modal is open
    document.body.style.overflow = 'hidden';
  }

  function closeTechModal() {
    const modal = document.getElementById('techModal');
    modal.classList.remove('active');
    
    // Restore body scroll
    document.body.style.overflow = 'auto';
  }

  // Close modal on ESC key
  document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
      closeTechModal();
    }
  });
</script>

</asp:Content>
