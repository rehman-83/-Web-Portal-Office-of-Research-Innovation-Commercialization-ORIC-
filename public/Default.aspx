<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC - Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section with Carousel -->


<script>
    // ==========================================
    // HERO CAROUSEL FUNCTIONALITY
    // ==========================================
    let heroCurrentIndex = 0;
    const heroTotalSlides = 3;
    let heroAutoplayInterval;

    function updateHeroCarousel() {
        const track = document.querySelector('#heroCarousel .carousel-track');
        const indicators = document.querySelectorAll('.hero-indicator');

        if (track) {
            track.style.transform = `translateX(-${heroCurrentIndex * 100}%)`;
        }

        indicators.forEach((indicator, index) => {
            if (index === heroCurrentIndex) {
                indicator.classList.add('bg-white');
                indicator.classList.remove('bg-white/50');
            } else {
                indicator.classList.remove('bg-white');
                indicator.classList.add('bg-white/50');
            }
        });
    }

    function nextHeroSlide() {
        heroCurrentIndex = (heroCurrentIndex + 1) % heroTotalSlides;
        updateHeroCarousel();
        resetHeroAutoplay();
    }

    function previousHeroSlide() {
        heroCurrentIndex = (heroCurrentIndex - 1 + heroTotalSlides) % heroTotalSlides;
        updateHeroCarousel();
        resetHeroAutoplay();
    }

    function goToHeroSlide(index) {
        heroCurrentIndex = index;
        updateHeroCarousel();
        resetHeroAutoplay();
    }

    function startHeroAutoplay() {
        heroAutoplayInterval = setInterval(nextHeroSlide, 5000);
    }

    function resetHeroAutoplay() {
        clearInterval(heroAutoplayInterval);
        startHeroAutoplay();
    }

    // ==========================================
    // ANIMATED COUNTERS
    // ==========================================
    function animateCounter(element, target, duration = 2000) {
        const start = 0;
        const increment = target / (duration / 16);
        let current = start;

        const timer = setInterval(() => {
            current += increment;
            if (current >= target) {
                element.textContent = target;
                clearInterval(timer);
            } else {
                element.textContent = Math.floor(current);
            }
        }, 16);
    }

    // ==========================================
    // INTERSECTION OBSERVER FOR ANIMATIONS
    // ==========================================
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const fadeObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    // Counter animation observer
    const counterObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting && !entry.target.classList.contains('counted')) {
                const target = parseInt(entry.target.getAttribute('data-target'));
                animateCounter(entry.target, target);
                entry.target.classList.add('counted');
            }
        });
    }, observerOptions);

    // ==========================================
    // SCROLL REVEAL ANIMATIONS
    // ==========================================
    function initScrollAnimations() {
        // Fade in up elements
        const fadeElements = document.querySelectorAll('.fade-in-up');
        fadeElements.forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'opacity 0.8s ease-out, transform 0.8s ease-out';
            fadeObserver.observe(el);
        });

        // Counter elements
        const counters = document.querySelectorAll('.counter');
        counters.forEach(counter => {
            counterObserver.observe(counter);
        });
    }

    // ==========================================
    // SMOOTH SCROLL FOR ANCHOR LINKS
    // ==========================================
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            const href = this.getAttribute('href');
            if (href !== '#' && href !== '#!') {
                e.preventDefault();
                const target = document.querySelector(href);
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            }
        });
    });

    // ==========================================
    // HERO CONTENT FADE IN
    // ==========================================
    function initHeroContent() {
        const heroContent = document.getElementById('heroContent');
        if (heroContent) {
            setTimeout(() => {
                heroContent.style.opacity = '1';
                heroContent.style.transform = 'translateY(0)';
            }, 300);
        }
    }

    // ==========================================
    // INITIALIZE ON PAGE LOAD
    // ==========================================
    document.addEventListener('DOMContentLoaded', function () {
        // Initialize hero carousel
        updateHeroCarousel();
        startHeroAutoplay();
        initHeroContent();

        // Initialize scroll animations
        initScrollAnimations();

        // Add parallax effect to hero section
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const heroCarousel = document.getElementById('heroCarousel');
            if (heroCarousel && scrolled < window.innerHeight) {
                heroCarousel.style.transform = `translateY(${scrolled * 0.5}px)`;
            }
        });

        // Pause hero carousel on hover
        const heroSection = document.querySelector('#heroCarousel');
        if (heroSection) {
            heroSection.addEventListener('mouseenter', () => {
                clearInterval(heroAutoplayInterval);
            });

            heroSection.addEventListener('mouseleave', () => {
                startHeroAutoplay();
            });
        }
    });

    // ==========================================
    // ADD LOADING ANIMATION
    // ==========================================
    window.addEventListener('load', () => {
        document.body.style.opacity = '0';
        setTimeout(() => {
            document.body.style.transition = 'opacity 0.5s ease-in';
            document.body.style.opacity = '1';
        }, 100);
    });

    // ==========================================
    // LIGHTBOX FUNCTIONALITY
    // ==========================================
    const galleryImages = [
        'assets/img/gallery/event1.jpg',
        'assets/img/gallery/lab1.jpg',
        'assets/img/gallery/seminar1.jpg',
        'assets/img/gallery/workshop1.jpg',
        'assets/img/gallery/research1.jpg',
        'assets/img/gallery/field1.jpg',
        'assets/img/gallery/award1.jpg',
        'assets/img/gallery/team1.jpg'
    ];

    let currentImageIndex = 0;

    function openLightbox(index) {
        currentImageIndex = index;
        const lightbox = document.getElementById('lightbox');
        const lightboxImage = document.getElementById('lightboxImage');
        lightboxImage.src = galleryImages[currentImageIndex];
        lightbox.classList.remove('hidden');
        lightbox.classList.add('flex');
        document.body.style.overflow = 'hidden';
    }

    function closeLightbox() {
        const lightbox = document.getElementById('lightbox');
        lightbox.classList.add('hidden');
        lightbox.classList.remove('flex');
        document.body.style.overflow = 'auto';
    }

    function nextImage() {
        currentImageIndex = (currentImageIndex + 1) % galleryImages.length;
        document.getElementById('lightboxImage').src = galleryImages[currentImageIndex];
    }

    function previousImage() {
        currentImageIndex = (currentImageIndex - 1 + galleryImages.length) % galleryImages.length;
        document.getElementById('lightboxImage').src = galleryImages[currentImageIndex];
    }

    // Keyboard navigation for lightbox
    document.addEventListener('keydown', (e) => {
        const lightbox = document.getElementById('lightbox');
        if (!lightbox.classList.contains('hidden')) {
            if (e.key === 'Escape') closeLightbox();
            if (e.key === 'ArrowRight') nextImage();
            if (e.key === 'ArrowLeft') previousImage();
        }
    });
