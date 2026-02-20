<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   ORIC - publications
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
<style>
  /* Publication Card Styles */
  .publication-card {
    background: white;
    border-radius: 1rem;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    height: 100%;
    display: flex;
    flex-direction: column;
  }

  .publication-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
  }

  .publication-image-wrapper {
    position: relative;
    width: 100%;
    padding-top: 140%; /* 1:1.4 aspect ratio for book covers */
    overflow: hidden;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
  }

  .publication-image {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
  }

  .publication-card:hover .publication-image {
    transform: scale(1.05);
  }

  .publication-content {
    padding: 1.25rem;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .publication-title {
    font-size: 0.95rem;
    font-weight: 600;
    color: #2d3748;
    text-align: center;
    line-height: 1.5;
    min-height: 3rem;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  /* Publication Grid */
  .publications-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 2rem;
    margin-top: 2rem;
  }

  /* Icon Overlay */
  .publication-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(54, 116, 181, 0.9);
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .publication-card:hover .publication-overlay {
    opacity: 1;
  }

  .publication-overlay i {
    color: white;
    font-size: 3rem;
  }

  /* Badge */
  .publication-badge {
    position: absolute;
    top: 10px;
    right: 10px;
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    padding: 0.25rem 0.75rem;
    border-radius: 2rem;
    font-size: 0.75rem;
    font-weight: 600;
    z-index: 2;
  }

  /* Animation */
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

  .fade-in-up {
    animation: fadeInUp 0.6s ease-out forwards;
  }

  /* Stagger animation for cards */
  .publication-card:nth-child(1) { animation-delay: 0.1s; }
  .publication-card:nth-child(2) { animation-delay: 0.2s; }
  .publication-card:nth-child(3) { animation-delay: 0.3s; }
  .publication-card:nth-child(4) { animation-delay: 0.4s; }
  .publication-card:nth-child(5) { animation-delay: 0.5s; }
  .publication-card:nth-child(6) { animation-delay: 0.6s; }
  .publication-card:nth-child(7) { animation-delay: 0.7s; }
  .publication-card:nth-child(8) { animation-delay: 0.8s; }
  .publication-card:nth-child(9) { animation-delay: 0.9s; }
  .publication-card:nth-child(10) { animation-delay: 1s; }
  .publication-card:nth-child(11) { animation-delay: 1.1s; }

  /* Stats Section */
  .stats-card {
    transition: all 0.3s ease;
  }

  .stats-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  }

  /* Responsive Design */
  @media (max-width: 1024px) {
    .publications-grid {
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 1.5rem;
    }
  }

  @media (max-width: 768px) {
    .publications-grid {
      grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
      gap: 1.25rem;
    }

    .publication-content {
      padding: 1rem;
    }

    .publication-title {
      font-size: 0.875rem;
      min-height: 2.5rem;
    }

    .publication-overlay i {
      font-size: 2rem;
    }
  }

  @media (max-width: 480px) {
    .publications-grid {
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
      gap: 1rem;
    }

    .publication-title {
      font-size: 0.8rem;
    }
  }

  /* Lightbox Modal Styles */
  .lightbox-modal {
    display: none;
    position: fixed;
    z-index: 9999;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.95);
    overflow: auto;
    animation: fadeIn 0.3s ease;
  }

  .lightbox-modal.active {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .lightbox-content {
    position: relative;
    margin: auto;
    padding: 20px;
    max-width: 95%;
    max-height: 95vh;
    animation: zoomIn 0.3s ease;
  }

  .lightbox-image {
    width: 100%;
    height: auto;
    max-height: 90vh;
    object-fit: contain;
    border-radius: 8px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.5);
  }

  .lightbox-close {
    position: absolute;
    top: 10px;
    right: 25px;
    color: white;
    font-size: 45px;
    font-weight: bold;
    cursor: pointer;
    z-index: 10000;
    transition: all 0.3s ease;
    background: rgba(54, 116, 181, 0.8);
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    line-height: 1;
  }

  .lightbox-close:hover {
    background: rgba(54, 116, 181, 1);
    transform: rotate(90deg);
  }

  .lightbox-title {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    color: white;
    background: rgba(0, 0, 0, 0.7);
    padding: 10px 20px;
    border-radius: 8px;
    font-size: 1rem;
    font-weight: 600;
    text-align: center;
    max-width: 90%;
  }

  @keyframes zoomIn {
    from {
      transform: scale(0.8);
      opacity: 0;
    }
    to {
      transform: scale(1);
      opacity: 1;
    }
  }

  /* Click cursor for images */
  .publication-image-wrapper {
    cursor: pointer;
  }

  /* Mobile responsiveness for lightbox */
  @media (max-width: 768px) {
    .lightbox-content {
      padding: 10px;
    }

    .lightbox-close {
      top: 5px;
      right: 10px;
      font-size: 35px;
      width: 45px;
      height: 45px;
    }

    .lightbox-title {
      font-size: 0.875rem;
      padding: 8px 15px;
      bottom: 10px;
    }
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8 fade-in-up">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">ORIC Publications</h1>
      <p class="text-gray-600">Showcasing Research Excellence and Knowledge Dissemination</p>
    </div>

    <!-- Statistics Overview -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
      <div class="stats-card bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-book text-4xl opacity-80"></i>
          <span class="text-xs font-semibold bg-white text-black bg-opacity-20 px-2 py-1 rounded">Total</span>
        </div>
        <h3 class="text-3xl font-bold mb-1">11+</h3>
        <p class="text-blue-100 text-sm">Major Publications</p>
      </div>

      <div class="stats-card bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-university text-4xl opacity-80"></i>
          <span class="text-xs font-semibold  text-black bg-white bg-opacity-20 px-2 py-1 rounded">Legacy</span>
        </div>
        <h3 class="text-3xl font-bold mb-1">100+</h3>
        <p class="text-green-100 text-sm">Years of Excellence</p>
      </div>

      <div class="stats-card bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-flask text-4xl opacity-80"></i>
          <span class="text-xs font-semibold  text-black bg-white bg-opacity-20 px-2 py-1 rounded">Research</span>
        </div>
        <h3 class="text-3xl font-bold mb-1">1961-2025</h3>
        <p class="text-purple-100 text-sm">Research Documentation</p>
      </div>
    </div>

    <!-- Introduction Section -->
    <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-xl border-l-4 border-blue-500 mb-8">
      <h2 class="text-xl font-semibold text-[#1a4d7c] mb-3">
        <i class="fas fa-info-circle mr-2"></i>About Our Publications
      </h2>
      <p class="text-gray-700 leading-relaxed">
        ORIC at the University of Agriculture, Faisalabad has been committed to documenting and disseminating 
        research outcomes, technological innovations, and scientific achievements. Our publications serve as a 
        comprehensive record of the university's contributions to agricultural research and education, spanning 
        over six decades of excellence.
      </p>
    </div>

    <!-- Publications Grid -->
    <div class="publications-grid ">
      
      <!-- Publication 1 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/01.jpg', 'Proceedings World Food Day (Biodiversity for Food Security)')">
          <img src="assets/img/research/Oric_Publications/01.jpg" 
               alt="Proceedings World Food Day" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Proceedings "World Food Day" (Biodiversity for Food Security)</p>
        </div>
      </div>

      <!-- Publication 2 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/02.jpg', 'Farmer Friendly Technologies (1961-2005)')">
          <img src="assets/img/research/Oric_Publications/02.jpg" 
               alt="Farmer Friendly Technologies" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Farmer Friendly Technologies (1961-2005)</p>
        </div>
      </div>

      <!-- Publication 3 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/03.jpg', 'Priority Areas of Research')">
          <img src="assets/img/research/Oric_Publications/03.jpg" 
               alt="Priority Areas of Research" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Priority Areas of Research</p>
        </div>
      </div>

      <!-- Publication 4 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/04.jpg', 'Bibliography of Scientific Research (1961-2005)')">
          <img src="assets/img/research/Oric_Publications/04.jpg" 
               alt="Bibliography of Scientific Research" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Bibliography of Scientific Research (1961-2005)</p>
        </div>
      </div>

      <!-- Publication 5 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/05.jpg', 'Post-Graduate Research (Glimpses)')">
          <img src="assets/img/research/Oric_Publications/05.jpg" 
               alt="Post-Graduate Research" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Post-Graduate Research (Glimpses)</p>
        </div>
      </div>

      <!-- Publication 6 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/06.jpg', '100 Years of Excellence in Education & Research (Vol.1)')">
          <img src="assets/img/research/Oric_Publications/06.jpg" 
               alt="100 Years of Excellence Vol.1" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
          <span class="publication-badge">Vol. 1</span>
        </div>
        <div class="publication-content">
          <p class="publication-title">100 Years of Excellence in Education & Research (Vol.1)</p>
        </div>
      </div>

      <!-- Publication 7 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/07.jpg', '100 Years of Excellence in Education & Research (Vol.2)')">
          <img src="assets/img/research/Oric_Publications/07.jpg" 
               alt="100 Years of Excellence Vol.2" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
          <span class="publication-badge">Vol. 2</span>
        </div>
        <div class="publication-content">
          <p class="publication-title">100 Years of Excellence in Education & Research (Vol.2)</p>
        </div>
      </div>

      <!-- Publication 8 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/08.jpg', 'Promotion of Research University of Agri. Faisalabad')">
          <img src="assets/img/research/Oric_Publications/08.jpg" 
               alt="Promotion of Research UAF" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Promotion of Research University of Agri. Faisalabad</p>
        </div>
      </div>

      <!-- Publication 9 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/09.png', '101 Innovations Catalogue')">
          <img src="assets/img/research/Oric_Publications/09.png" 
               alt="101 Innovations Catalogue" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
          <span class="publication-badge">Featured</span>
        </div>
        <div class="publication-content">
          <p class="publication-title">101 Innovations Catalogue</p>
        </div>
      </div>

      <!-- Publication 10 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/10.png', 'Convener/Editor ORIC News')">
          <img src="assets/img/research/Oric_Publications/10.png" 
               alt="ORIC News" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
        </div>
        <div class="publication-content">
          <p class="publication-title">Convener/Editor ORIC News</p>
        </div>
      </div>

      <!-- Publication 11 -->
      <div class="publication-card fade-in-up">
        <div class="publication-image-wrapper" onclick="openLightbox('assets/img/research/Oric_Publications/11.png', 'Editor: ORIC News Platinum Number (75th Vol.)')">
          <img src="assets/img/research/Oric_Publications/11.png" 
               alt="ORIC News Platinum Number" 
               class="publication-image"
               loading="lazy">
          <div class="publication-overlay">
            <i class="fas fa-book-open"></i>
          </div>
          <span class="publication-badge">75th Vol.</span>
        </div>
        <div class="publication-content">
          <p class="publication-title">Editor: ORIC News Platinum Number (75th Vol.)</p>
        </div>
      </div>

    </div>

  </div>
</main>

<!-- Lightbox Modal -->
<div id="lightboxModal" class="lightbox-modal" onclick="closeLightbox(event)">
  <span class="lightbox-close" onclick="closeLightbox(event)">&times;</span>
  <div class="lightbox-content">
    <img id="lightboxImage" class="lightbox-image" src="" alt="">
    <!-- <div id="lightboxTitle" class="lightbox-title"></div> -->
  </div>
</div>

<script>
  // Lightbox functionality
  function openLightbox(imageSrc, title) {
    const modal = document.getElementById('lightboxModal');
    const img = document.getElementById('lightboxImage');
    const titleDiv = document.getElementById('lightboxTitle');
    
    modal.classList.add('active');
    img.src = imageSrc;
    titleDiv.textContent = title;
    
    // Prevent body scroll when modal is open
    document.body.style.overflow = 'hidden';
  }

  function closeLightbox(event) {
    const modal = document.getElementById('lightboxModal');
    const img = document.getElementById('lightboxImage');
    
    // Only close if clicking on the modal background or close button
    if (event.target === modal || event.target.classList.contains('lightbox-close')) {
      modal.classList.remove('active');
      
      // Re-enable body scroll
      document.body.style.overflow = 'auto';
      
      // Clear image after animation
      setTimeout(() => {
        img.src = '';
      }, 300);
    }
  }

  // Close lightbox with Escape key
  document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
      const modal = document.getElementById('lightboxModal');
      if (modal.classList.contains('active')) {
        modal.classList.remove('active');
        document.body.style.overflow = 'auto';
        setTimeout(() => {
          document.getElementById('lightboxImage').src = '';
        }, 300);
      }
    }
  });

  // Prevent closing when clicking on the image itself
  document.getElementById('lightboxImage').addEventListener('click', function(event) {
    event.stopPropagation();
  });
</script>


</asp:Content>
