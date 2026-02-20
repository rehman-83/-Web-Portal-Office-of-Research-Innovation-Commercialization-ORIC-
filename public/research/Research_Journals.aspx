<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Journals - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    


<style>
  /* Carousel Styles */
  .carousel-container {
    position: relative;
    width: 100%;
    height: 600px;
    overflow: hidden;
    border-radius: 1rem;
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.15);
  }

  .carousel-slide {
    position: absolute;
    width: 100%;
    height: 100%;
    opacity: 0;
    transition: opacity 1s ease-in-out;
  }

  .carousel-slide.active {
    opacity: 1;
  }

  .carousel-slide img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    background-color: #f8f9fa;
  }

  /* Carousel Navigation Dots */
  .carousel-dots {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
    z-index: 10;
  }

  .carousel-dot {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background-color: rgba(255, 255, 255, 0.5);
    cursor: pointer;
    transition: all 0.3s ease;
    border: 2px solid rgba(255, 255, 255, 0.8);
  }

  .carousel-dot.active {
    background-color: #3674B5;
    transform: scale(1.2);
    border-color: white;
  }

  /* Carousel Navigation Arrows */
  .carousel-arrow {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(54, 116, 181, 0.8);
    color: white;
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
    transition: all 0.3s ease;
    z-index: 10;
  }

  .carousel-arrow:hover {
    background-color: rgba(54, 116, 181, 1);
    transform: translateY(-50%) scale(1.1);
  }

  .carousel-arrow.prev {
    left: 20px;
  }

  .carousel-arrow.next {
    right: 20px;
  }

  /* Fade In Animation */
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
    animation: fadeInUp 0.8s ease-out forwards;
  }

  /* Introduction Section Styles */
  .intro-image {
    width: 100%;
    height: auto;
    border-radius: 1rem;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    margin-bottom: 1.5rem;
  }

  /* Responsive Styles */
  @media (max-width: 768px) {
    .carousel-container {
      height: 400px;
    }

    .carousel-arrow {
      width: 40px;
      height: 40px;
      font-size: 1.2rem;
    }

    .carousel-arrow.prev {
      left: 10px;
    }

    .carousel-arrow.next {
      right: 10px;
    }

    .carousel-dots {
      bottom: 10px;
    }

    .carousel-dot {
      width: 10px;
      height: 10px;
    }
  }

  @media (max-width: 480px) {
    .carousel-container {
      height: 300px;
    }
  }

  /* Stats Card Styles */
  .stats-card {
    transition: all 0.3s ease;
  }

  .stats-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8 fade-in-up">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Research Publications and Citations</h1>
      <p class="text-gray-600">Promoting Excellence in Research Dissemination and Impact</p>
    </div>

    <!-- Introduction Section -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 mb-8 fade-in-up">
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
        <i class="fas fa-info-circle mr-2"></i>Introduction
      </h2>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 items-center mb-6">
        <!-- Image -->
        <div class="order-2 lg:order-1">
          <img src="assets/img/research/RPC.jpeg" 
               alt="Research Publications and Citations" 
               class="intro-image">
        </div>

        <!-- Text Content -->
        <div class="order-1 lg:order-2">
          <p class="text-gray-700 leading-relaxed text-justify mb-4">
            Research findings and outcomes are to be published locally and globally for having authentication and 
            appreciation/criticism (if any) after use by the posterity. Being a world as global village, information 
            cannot be restricted or confined to one institute, city or country.
          </p>

          <p class="text-gray-700 leading-relaxed text-justify mb-4">
            The comity of nations receive a variety of published information such as research articles, books, 
            monographs and scientific journals. The scientists use these cluster of information, coat them as 
            reference and comment on the fate of the article.
          </p>

          <p class="text-gray-700 leading-relaxed text-justify">
            ORIC makes every possible efforts to promote number of research publications and enhance citations, 
            even <strong>cash awards and certificates</strong> are awarded to best of the best performers.
          </p>
        </div>
      </div>

      <!-- Key Features -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mt-8">
        <div class="stats-card bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white">
          <div class="flex items-center justify-between mb-3">
            <i class="fas fa-book-open text-4xl opacity-80"></i>
          </div>
          <h3 class="text-lg font-semibold mb-2">Global Dissemination</h3>
          <p class="text-blue-100 text-sm">Publishing research findings locally and globally for authentication and appreciation</p>
        </div>

        <div class="stats-card bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white">
          <div class="flex items-center justify-between mb-3">
            <i class="fas fa-quote-right text-4xl opacity-80"></i>
          </div>
          <h3 class="text-lg font-semibold mb-2">Enhanced Citations</h3>
          <p class="text-green-100 text-sm">Promoting research visibility and increasing citation impact worldwide</p>
        </div>

        <div class="stats-card bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-xl shadow-lg text-white">
          <div class="flex items-center justify-between mb-3">
            <i class="fas fa-award text-4xl opacity-80"></i>
          </div>
          <h3 class="text-lg font-semibold mb-2">Recognition & Rewards</h3>
          <p class="text-purple-100 text-sm">Cash awards and certificates for outstanding research performers</p>
        </div>
      </div>
    </div>

    <!-- Research Publications Statistics Carousel -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 fade-in-up">
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
        <i class="fas fa-chart-line mr-2"></i>Research Publications Statistics
      </h2>

      <div class="carousel-container">
        <!-- Slide 1 -->
        <div class="carousel-slide active" data-slide="0">
          <img src="assets/img/research/Research Publications and Citations (1).PNG" 
               alt="Research Publications Statistics 1"
               loading="lazy">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-slide" data-slide="1">
          <img src="assets/img/research/Research Publications and Citations (2).PNG" 
               alt="Research Publications Statistics 2"
               loading="lazy">
        </div>

        <!-- Slide 3 -->
        <div class="carousel-slide" data-slide="2">
          <img src="assets/img/research/Research Publications and Citations (3).PNG" 
               alt="Research Publications Statistics 3"
               loading="lazy">
        </div>

        <!-- Navigation Arrows -->
        <button class="carousel-arrow prev" onclick="changeSlide(-1)">
          <i class="fas fa-chevron-left"></i>
        </button>
        <button class="carousel-arrow next" onclick="changeSlide(1)">
          <i class="fas fa-chevron-right"></i>
        </button>

        <!-- Navigation Dots -->
        <div class="carousel-dots">
          <span class="carousel-dot active" onclick="goToSlide(0)"></span>
          <span class="carousel-dot" onclick="goToSlide(1)"></span>
          <span class="carousel-dot" onclick="goToSlide(2)"></span>
        </div>
      </div>

      <!-- Additional Information -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
        <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500">
          <h4 class="font-semibold text-gray-800 mb-3 flex items-center">
            <i class="fas fa-bullseye mr-2 text-blue-600"></i>
            Our Mission
          </h4>
          <p class="text-gray-700 text-sm leading-relaxed">
            To promote and enhance research publications from UAF faculty and researchers, ensuring global visibility 
            and recognition through high-impact journals and citation networks.
          </p>
        </div>

        <div class="bg-gradient-to-r from-green-50 to-emerald-50 p-6 rounded-lg border-l-4 border-green-500">
          <h4 class="font-semibold text-gray-800 mb-3 flex items-center">
            <i class="fas fa-trophy mr-2 text-green-600"></i>
            Recognition Program
          </h4>
          <p class="text-gray-700 text-sm leading-relaxed">
            ORIC recognizes excellence in research through awards and certificates for faculty members who achieve 
            outstanding publication records and citation impacts.
          </p>
        </div>
      </div>
    </div>

    
  </div>