</script>



     <style>
.btn-primary {
    background:#f97316;
    color:white;
    padding:12px 24px;
    border-radius:8px;
    font-weight:600;
    transition:0.3s;
}
.btn-primary:hover {
    background:#ea580c;
}
</style>
<section class="relative h-[85vh] overflow-hidden">

    <!-- Slides Wrapper -->
    <div id="carouselTrack" class="flex h-full transition-transform duration-700 ease-in-out">

        <!-- Slide 1 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/b01.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-black/70 to-black/40"></div>

            <div class="relative z-10 text-center px-6 max-w-3xl">
                <h2 class="text-4xl md:text-6xl font-bold mb-4 leading-tight">
                    Welcome to ORIC
                </h2>
                <p class="text-lg md:text-xl mb-8 text-gray-200">
                    Office of Research, Innovation & Commercialization
                </p>
                <a href="about/Director.aspx" class="btn-primary">Learn More</a>
            </div>
        </div>

        <!-- Slide 2 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/bo2.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-blue-900/80 to-black/50"></div>

            <div class="relative z-10 text-center px-6 max-w-3xl">
                <h2 class="text-4xl md:text-6xl font-bold mb-4">
                    Innovation & Research
                </h2>
                <p class="text-lg md:text-xl mb-8 text-gray-200">
                    Driving Excellence in Academic Research
                </p>
                <a href="research/Funding_Agencies.aspx" class="btn-primary">Explore Research</a>
            </div>
        </div>

        <!-- Slide 3 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/bo3.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-orange-700/80 to-black/50"></div>

            <div class="relative z-10 text-center px-6 max-w-3xl">
                <h2 class="text-4xl md:text-6xl font-bold mb-4">
                    Commercialization
                </h2>
                <p class="text-lg md:text-xl mb-8 text-gray-200">
                    Transforming Ideas into Impact
                </p>
                <a href="commercialization/Technologies.aspx" class="btn-primary">View Technologies</a>
            </div>
        </div>

    </div>

    <!-- Indicators -->
    <div class="absolute bottom-6 left-1/2 -translate-x-1/2 flex space-x-3">
        <button class="indicator w-3 h-3 rounded-full bg-white" onclick="goToSlide(0)"></button>
        <button class="indicator w-3 h-3 rounded-full bg-white/50" onclick="goToSlide(1)"></button>
        <button class="indicator w-3 h-3 rounded-full bg-white/50" onclick="goToSlide(2)"></button>
    </div>

