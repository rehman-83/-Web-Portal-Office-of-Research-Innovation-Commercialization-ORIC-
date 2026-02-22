<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Documentaries - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
/* Video Card Styles */
.video-card {
    background: white;
    border-radius: 16px;
    overflow: hidden;
    box-shadow: 0 4px 16px rgba(0,0,0,0.08);
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    border: 1px solid #e5e7eb;
}

.video-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 32px rgba(26,58,92,0.15);
    border-color: #c8102e;
}

.video-header {
    background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
    padding: 16px 20px;
    text-align: center;
}

.video-title {
    color: white;
    font-size: 16px;
    font-weight: 700;
    line-height: 1.4;
    margin: 0;
}

.video-wrapper {
    position: relative;
    width: 100%;
    padding-top: 56.25%; /* 16:9 aspect ratio */
    background: #000;
}

.video-wrapper iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
}

.video-badge {
    position: absolute;
    top: 12px;
    right: 12px;
    background: rgba(200,16,46,0.95);
    color: white;
    padding: 6px 12px;
    border-radius: 6px;
    font-size: 12px;
    font-weight: 600;
    z-index: 10;
    display: flex;
    align-items: center;
    gap: 4px;
}

/* Category Filter */
.filter-container {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
    margin-bottom: 32px;
    justify-content: center;
}

.filter-btn {
    padding: 10px 20px;
    border: 2px solid #e5e7eb;
    background: white;
    color: #6b7280;
    border-radius: 8px;
    font-weight: 600;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.2s;
}

.filter-btn:hover {
    border-color: #1a3a5c;
    color: #1a3a5c;
}

.filter-btn.active {
    background: #1a3a5c;
    color: white;
    border-color: #1a3a5c;
}

/* Stats */
.stats-container {
    background: white;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 2px 12px rgba(0,0,0,0.08);
    margin-bottom: 32px;
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    gap: 16px;
}

.stat-box {
    text-align: center;
}

.stat-number {
    font-size: 32px;
    font-weight: 800;
    color: #1a3a5c;
}

.stat-label {
    font-size: 14px;
    color: #6b7280;
    font-weight: 600;
    margin-top: 4px;
}

/* Loading Animation */
@keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.5; }
}