</main>

<script>
  // Carousel functionality
  let currentSlide = 0;
  const slides = document.querySelectorAll('.carousel-slide');
  const dots = document.querySelectorAll('.carousel-dot');
  const totalSlides = slides.length;
  let autoSlideInterval;

  function showSlide(index) {
    // Ensure index is within bounds
    if (index >= totalSlides) {
      currentSlide = 0;
    } else if (index < 0) {
      currentSlide = totalSlides - 1;
    } else {
      currentSlide = index;
    }

    // Update slides
    slides.forEach((slide, i) => {
      slide.classList.remove('active');
      if (i === currentSlide) {
        slide.classList.add('active');
      }
    });

    // Update dots
    dots.forEach((dot, i) => {
      dot.classList.remove('active');
      if (i === currentSlide) {
        dot.classList.add('active');
      }
    });
  }

  function changeSlide(direction) {
    showSlide(currentSlide + direction);
    resetAutoSlide();
  }

  function goToSlide(index) {
    showSlide(index);
    resetAutoSlide();
  }

  function autoSlide() {
    currentSlide++;
    showSlide(currentSlide);
  }

  function startAutoSlide() {
    autoSlideInterval = setInterval(autoSlide, 5000); // Change slide every 5 seconds
  }

  function resetAutoSlide() {
    clearInterval(autoSlideInterval);
    startAutoSlide();
  }

  // Initialize carousel
  document.addEventListener('DOMContentLoaded', function() {
    showSlide(0);
    startAutoSlide();

    // Pause auto-slide on hover
    const carouselContainer = document.querySelector('.carousel-container');
    carouselContainer.addEventListener('mouseenter', function() {
      clearInterval(autoSlideInterval);
    });

    carouselContainer.addEventListener('mouseleave', function() {
      startAutoSlide();
    });

    // Add keyboard navigation
    document.addEventListener('keydown', function(e) {
      if (e.key === 'ArrowLeft') {
        changeSlide(-1);
      } else if (e.key === 'ArrowRight') {
        changeSlide(1);
      }
    });
  });
</script>


</asp:Content>