</section>
<script>
let currentSlide = 0;
const track = document.getElementById('carouselTrack');
const indicators = document.querySelectorAll('.indicator');
const totalSlides = 3;

function updateCarousel() {
    track.style.transform = `translateX(-${currentSlide * 100}%)`;

    indicators.forEach((dot, index) => {
        dot.classList.remove('bg-white');
        dot.classList.add('bg-white/50');
        if (index === currentSlide) {
            dot.classList.remove('bg-white/50');
            dot.classList.add('bg-white');
        }
    });
}

function goToSlide(index) {
    currentSlide = index;
    updateCarousel();
}

function autoSlide() {
    currentSlide = (currentSlide + 1) % totalSlides;
    updateCarousel();
}

setInterval(autoSlide, 5000); // Change every 5 seconds
</script>
    
    <!-- Quick Stats -->
   <!-- Statistics Section -->
<section class="py-16 bg-gradient-to-br from-[#1a4d7c] via-[#3674B5] to-[#578FCA] relative overflow-hidden">
    <!-- Decorative Elements -->
    <div class="absolute top-0 left-0 w-72 h-72 bg-white/5 rounded-full blur-3xl"></div>
    <div class="absolute bottom-0 right-0 w-96 h-96 bg-white/5 rounded-full blur-3xl"></div>

    <div class="container mx-auto px-4 relative z-10">
        <div class="text-center mb-12 fade-in-up">
            <h2 class="text-3xl md:text-4xl font-bold text-white mb-3">Our Impact in Numbers</h2>
            <p class="text-blue-100 text-lg">Driving excellence and innovation at UAF</p>
        </div>

        <div class="stats-grid-mobile grid grid-cols-2 md:grid-cols-4 gap-4 sm:gap-6 md:gap-8">
            <!-- Stat 1 -->
            <div class="text-center fade-in-up delay-100">
                <div
                    class="bg-white/10 backdrop-blur-md border border-white/20 rounded-xl sm:rounded-2xl p-4 sm:p-6 md:p-8 hover:bg-white/15 transition-all duration-300 hover:scale-105">
                    <div class="text-3xl sm:text-4xl md:text-5xl font-bold text-white mb-1 sm:mb-2">
                        <span class="counter" data-target="500">0</span>+
                    </div>
                    <div class="text-blue-100 font-semibold text-xs sm:text-sm md:text-base">Research Projects</div>
                </div>
            </div>

            <!-- Stat 2 -->
            <div class="text-center fade-in-up delay-200">
                <div
                    class="bg-white/10 backdrop-blur-md border border-white/20 rounded-xl sm:rounded-2xl p-4 sm:p-6 md:p-8 hover:bg-white/15 transition-all duration-300 hover:scale-105">
                    <div class="text-3xl sm:text-4xl md:text-5xl font-bold text-white mb-1 sm:mb-2">
                        <span class="counter" data-target="1200">0</span>+
                    </div>
                    <div class="text-blue-100 font-semibold text-xs sm:text-sm md:text-base">Publications</div>
                </div>
            </div>

            <!-- Stat 3 -->
            <div class="text-center fade-in-up delay-300">
                <div
                    class="bg-white/10 backdrop-blur-md border border-white/20 rounded-xl sm:rounded-2xl p-4 sm:p-6 md:p-8 hover:bg-white/15 transition-all duration-300 hover:scale-105">
                    <div class="text-3xl sm:text-4xl md:text-5xl font-bold text-white mb-1 sm:mb-2">
                        <span class="counter" data-target="150">0</span>+
                    </div>
                    <div class="text-blue-100 font-semibold text-xs sm:text-sm md:text-base">Industry Partners</div>
                </div>
            </div>

            <!-- Stat 4 -->
            <div class="text-center fade-in-up delay-400">
                <div
                    class="bg-white/10 backdrop-blur-md border border-white/20 rounded-xl sm:rounded-2xl p-4 sm:p-6 md:p-8 hover:bg-white/15 transition-all duration-300 hover:scale-105">
                    <div class="text-3xl sm:text-4xl md:text-5xl font-bold text-white mb-1 sm:mb-2">
                        <span class="counter" data-target="50">0</span>+
                    </div>
                    <div class="text-blue-100 font-semibold text-xs sm:text-sm md:text-base">Patents & Technologies
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    
    <!-- About Section -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-4">
            <div class="max-w-5xl mx-auto">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6 text-center">About ORIC</h2>
                <div class="text-base md:text-lg text-gray-700 space-y-4 text-justify">
                    <p>
                        The Higher Education Commission (HEC) has given a new face to the Directorate of Research as Office of Research, Innovation & Commercialization (ORIC) in January, 2011 to elevate the universities as community builders and promote knowledge based economy. The ORIC is a focal office of the university, which works for managing and expanding the research programs and linking them with industry and civil society by translating research outcomes into products and services. The ORIC also ensures that quality of research should reflect the highest international educational and research standards matching with the world's best universities.
                    </p>
                    <p>
                        The ORIC manages university rankings and harnesses opportunities for hunting and diversifying research and bringing research to public benefit. The office facilitates and engages with the postgraduate students and faculty for project proposal write-ups. Budgetary planning. Preparation of technical progress and financial reports, internal and external monitoring, scholarly publications and patent registration.
                    </p>
                    <p>
                        The ORIC is also involved in outreach activities through technology display at various Expos and relevant national forums. The Hi-Tech lab under ORIC provides diagnostic facilities to the researchers and the civil society.
                    </p>
                </div>
                <div class="text-center mt-8">
                    <a href="about/Director.aspx" class="btn-primary">Read More</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Director Message Section -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="max-w-5xl mx-auto">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-8 text-center">Message from the Director ORIC</h2>
                <div class="flex flex-col md:flex-row gap-8 items-start">
                    <div class="w-full md:w-1/3 flex justify-center">
                        <div class="text-center">
                            <img src="https://web.uaf.edu.pk/UploadFiles/StaffPic/a7130ec9-6f9e-45e9-809e-764dc1b6e814.png" 
                                 alt="Prof. Dr. Sultan Habibullah Khan" 
                                 class="w-48 h-48 md:w-56 md:h-56 rounded-lg shadow-lg object-cover mx-auto mb-4" />
                            <h3 class="text-xl font-bold text-gray-900">Prof. Dr. Sultan Habibullah Khan</h3>
                            <p class="text-gray-600 font-semibold">Director ORIC</p>
                            <p class="text-gray-500 text-sm">University of Agriculture, Faisalabad</p>
                        </div>
                    </div>
                    <div class="w-full md:w-2/3">
                        <div class="text-base md:text-lg text-gray-700 space-y-4 text-justify">
                            <p>
                                The Office of Research, Innovation and Commercialization (ORIC) plays a pivotal role in shaping the research ecosystem of the University of Agriculture, Faisalabad. As Director ORIC, my focus is to reposition ORIC from a facilitation office into a strategic, institute-like hub that drives research excellence, innovation, and commercialization across the university.
                            </p>
                            <p>
                                UAF hosts strong disciplinary depth across agriculture, biotechnology, climate sciences, food systems, and emerging digital technologies. ORIC's mandate is to integrate these strengths through coordinated research planning, competitive funding, robust governance and compliance, intellectual property management, and meaningful engagement with industry and international partners.
                            </p>
                            <p>
                                Our priority is to support faculty and researchers through transparent systems, standardized processes, and a single-window approach enabling ideas to translate into funded projects, impactful publications, protected intellectual property, and market-relevant solutions. Through this transformation, ORIC aims to strengthen UAF's national standing, global visibility, and contribution to sustainable development.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- ORIC Activities Section -->
    <!-- ORIC ORGANOGRAM SECTION -->