.loading {
    animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

/* Responsive */
@media (max-width: 640px) {
    .video-title {
        font-size: 14px;
    }
    
    .video-header {
        padding: 12px 16px;
    }
}
</style>

<!-- Page Header -->
<section class="relative bg-gradient-to-r from-[#1a3a5c] to-[#1e5799] py-16 sm:py-20">
    <div class="absolute inset-0 opacity-10" style="background-image: url('data:image/svg+xml,%3Csvg width=\'60\' height=\'60\' viewBox=\'0 0 60 60\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'none\' fill-rule=\'evenodd\'%3E%3Cg fill=\'%23ffffff\' fill-opacity=\'0.4\'%3E%3Cpath d=\'M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z\'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 relative z-10">
        <div class="text-center">
            <h1 class="text-3xl sm:text-4xl md:text-5xl font-extrabold text-white mb-3 sm:mb-4 leading-tight">
                Research Documentaries
            </h1>
            <p class="text-base sm:text-lg md:text-xl text-blue-100 max-w-2xl mx-auto">
                Explore UAF Technologies, Innovation & Research Through Video
            </p>
            <div class="w-20 h-1 bg-[#c8102e] mx-auto mt-5 sm:mt-6 rounded-full"></div>
        </div>
    </div>
</section>

<!-- Main Content -->
<section class="py-12 sm:py-16 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6">
        
        <!-- Stats -->
        <div class="stats-container">
            <div class="stat-box">
                <div class="stat-number" id="totalVideos">12</div>
                <div class="stat-label">Total Videos</div>
            </div>
            <div class="stat-box">
                <div class="stat-number">5</div>
                <div class="stat-label">Technologies</div>
            </div>
            <div class="stat-box">
                <div class="stat-number">2</div>
                <div class="stat-label">Centers</div>
            </div>
        </div>

        <!-- Category Filter -->
        <div class="filter-container">
            <button type="button" class="filter-btn active" data-category="all">All Videos</button>
            <button type="button" class="filter-btn" data-category="technology">UAF Technologies</button>
            <button type="button" class="filter-btn" data-category="center">ORIC Centers</button>
            <button type="button" class="filter-btn" data-category="project">Research Projects</button>
        </div>

        <!-- Documentaries Grid -->
        <div id="videosGrid" class="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8">
            <!-- Videos will be inserted here by JavaScript -->
        </div>

    </div>
</section>

<script>
(function() {
    // Documentaries Data
    const documentaries = [
        {
            title: "BURAKH - UAF Technology",
            url: "https://www.youtube.com/embed/SZSlMmtcHHs",
            category: "technology"
        },
        {
            title: "Solar Umbrella - UAF Technology",
            url: "https://www.youtube.com/embed/H2V7ENejQ0k",
            category: "technology"
        },
        {
            title: "Anaaji Bag & Drum - UAF Technology",
            url: "https://www.youtube.com/embed/sAPDMGuw7Ts",
            category: "technology"
        },
        {
            title: "Golden Nuggets - UAF Technology",
            url: "https://www.youtube.com/embed/GdusTGemFow",
            category: "technology"
        },
        {
            title: "Soil Moisture Sensor",
            url: "https://www.youtube.com/embed/N1gRqYtF8os",
            category: "technology"
        },
        {
            title: "Solar Cold Storage",
            url: "https://www.youtube.com/embed/gDKBQRITKQQ",
            category: "technology"
        },
        {
            title: "Solar Hybrid Food Dryer",
            url: "https://www.youtube.com/embed/qColP3KX2s4",
            category: "technology"
        },
        {
            title: "Office of Research, Innovation & Commercialization",
            url: "https://www.youtube-nocookie.com/embed/ejg7C8rAm9E?rel=0",
            category: "center"
        },
        {
            title: "Business Incubation Center",
            url: "https://www.youtube.com/embed/Tq95ofyrSaQ?rel=0",
            category: "center"
        },
        {
            title: "HEC-SIOP-040-17 - Dr. Muhammad Iftikhar",
            url: "https://www.youtube.com/embed/Qs8xlLunREI?rel=0",
            category: "project"
        },
        {
            title: "SIOP-039-2017 - Nadeem Akbar",
            url: "https://www.youtube.com/embed/W1yJkyy1nak?rel=0",
            category: "project"
        },
        {
            title: "Fiber from Banana's Plant",
            url: "https://www.youtube.com/embed/IpvBrMhCV9o",
            category: "technology"
        }
    ];
    
    let currentCategory = 'all';
    
    // Create video card HTML
    function createVideoCard(video, index) {
        const categoryLabel = {
            'technology': 'UAF Technology',
            'center': 'ORIC Center',
            'project': 'Research Project'
        };
        
        return `
            <div class="video-card" data-category="${video.category}">
                <div class="video-header">
                    <h3 class="video-title">${video.title}</h3>
                </div>
                <div class="video-wrapper">
                    <div class="video-badge">
                        <svg class="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M10 18a8 8 0 100-16 8 8 0 000 16zM9.555 7.168A1 1 0 008 8v4a1 1 0 001.555.832l3-2a1 1 0 000-1.664l-3-2z"/>
                        </svg>
                        ${categoryLabel[video.category]}
                    </div>
                    <iframe 
                        src="${video.url}" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                        allowfullscreen
                        loading="lazy"
                        title="${video.title}"
                    ></iframe>
                </div>
            </div>
        `;
    }
    
    // Render videos
    function renderVideos() {
        const grid = document.getElementById('videosGrid');
        let html = '';
        let count = 0;
        
        documentaries.forEach(function(video, index) {
            if (currentCategory === 'all' || video.category === currentCategory) {
                html += createVideoCard(video, index);
                count++;
            }
        });
        
        grid.innerHTML = html;
        
        // Add loading animation
        const cards = grid.querySelectorAll('.video-card');
        cards.forEach(function(card, index) {
            card.classList.add('loading');
            setTimeout(function() {
                card.classList.remove('loading');
            }, 100 * index);
        });
    }
    
    // Filter button click handler
    document.querySelectorAll('.filter-btn').forEach(function(btn) {
        btn.addEventListener('click', function() {
            document.querySelectorAll('.filter-btn').forEach(function(b) {
                b.classList.remove('active');
            });
            this.classList.add('active');
            currentCategory = this.getAttribute('data-category');
            renderVideos();
        });
    });
    
    // Initialize
    renderVideos();
    
})();
</script>

</asp:Content>
