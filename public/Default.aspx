<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC - Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!-- ===================== STYLES ===================== -->
<style>
/* Ticker */
.ticker-wrap { background:#1a3a5c; color:#fff; overflow:hidden; white-space:nowrap; padding:8px 0; }
.ticker-label { display:inline-block; background:#c8102e; color:#fff; font-weight:700; padding:2px 18px; margin-right:18px; letter-spacing:1px; font-size:13px; vertical-align:middle; }
.ticker-content { display:inline-block; animation:tickerScroll 35s linear infinite; font-size:13.5px; vertical-align:middle; }
.ticker-content a { color:#fbbf24; text-decoration:none; margin:0 24px; }
.ticker-content a:hover { text-decoration:underline; }
@keyframes tickerScroll { 0%{transform:translateX(100vw)} 100%{transform:translateX(-100%)} }
.ticker-wrap:hover .ticker-content { animation-play-state:paused; }

/* Buttons */
.btn-primary { background:#c8102e; color:#fff; padding:11px 28px; border-radius:6px; font-weight:700; display:inline-block; transition:.25s; font-size:15px; }
.btn-primary:hover { background:#a00d24; color:#fff; }
.btn-outline { border:2px solid #1a3a5c; color:#1a3a5c; padding:9px 24px; border-radius:6px; font-weight:600; display:inline-block; transition:.25s; font-size:14px; }
.btn-outline:hover { background:#1a3a5c; color:#fff; }

/* Cards */
.oric-card { background:#fff; border-radius:14px; box-shadow:0 2px 16px rgba(26,58,92,.12); padding:28px 24px; transition:.25s; }
.oric-card:hover { box-shadow:0 6px 32px rgba(26,58,92,.18); transform:translateY(-3px); }

/* Tabs */
.tab-btn { padding:10px 22px; border-radius:6px 6px 0 0; font-weight:600; font-size:14px; cursor:pointer; border-bottom:3px solid transparent; transition:.2s; color:#5a6e82; }
.tab-btn.active { color:#1a3a5c; border-bottom:3px solid #c8102e; background:#fff; }
.tab-panel { display:none; }
.tab-panel.active { display:block; }

/* Section headings */
.sec-title { font-size:2rem; font-weight:800; color:#1a3a5c; margin-bottom:10px; }
.sec-subtitle { color:#5a6e82; font-size:1.05rem; }
.sec-divider { width:56px; height:4px; background:#c8102e; border-radius:2px; margin:12px auto 0; }

/* Stat card */
.stat-card { background:#fff; border-radius:14px; box-shadow:0 2px 16px rgba(26,58,92,.12); padding:28px 16px; text-align:center; transition:.25s; }
.stat-card:hover { box-shadow:0 6px 32px rgba(26,58,92,.2); transform:translateY(-4px); }
.stat-num { font-size:2.4rem; font-weight:800; color:#1a3a5c; line-height:1; }
.stat-label { font-size:.85rem; color:#5a6e82; font-weight:600; margin-top:6px; }

/* Carousel */
.hero-slide { min-width:100%; height:100%; position:relative; display:flex; align-items:center; justify-content:center; background-size:cover; background-position:center; }
</style>

<!-- Hero Section with Carousel -->
 <!-- ===================== HERO CAROUSEL ===================== -->
<section class="relative h-[88vh] overflow-hidden">
    <div id="carouselTrack" class="flex h-full transition-transform duration-700 ease-in-out">

         <!-- Slide 1 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/b01.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-black/75 to-black/40"></div>
            <div class="relative z-10 text-center text-white px-6 max-w-3xl">
                <p class="uppercase tracking-widest text-sm font-semibold mb-3 text-yellow-300">University of Agriculture, Faisalabad</p>
                <h1 class="text-5xl md:text-7xl font-extrabold mb-5 leading-tight drop-shadow-lg">Welcome to ORIC</h1>
                <p class="text-lg md:text-xl mb-8 text-gray-200">Office of Research, Innovation &amp; Commercialization</p>
                <a href="about/Director.aspx" class="btn-primary mr-3">Learn More</a>
                <a href="Calls.aspx" class="btn-outline border-white text-white hover:bg-white hover:text-gray-900">Open Calls</a>
            </div>
        </div>

        <!-- Slide 2 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/bo2.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-[#1a3a5c]/85 to-black/50"></div>
            <div class="relative z-10 text-center text-white px-6 max-w-3xl">
                <p class="uppercase tracking-widest text-sm font-semibold mb-3 text-yellow-300">Research Excellence</p>
                <h1 class="text-5xl md:text-7xl font-extrabold mb-5 leading-tight drop-shadow-lg">Innovation &amp; Research</h1>
                <p class="text-lg md:text-xl mb-8 text-gray-200">Driving Excellence in Academic Research</p>
                <a href="research/Funding_Agencies.aspx" class="btn-primary mr-3">Explore Research</a>
                <a href="research/Services.aspx" class="btn-outline border-white text-white hover:bg-white hover:text-gray-900">Our Services</a>
            </div>
        </div>

        <!-- Slide 3 -->
        <div class="min-w-full h-full relative flex items-center justify-center bg-cover bg-center"
             style="background-image:url('assets/img/bo3.jpg')">
            <div class="absolute inset-0 bg-gradient-to-r from-[#7c2d12]/85 to-black/50"></div>
            <div class="relative z-10 text-center text-white px-6 max-w-3xl">
                <p class="uppercase tracking-widest text-sm font-semibold mb-3 text-yellow-300">Technology Transfer</p>
                <h1 class="text-5xl md:text-7xl font-extrabold mb-5 leading-tight drop-shadow-lg">Commercialization</h1>
                <p class="text-lg md:text-xl mb-8 text-gray-200">Transforming Ideas into Real-World Impact</p>
                <a href="commercialization/Technologies.aspx" class="btn-primary mr-3">View Technologies</a>
                <a href="BIC.aspx" class="btn-outline border-white text-white hover:bg-white hover:text-gray-900">Innovation Hub</a>
            </div>
        </div>
    </div>

    <!-- Prev / Next arrows -->
    <button onclick="changeSlide(-1)"
            class="absolute left-4 top-1/2 -translate-y-1/2 bg-white/20 hover:bg-white/40 text-white rounded-full w-11 h-11 flex items-center justify-center transition z-20">
        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M15 19l-7-7 7-7"/></svg>
    </button>
    <button onclick="changeSlide(1)"
            class="absolute right-4 top-1/2 -translate-y-1/2 bg-white/20 hover:bg-white/40 text-white rounded-full w-11 h-11 flex items-center justify-center transition z-20">
        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M9 5l7 7-7 7"/></svg>
    </button>

    <!-- Indicators -->
    <div class="absolute bottom-6 left-1/2 -translate-x-1/2 flex space-x-3 z-20">
        <button class="indicator w-3 h-3 rounded-full bg-white transition" onclick="goToSlide(0)"></button>
        <button class="indicator w-3 h-3 rounded-full bg-white/50 transition" onclick="goToSlide(1)"></button>
        <button class="indicator w-3 h-3 rounded-full bg-white/50 transition" onclick="goToSlide(2)"></button>
    </div>

    <!-- Slide counter -->
    <div class="absolute bottom-6 right-6 text-white/70 text-sm font-semibold z-20">
        <span id="slideCounter">1</span> / 3
    </div>
</section>

<script>
(function(){
    let currentSlide = 0;
    const total = 3;
    const track = document.getElementById('carouselTrack');
    const indicators = document.querySelectorAll('.indicator');
    const counter = document.getElementById('slideCounter');

    function updateCarousel() {
        track.style.transform = 'translateX(-' + (currentSlide * 100) + '%)';
        indicators.forEach(function(d, i) {
            d.className = 'indicator w-3 h-3 rounded-full transition ' + (i === currentSlide ? 'bg-white' : 'bg-white/50');
        });
        if (counter) counter.textContent = currentSlide + 1;
    }

    window.goToSlide = function(i) { currentSlide = i; updateCarousel(); };
    window.changeSlide = function(dir) { currentSlide = (currentSlide + dir + total) % total; updateCarousel(); };

    setInterval(function(){ currentSlide = (currentSlide + 1) % total; updateCarousel(); }, 5500);
})();
</script>

<!-- ===================== ANNOUNCEMENTS TICKER ===================== -->
<div class="ticker-wrap">
    <span class="ticker-label"><i class="fas fa-bullhorn mr-1"></i> ANNOUNCEMENTS</span>
    <span class="ticker-content">
        <a href="Calls.aspx">&#128313; Call for Research Proposals 2026 — Applications Now Open</a>
        <a href="research/Funding_Agencies.aspx">&#128313; HEC Funded Research Projects — Apply Before March 31, 2026</a>
        <a href="media/Events.aspx">&#128313; Annual Innovation &amp; Entrepreneurship Expo — February 28, 2026</a>
        <a href="Hi-Tech/Analytical_Facilities.aspx">&#128313; Hi-Tech Lab: New Analytical Facilities Available for Researchers</a>
        <a href="outreach/Internships.aspx">&#128313; ORIC Summer Internship Program 2026 — Applications Open</a>
        <a href="media/News.aspx">&#128313; ORIC Newsletter Vol. 12 — Now Available for Download</a>
        <a href="commercialization/Technologies.aspx">&#128313; New Technologies Ready for Commercialization — Explore Now</a>
    </span>
</div>

<!-- ===================== WELCOME MESSAGE ===================== -->
<section class="py-16 bg-white">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-10">
            <h2 class="sec-title">Welcome Message</h2>
            <div class="sec-divider mx-auto"></div>
            <p class="sec-subtitle mt-4">Office of Research, Innovation &amp; Commercialization — University of Agriculture, Faisalabad</p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-5 gap-10 items-start">
            <!-- Image column -->
            <div class="lg:col-span-2 flex justify-center">
                <img src="assets/img/about/ORIC-about.jpg"
                     alt="ORIC UAF"
                     onerror="this.src='https://placehold.co/480x360/1a3a5c/fff?text=ORIC+UAF'"
                     class="rounded-2xl shadow-xl w-full max-w-sm object-cover" />
            </div>

            <!-- Text column with tabs -->
            <div class="lg:col-span-3">
                <!-- Tab navigation -->
                <div class="flex border-b border-gray-200 mb-6 flex-wrap gap-1">
                    <button class="tab-btn active" onclick="switchTab(event,'tab-about')">About ORIC</button>
                    <button class="tab-btn" onclick="switchTab(event,'tab-vision')">Vision</button>
                    <button class="tab-btn" onclick="switchTab(event,'tab-mission')">Mission</button>
                    <button class="tab-btn" onclick="switchTab(event,'tab-objectives')">Objectives</button>
                </div>

                <!-- About Tab -->
                <div id="tab-about" class="tab-panel active text-gray-700 space-y-4 text-[15px] leading-relaxed text-justify">
                    <p>The Higher Education Commission (HEC) has given a new face to the Directorate of Research as <strong>Office of Research, Innovation &amp; Commercialization (ORIC)</strong> in January, 2011 to elevate the universities as community builders and promote knowledge based economy. The ORIC is a focal office of the university, which works for managing and expanding the research programs and linking them with industry and civil society by translating research outcomes into products and services. The ORIC also ensures that quality of research should reflect the highest international educational and research standards matching with the world's best universities.</p>
                    <p>The ORIC manages university rankings and harnesses opportunities for hunting and diversifying research and bringing research to public benefit. The office facilitates and engages with the postgraduate students and faculty for project proposal write-ups. Budgetary planning. Preparation of technical progress and financial reports, internal and external monitoring, scholarly publications and patent registration.</p>
                    <p>The ORIC is also involved in outreach activities through technology display at various Expos and relevant national forums. The Hi-Tech lab under ORIC provides diagnostic facilities to the researchers and the civil society.</p>
                </div>

                <!-- Vision Tab -->
                <div id="tab-vision" class="tab-panel text-gray-700 text-[15px] leading-relaxed">
                    <div class="flex items-start gap-4 mb-5">
                        <div class="w-12 h-12 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0">
                            <i class="fas fa-eye text-white text-lg"></i>
                        </div>
                        <div>
                            <h3 class="text-xl font-bold text-[#1a3a5c] mb-2">Vision Statement</h3>
                            <p class="text-base text-gray-700 leading-relaxed">
                                To enable UAF to act as a <strong>creative hub of learning</strong> that inspires to explore new avenues of research, disseminate knowledge and foster creativity, innovation and entrepreneurship.
                            </p>
                        </div>
                    </div>
                    <div class="bg-[#f4f7fb] border-l-4 border-[#c8102e] rounded-r-xl p-5 mt-4 text-gray-600 italic">
                        "Empowering researchers, fostering innovation, and translating knowledge into impact for a better Pakistan."
                    </div>
                </div>

                <!-- Mission Tab -->
                <div id="tab-mission" class="tab-panel text-gray-700 text-[15px] leading-relaxed">
                    <div class="flex items-start gap-4 mb-5">
                        <div class="w-12 h-12 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0">
                            <i class="fas fa-bullseye text-white text-lg"></i>
                        </div>
                        <div>
                            <h3 class="text-xl font-bold text-[#1a3a5c] mb-2">Mission Statement</h3>
                            <p class="text-base text-gray-700 leading-relaxed">
                                To <strong>develop, expand and spearhead technological advancement</strong> in agriculture, promote skills and ensure transparency in research by achieving excellence in teaching, research, outreach (national/international), academia-industry linkages and promoting an entrepreneurial ecosystem.
                            </p>
                        </div>
                    </div>
                    <div class="bg-[#f4f7fb] border-l-4 border-[#1a3a5c] rounded-r-xl p-5 mt-4 text-gray-600 italic">
                        "Building bridges between academia, industry and society for sustainable agricultural development."
                    </div>
                </div>

                <!-- Objectives Tab -->
                <div id="tab-objectives" class="tab-panel text-gray-700 text-[15px] leading-relaxed">
                    <h3 class="text-xl font-bold text-[#1a3a5c] mb-4">Strategic Objectives</h3>
                    <ul class="space-y-3">
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Promote a vibrant, innovative and entrepreneurial environment for conducting quality research with an aim to grow knowledge economy.</span></li>
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Strengthen academia-industry linkages to formulate collaborative ventures with the corporate community for mutual benefits.</span></li>
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Encourage collaborations with local industry and international universities for joint research, internships and faculty-student exchanges.</span></li>
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Develop strong and long-term bonds with research funding agencies to support R&amp;D, innovation, outreach, commercialization and policy making.</span></li>
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Manage university ranking and opportunities for hunting diversified research grants and ensure a conducive research environment.</span></li>
                        <li class="flex gap-3 items-start"><span class="mt-1 w-5 h-5 rounded-full bg-[#c8102e] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span><span>Ensure transparency in the research system of the university.</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
function switchTab(e, id) {
    document.querySelectorAll('.tab-panel').forEach(function(p){ p.classList.remove('active'); });
    document.querySelectorAll('.tab-btn').forEach(function(b){ b.classList.remove('active'); });
    document.getElementById(id).classList.add('active');
    e.currentTarget.classList.add('active');
}
</script>

<!-- ===================== STATISTICS / NUMBERS ===================== -->
<section class="py-16 bg-[#1a3a5c] relative overflow-hidden">
    <div class="absolute inset-0 opacity-10" style="background-image:url('data:image/svg+xml,%3Csvg width=\'60\' height=\'60\' viewBox=\'0 0 60 60\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'none\' fill-rule=\'evenodd\'%3E%3Cg fill=\'%23ffffff\' fill-opacity=\'0.4\'%3E%3Cpath d=\'M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z\'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E')"></div>
    <div class="max-w-7xl mx-auto px-6 relative z-10">
        <div class="text-center mb-12">
            <h2 class="text-3xl md:text-4xl font-extrabold text-white mb-3">Our Impact in Numbers</h2>
            <p class="text-blue-200 text-lg">Driving excellence and innovation at UAF</p>
            <div class="w-14 h-1 bg-[#c8102e] mx-auto mt-4 rounded"></div>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
            <div class="stat-card">
                <div class="stat-num"><span class="counter" data-target="500">0</span>+</div>
                <div class="stat-label">Research Projects</div>
                <div class="mt-3 text-[#c8102e]"><i class="fas fa-flask text-xl"></i></div>
            </div>
            <div class="stat-card">
                <div class="stat-num"><span class="counter" data-target="1200">0</span>+</div>
                <div class="stat-label">Publications</div>
                <div class="mt-3 text-[#c8102e]"><i class="fas fa-book-open text-xl"></i></div>
            </div>
            <div class="stat-card">
                <div class="stat-num"><span class="counter" data-target="150">0</span>+</div>
                <div class="stat-label">Industry Partners</div>
                <div class="mt-3 text-[#c8102e]"><i class="fas fa-handshake text-xl"></i></div>
            </div>
            <div class="stat-card">
                <div class="stat-num"><span class="counter" data-target="27">0</span>+</div>
                <div class="stat-label">Patents Registered</div>
                <div class="mt-3 text-[#c8102e]"><i class="fas fa-certificate text-xl"></i></div>
            </div>
        </div>
    </div>
</section>

<script>
(function(){
    var obs = new IntersectionObserver(function(entries){
        entries.forEach(function(entry){
            if(entry.isIntersecting && !entry.target.dataset.counted){
                entry.target.dataset.counted = '1';
                var target = parseInt(entry.target.getAttribute('data-target'));
                var duration = 1800;
                var step = target / (duration / 16);
                var current = 0;
                var timer = setInterval(function(){
                    current += step;
                    if(current >= target){ entry.target.textContent = target; clearInterval(timer); }
                    else { entry.target.textContent = Math.floor(current); }
                }, 16);
            }
        });
    }, {threshold:0.3});
    document.querySelectorAll('.counter').forEach(function(el){ obs.observe(el); });
})();
</script>

<!-- ===================== DIRECTOR MESSAGE ===================== -->
<section class="py-16 bg-white">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-10">
            <h2 class="sec-title">Message from the Director ORIC</h2>
            <div class="sec-divider mx-auto"></div>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-5 gap-10 items-start">
            <!-- Message text -->
            <div class="lg:col-span-3 order-2 lg:order-1">
                <div class="bg-[#f4f7fb] rounded-2xl p-8 relative">
                    <span class="absolute top-6 left-6 text-[#c8102e] opacity-20 text-8xl leading-none font-serif">&ldquo;</span>
                    <div class="relative z-10 text-gray-700 space-y-4 text-[15px] leading-relaxed text-justify">
                        <p>The Office of Research, Innovation and Commercialization (ORIC) plays a pivotal role in shaping the research ecosystem of the University of Agriculture, Faisalabad. As Director ORIC, my focus is to reposition ORIC from a facilitation office into a strategic, institute-like hub that drives research excellence, innovation, and commercialization across the university.</p>
                        <p>UAF hosts strong disciplinary depth across agriculture, biotechnology, climate sciences, food systems, and emerging digital technologies. ORIC's mandate is to integrate these strengths through coordinated research planning, competitive funding, robust governance and compliance, intellectual property management, and meaningful engagement with industry and international partners.</p>
                        <p>Our priority is to support faculty and researchers through transparent systems, standardized processes, and a single-window approach enabling ideas to translate into funded projects, impactful publications, protected intellectual property, and market-relevant solutions.</p>
                    </div>
                </div>
                <div class="mt-6 flex gap-3">
                    <a href="about/Director.aspx" class="btn-primary">Full Message</a>
                    <a href="about/Staff.aspx" class="btn-outline">Meet Our Team</a>
                </div>
            </div>
            <!-- Photo -->
            <div class="lg:col-span-2 order-1 lg:order-2 flex justify-center">
                <div class="text-center">
                    <div class="relative inline-block">
                        <div class="absolute inset-0 bg-[#1a3a5c] rounded-2xl translate-x-3 translate-y-3"></div>
                        <img src="https://web.uaf.edu.pk/UploadFiles/StaffPic/a7130ec9-6f9e-45e9-809e-764dc1b6e814.png"
                             alt="Prof. Dr. Sultan Habibullah Khan"
                             class="relative w-52 h-60 rounded-2xl shadow-xl object-cover" />
                    </div>
                    <div class="mt-5">
                        <h3 class="text-lg font-bold text-[#1a3a5c]">Prof. Dr. Sultan Habibullah Khan</h3>
                        <p class="text-[#c8102e] font-semibold text-sm">Director ORIC</p>
                        <p class="text-gray-500 text-sm">University of Agriculture, Faisalabad</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===================== ORGANOGRAM & ACTIVITIES ===================== -->
<section class="py-16 bg-[#f4f7fb]">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-12">
            <h2 class="sec-title">ORIC Organizational Structure</h2>
            <div class="sec-divider mx-auto"></div>
            <p class="sec-subtitle mt-4 max-w-3xl mx-auto">ORIC operates under the leadership of the Vice-Chancellor and Steering Committee to promote research excellence, innovation, and industry collaboration.</p>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
                <img src="assets/img/about/ORIC.Activities.jpg"
                     alt="ORIC Organogram"
                     class="rounded-2xl shadow-xl hover:scale-[1.02] transition duration-500 w-full" />
            </div>
            <div>
                <h3 class="text-xl font-bold text-[#1a3a5c] mb-4">Leadership &amp; Management</h3>
                <p class="text-gray-600 leading-relaxed mb-4">ORIC is headed by the Director ORIC, working under the ORIC Steering Committee. It includes key managerial positions such as Research Management, Innovation &amp; Commercialization, University Ranking, Outreach &amp; Internship Monitoring, and Accounts.</p>
                <p class="text-gray-600 leading-relaxed mb-6">This structured framework ensures proper coordination between academia, industry, and regulatory bodies while maintaining financial and operational transparency.</p>
                <a href="about/Organogram.aspx" class="btn-primary">View Full Organogram</a>
            </div>
        </div>
    </div>
</section>

<!-- ===================== ACTIVITIES SECTION ===================== -->
<section class="py-16 bg-white">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-12">
            <h2 class="sec-title">ORIC Activities</h2>
            <div class="sec-divider mx-auto"></div>
            <p class="sec-subtitle mt-4 max-w-3xl mx-auto">ORIC performs a wide range of strategic functions to enhance research productivity, commercialization, and university ranking performance.</p>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div class="order-2 lg:order-1">
                <h3 class="text-xl font-bold text-[#1a3a5c] mb-5">Core Functional Areas</h3>
                <ul class="space-y-3 text-gray-700">
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Research &amp; Grant Management</li>
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Technology Transfer &amp; Commercialization</li>
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Academia-Industry Linkages</li>
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Publications &amp; University Rankings</li>
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Business Incubation &amp; Student Startups</li>
                    <li class="flex items-center gap-3"><span class="w-7 h-7 rounded-full bg-[#1a3a5c] flex items-center justify-center flex-shrink-0"><i class="fas fa-check text-white text-xs"></i></span>Capacity Building &amp; Diagnostic Facilities</li>
                </ul>
                <div class="mt-6">
                    <a href="about/Activities.aspx" class="btn-primary">View All Activities</a>
                </div>
            </div>
            <div class="order-1 lg:order-2">
                <img src="assets/img/about/Milestone-Achieved-Updated 04-12-2025.jpeg"
                     alt="ORIC Activities"
                     class="rounded-2xl shadow-xl hover:scale-[1.02] transition duration-500 w-full" />
            </div>
        </div>
    </div>
</section>

<!-- ===================== MILESTONES ===================== -->
<section class="py-16 bg-[#1a3a5c] text-white">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-12">
            <h2 class="text-3xl md:text-4xl font-extrabold text-white mb-3">Milestones Achieved</h2>
            <div class="w-14 h-1 bg-[#c8102e] mx-auto rounded"></div>
            <p class="mt-4 text-blue-200 max-w-3xl mx-auto">ORIC has achieved remarkable progress in research funding, patent registration, project completion, and international collaborations.</p>
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
                <img src="assets/img/about/Organogram-Updated 14-02-2022.jpg"
                     alt="Milestones Achieved"
                     class="rounded-2xl shadow-2xl w-full hover:scale-[1.02] transition duration-500" />
            </div>
            <div>
                <h3 class="text-2xl font-bold mb-5">Performance Highlights</h3>
                <div class="grid grid-cols-2 gap-4">
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">132</div><div class="text-sm text-blue-200 mt-1">Ongoing National Projects</div></div>
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">39</div><div class="text-sm text-blue-200 mt-1">International Projects</div></div>
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">90</div><div class="text-sm text-blue-200 mt-1">Completed Projects</div></div>
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">27</div><div class="text-sm text-blue-200 mt-1">Patents Registered</div></div>
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">26</div><div class="text-sm text-blue-200 mt-1">Newly Launched Projects</div></div>
                    <div class="bg-white/10 rounded-xl p-4 text-center"><div class="text-3xl font-extrabold text-yellow-300">11</div><div class="text-sm text-blue-200 mt-1">Varieties Approved</div></div>
                </div>
                <div class="mt-6">
                    <a href="about/Milestones.aspx" class="btn-primary">View All Milestones</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===================== SERVICES GRID ===================== -->
<section class="py-16 bg-[#f4f7fb]">
    <div class="max-w-7xl mx-auto px-6">
        <div class="text-center mb-12">
            <h2 class="sec-title">Our Services</h2>
            <div class="sec-divider mx-auto"></div>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#e8f0fa] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-microscope text-[#1a3a5c] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">Research Support</h3>
                <p class="text-gray-600 text-sm mb-4">Comprehensive support for research projects, grant writing, funding, and ethical approvals.</p>
                <a href="research/Services.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#fde8e8] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-lightbulb text-[#c8102e] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">Innovation Hub</h3>
                <p class="text-gray-600 text-sm mb-4">Fostering innovative ideas and entrepreneurial mindset among researchers and students.</p>
                <a href="BIC.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#e8f0fa] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-industry text-[#1a3a5c] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">Commercialization</h3>
                <p class="text-gray-600 text-sm mb-4">Transforming research into marketable products, patents, and technology licensing.</p>
                <a href="commercialization/Technologies.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#fde8e8] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-vials text-[#c8102e] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">Hi-Tech Labs</h3>
                <p class="text-gray-600 text-sm mb-4">State-of-the-art diagnostic and analytical facilities for researchers and civil society.</p>
                <a href="Hi-Tech/Analytical_Facilities.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#e8f0fa] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-users text-[#1a3a5c] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">Outreach &amp; Internships</h3>
                <p class="text-gray-600 text-sm mb-4">Connecting students, academia, and industry through outreach events and internship programs.</p>
                <a href="outreach/Outreach.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
            <div class="oric-card text-center">
                <div class="w-16 h-16 bg-[#fde8e8] rounded-2xl flex items-center justify-center mx-auto mb-5">
                    <i class="fas fa-chart-line text-[#c8102e] text-2xl"></i>
                </div>
                <h3 class="text-lg font-bold text-[#1a3a5c] mb-2">University Rankings</h3>
                <p class="text-gray-600 text-sm mb-4">Managing and improving UAF's national and international ranking through strategic initiatives.</p>
                <a href="about/Activities.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Learn More →</a>
            </div>
        </div>
    </div>
</section>

<!-- ===================== LATEST NEWS ===================== -->
<section class="py-16 bg-white">
    <div class="max-w-7xl mx-auto px-6">
        <div class="flex items-center justify-between mb-10">
            <div>
                <h2 class="sec-title">Latest News &amp; Updates</h2>
                <div class="sec-divider mt-2"></div>
            </div>
            <a href="media/News.aspx" class="btn-outline hidden md:inline-block">View All News</a>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="oric-card p-0 overflow-hidden">
                <div class="h-48 bg-[#1a3a5c] flex items-center justify-center">
                    <i class="fas fa-file-alt text-white/30 text-6xl"></i>
                </div>
                <div class="p-5">
                    <span class="inline-block bg-[#fde8e8] text-[#c8102e] text-xs font-bold px-3 py-1 rounded-full mb-3">Research</span>
                    <p class="text-xs text-gray-400 mb-2">February 15, 2026</p>
                    <h3 class="text-base font-bold text-[#1a3a5c] mb-2">New Research Grants Available</h3>
                    <p class="text-gray-600 text-sm mb-4">Applications are now open for the 2026 research grant cycle. Deadline March 31, 2026.</p>
                    <a href="Calls.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Read More →</a>
                </div>
            </div>
            <div class="oric-card p-0 overflow-hidden">
                <div class="h-48 bg-[#c8102e] flex items-center justify-center">
                    <i class="fas fa-calendar-check text-white/30 text-6xl"></i>
                </div>
                <div class="p-5">
                    <span class="inline-block bg-[#e8f0fa] text-[#1a3a5c] text-xs font-bold px-3 py-1 rounded-full mb-3">Event</span>
                    <p class="text-xs text-gray-400 mb-2">February 28, 2026</p>
                    <h3 class="text-base font-bold text-[#1a3a5c] mb-2">Annual Innovation &amp; Entrepreneurship Expo</h3>
                    <p class="text-gray-600 text-sm mb-4">ORIC invites innovators, startups, and industry partners to the flagship Innovation Expo 2026.</p>
                    <a href="media/Events.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Read More →</a>
                </div>
            </div>
            <div class="oric-card p-0 overflow-hidden">
                <div class="h-48 bg-gray-600 flex items-center justify-center">
                    <i class="fas fa-newspaper text-white/30 text-6xl"></i>
                </div>
                <div class="p-5">
                    <span class="inline-block bg-[#fde8e8] text-[#c8102e] text-xs font-bold px-3 py-1 rounded-full mb-3">Technology</span>
                    <p class="text-xs text-gray-400 mb-2">February 10, 2026</p>
                    <h3 class="text-base font-bold text-[#1a3a5c] mb-2">New Technology Successfully Commercialized</h3>
                    <p class="text-gray-600 text-sm mb-4">ORIC successfully commercialized a groundbreaking agricultural biotechnology this month.</p>
                    <a href="media/News.aspx" class="text-[#c8102e] font-semibold hover:underline text-sm">Read More →</a>
                </div>
            </div>
        </div>
        <div class="text-center mt-8 md:hidden">
            <a href="media/News.aspx" class="btn-outline">View All News</a>
        </div>
    </div>
</section>
</asp:Content>