<section class="bg-gray-50 py-16">
    <div class="max-w-7xl mx-auto px-6">
        
        <div class="text-center mb-12">
            <h2 class="text-4xl font-bold text-gray-800">ORIC Organizational Structure</h2>
            <p class="mt-4 text-gray-600 max-w-3xl mx-auto">
                The Office of Research, Innovation and Commercialization (ORIC) operates under the leadership of the Vice-Chancellor 
                and Steering Committee to promote research excellence, innovation, and industry collaboration. 
                The structure ensures effective governance and smooth management of research and commercialization activities.
            </p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            
            <div>
                <img src="assets/img/about/ORIC.Activities.jpg" 
                     alt="ORIC Organogram"
                     class="rounded-2xl shadow-xl hover:scale-105 transition duration-500 w-full" />
            </div>

            <div>
                <h3 class="text-2xl font-semibold text-gray-800 mb-4">Leadership & Management</h3>
                <p class="text-gray-600 leading-relaxed mb-4">
                    ORIC is headed by the Director ORIC, working under the ORIC Steering Committee. 
                    It includes key managerial positions such as Research Management, Innovation & Commercialization, 
                    University Ranking, Outreach & Internship Monitoring, and Accounts.
                </p>
                <p class="text-gray-600 leading-relaxed">
                    This structured framework ensures proper coordination between academia, industry, 
                    and regulatory bodies while maintaining financial and operational transparency.
                </p>
            </div>

        </div>
    </div>
