let currentSlide = 0;
const totalSlides = 3;
let autoSlideInterval;
let isTransitioning = false;

function updateCarousel(animate = true) {
    const track = document.querySelector('.carousel-track');
    const indicators = document.querySelectorAll('.carousel-indicator');
    
    if (!track) return;
    
    if (animate) {
        track.style.transition = 'transform 0.5s ease-in-out';
    } else {
        track.style.transition = 'none';
    }
    
    track.style.transform = `translateX(-${currentSlide * 100}%)`;
    
    // Update indicators
    indicators.forEach((indicator, index) => {
        if (index === currentSlide % totalSlides) {
            indicator.classList.add('bg-white');
            indicator.classList.remove('bg-white/50');
        } else {
            indicator.classList.remove('bg-white');
            indicator.classList.add('bg-white/50');
        }
    });
}

function nextSlide() {
    if (isTransitioning) return;
    isTransitioning = true;
    
    currentSlide++;
    updateCarousel(true);
    
    // If we're at the last slide, jump back to first
    if (currentSlide === totalSlides) {
        setTimeout(() => {
            currentSlide = 0;
            updateCarousel(false);
            isTransitioning = false;
        }, 500);
    } else {
        setTimeout(() => {
            isTransitioning = false;
        }, 500);
    }
    
    resetAutoSlide();
}

function prevSlide() {
    if (isTransitioning) return;
    isTransitioning = true;
    
    currentSlide--;
    
    if (currentSlide < 0) {
        currentSlide = totalSlides - 1;
    }
    
    updateCarousel(true);
    
    setTimeout(() => {
        isTransitioning = false;
    }, 500);
    
    resetAutoSlide();
}

function goToSlide(index) {
    if (isTransitioning) return;
    isTransitioning = true;
    
    currentSlide = index;
    updateCarousel(true);
    
    setTimeout(() => {
        isTransitioning = false;
    }, 500);
    
    resetAutoSlide();
}

function startAutoSlide() {
    autoSlideInterval = setInterval(nextSlide, 5000);
}

function resetAutoSlide() {
    clearInterval(autoSlideInterval);
    startAutoSlide();
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    const indicators = document.querySelectorAll('.carousel-indicator');
    
    indicators.forEach((indicator, index) => {
        indicator.addEventListener('click', () => goToSlide(index));
    });
    
    // Start auto-slide
    if (document.querySelector('.carousel-track')) {
        startAutoSlide();
    }
});
