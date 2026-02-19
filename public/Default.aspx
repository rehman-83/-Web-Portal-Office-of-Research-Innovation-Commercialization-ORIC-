<%@ Page Language="C#" MasterPageFile="./_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC - Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section with Carousel -->
    <section class="relative bg-gradient-to-r from-blue-900 to-blue-700 text-white">
        <div class="carousel-container relative overflow-hidden h-96">
            <div class="carousel-track flex transition-transform duration-500">
                <!-- Slide 1 -->
                <div class="carousel-slide min-w-full h-96 flex items-center justify-center bg-blue-900">
                    <div class="text-center px-4">
                        <h2 class="text-5xl font-bold mb-4">Welcome to ORIC</h2>
                        <p class="text-xl mb-8">Office of Research, Innovation & Commercialization</p>
                        <a href="about/Director.aspx" class="btn-primary">Learn More</a>
                    </div>
                </div>
                
                <!-- Slide 2 -->
                <div class="carousel-slide min-w-full h-96 flex items-center justify-center bg-blue-800">
                    <div class="text-center px-4">
                        <h2 class="text-5xl font-bold mb-4">Innovation & Research</h2>
                        <p class="text-xl mb-8">Driving Excellence in Academic Research</p>
                        <a href="research/Funding_Agencies.aspx" class="btn-primary">Explore Research</a>
                    </div>
                </div>
                
                <!-- Slide 3 -->
                <div class="carousel-slide min-w-full h-96 flex items-center justify-center bg-blue-700">
                    <div class="text-center px-4">
                        <h2 class="text-5xl font-bold mb-4">Commercialization</h2>
                        <p class="text-xl mb-8">Transforming Ideas into Impact</p>
                        <a href="commercialization/Technologies.aspx" class="btn-primary">View Technologies</a>
                    </div>
                </div>
            </div>
            
            <!-- Carousel Indicators -->
            <div class="absolute bottom-4 left-1/2 transform -translate-x-1/2 flex space-x-2">
                <button class="carousel-indicator w-3 h-3 rounded-full bg-white" data-slide="0"></button>
                <button class="carousel-indicator w-3 h-3 rounded-full bg-white/50" data-slide="1"></button>
                <button class="carousel-indicator w-3 h-3 rounded-full bg-white/50" data-slide="2"></button>
            </div>
        </div>
    </section>
    
    <!-- Quick Stats -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div class="text-center">
                    <div class="text-5xl font-bold text-blue-600 mb-2">150+</div>
                    <p class="text-gray-600">Research Projects</p>
                </div>
                <div class="text-center">
                    <div class="text-5xl font-bold text-blue-600 mb-2">50+</div>
                    <p class="text-gray-600">Publications</p>
                </div>
                <div class="text-center">
                    <div class="text-5xl font-bold text-blue-600 mb-2">25+</div>
                    <p class="text-gray-600">Collaborations</p>
                </div>
                <div class="text-center">
                    <div class="text-5xl font-bold text-blue-600 mb-2">10+</div>
                    <p class="text-gray-600">Technologies</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- About Section -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-4">
            <div class="max-w-4xl mx-auto text-center">
                <h2 class="text-4xl font-bold text-gray-900 mb-6">About ORIC</h2>
                <p class="text-lg text-gray-700 mb-8">
                    The Office of Research, Innovation & Commercialization (ORIC) serves as the central hub 
                    for promoting and facilitating research excellence, fostering innovation, and enabling 
                    the commercialization of research outcomes. We support faculty and students in their 
                    pursuit of groundbreaking research and help transform innovative ideas into tangible 
                    societal and economic benefits.
                </p>
                <a href="about/Director.aspx" class="btn-primary">Read More</a>
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
    
    <!-- CTA Section -->
    <section class="py-16 bg-blue-900 text-white">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-4xl font-bold mb-6">Ready to Start Your Research Journey?</h2>
            <p class="text-xl mb-8">Get in touch with us to learn more about our services and opportunities.</p>
            <a href="contact/Process_Form.aspx" class="bg-white text-blue-900 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors">Contact Us</a>
        </div>
    </section>
</asp:Content>