</section>
    
    <!-- ORIC Milestones Section -->
<!-- ORIC ACTIVITIES SECTION -->
<section class="bg-white py-16">
    <div class="max-w-7xl mx-auto px-6">

        <div class="text-center mb-12">
            <h2 class="text-4xl font-bold text-gray-800">ORIC Activities</h2>
            <p class="mt-4 text-gray-600 max-w-3xl mx-auto">
                ORIC performs a wide range of strategic functions to enhance research productivity, 
                commercialization, and university ranking performance.
            </p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            
            <div class="order-2 lg:order-1">
                <h3 class="text-2xl font-semibold text-gray-800 mb-4">Core Functional Areas</h3>
                <ul class="space-y-3 text-gray-600">
                    <li>✔ Research & Grant Management</li>
                    <li>✔ Technology Transfer & Commercialization</li>
                    <li>✔ Academia-Industry Linkages</li>
                    <li>✔ Publications & University Rankings</li>
                    <li>✔ Business Incubation & Student Startups</li>
                    <li>✔ Capacity Building & Diagnostic Facilities</li>
                </ul>
                <p class="mt-4 text-gray-600 leading-relaxed">
                    Through these activities, ORIC strengthens innovation ecosystems and promotes 
                    sustainable academic growth aligned with national and international standards.
                </p>
            </div>

            <div class="order-1 lg:order-2">
                <img src="assets/img/about/Milestone-Achieved-Updated 04-12-2025.jpeg" 
                     alt="ORIC Activities"
                     class="rounded-2xl shadow-xl hover:scale-105 transition duration-500 w-full" />
            </div>

        </div>

    </div>
</section>

    
    <!-- Organogram Section -->
    <!-- MILESTONE SECTION -->
<section class="bg-gradient-to-r from-orange-500 to-red-500 py-16 text-white">
    <div class="max-w-7xl mx-auto px-6">

        <div class="text-center mb-12">
            <h2 class="text-4xl font-bold">Milestones Achieved</h2>
            <p class="mt-4 max-w-3xl mx-auto text-orange-100">
                ORIC has achieved remarkable progress in research funding, patent registration, 
                project completion, and international collaborations.
            </p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            
            <div>
                <img src="assets/img/about/Organogram-Updated 14-02-2022.jpg" 
                     alt="Milestones Achieved"
                     class="rounded-2xl shadow-2xl w-full hover:scale-105 transition duration-500" />
            </div>

            <div>
                <h3 class="text-2xl font-semibold mb-4">Performance Highlights</h3>
                <ul class="space-y-3 text-orange-100">
                    <li>✔ 132 Ongoing Research Projects (National)</li>
                    <li>✔ 39 International Collaborative Projects</li>
                    <li>✔ 26 Newly Launched Projects</li>
                    <li>✔ 90 Completed Research Projects</li>
                    <li>✔ 27 Patents Registered</li>
                    <li>✔ 11 Varieties Approved</li>
                </ul>

                <p class="mt-6 text-orange-100 leading-relaxed">
                    These milestones demonstrate ORIC’s commitment to excellence, innovation, 
                    and impactful research that contributes to national development and global competitiveness.
                </p>
            </div>

        </div>

    </div>
</section>
    
    
    <!-- Services Grid -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center text-gray-900 mb-12">Our Services</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Research Support -->
                <div class="card">
                    <div class="text-blue-600 mb-4">
                        <svg class="w-12 h-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold mb-2">Research Support</h3>
                    <p class="text-gray-600 mb-4">Comprehensive support for research projects, funding, and ethical approvals.</p>
                    <a href="research/Services.aspx" class="text-blue-600 hover:underline">Learn More →</a>
                </div>
                
                <!-- Innovation -->
                <div class="card">
                    <div class="text-blue-600 mb-4">
                        <svg class="w-12 h-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold mb-2">Innovation Hub</h3>
                    <p class="text-gray-600 mb-4">Fostering innovative ideas and entrepreneurial mindset among researchers.</p>
                    <a href="BIC.aspx" class="text-blue-600 hover:underline">Learn More →</a>
                </div>
                
                <!-- Commercialization -->
                <div class="card">
                    <div class="text-blue-600 mb-4">
                        <svg class="w-12 h-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-bold mb-2">Commercialization</h3>
                    <p class="text-gray-600 mb-4">Transforming research into marketable products and services.</p>
                    <a href="commercialization/Technologies.aspx" class="text-blue-600 hover:underline">Learn More →</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Latest News -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center text-gray-900 mb-12">Latest News & Updates</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="card">
                    <img src="assets/img/gallery/placeholder1.jpg" alt="News" class="w-full h-48 object-cover rounded-lg mb-4" onerror="this.style.display='none'" />
                    <p class="text-sm text-gray-500 mb-2">February 15, 2026</p>
                    <h3 class="text-xl font-bold mb-2">New Research Grants Available</h3>
                    <p class="text-gray-600 mb-4">Applications are now open for the 2026 research grant cycle.</p>
                    <a href="Calls.aspx" class="text-blue-600 hover:underline">Read More →</a>
                </div>
                
                <div class="card">
                    <img src="assets/img/gallery/placeholder2.jpg" alt="News" class="w-full h-48 object-cover rounded-lg mb-4" onerror="this.style.display='none'" />
                    <p class="text-sm text-gray-500 mb-2">February 10, 2026</p>
                    <h3 class="text-xl font-bold mb-2">Innovation Workshop Success</h3>
                    <p class="text-gray-600 mb-4">Over 100 researchers attended the recent innovation workshop.</p>
                    <a href="media/Events.aspx" class="text-blue-600 hover:underline">Read More →</a>
                </div>
                
                <div class="card">
                    <img src="assets/img/gallery/placeholder3.jpg" alt="News" class="w-full h-48 object-cover rounded-lg mb-4" onerror="this.style.display='none'" />
                    <p class="text-sm text-gray-500 mb-2">February 5, 2026</p>
                    <h3 class="text-xl font-bold mb-2">New Technology Launched</h3>
                    <p class="text-gray-600 mb-4">ORIC successfully commercialized a groundbreaking technology.</p>
                    <a href="media/News.aspx" class="text-blue-600 hover:underline">Read More →</a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
