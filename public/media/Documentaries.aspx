<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Documentaries - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-indigo-600 to-blue-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Research Documentaries</h1>
            <p class="text-xl">Showcasing Innovation Through Visual Storytelling</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Documentary Collection</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    Explore our collection of research documentaries that highlight groundbreaking projects, 
                    innovative solutions, and the inspiring stories behind our research community.
                </p>
            </div>
            
            <!-- Featured Documentary -->
            <div class="mb-12">
                <div class="card bg-gradient-to-r from-indigo-100 to-blue-100 border-l-4 border-indigo-600">
                    <div class="flex items-center gap-3 mb-4">
                        <span class="bg-indigo-600 text-white text-xs font-semibold px-3 py-1 rounded-full">Featured</span>
                        <span class="text-sm text-gray-600">Latest Release - February 2026</span>
                    </div>
                    <div class="grid md:grid-cols-2 gap-6">
                        <div class="bg-indigo-200 aspect-video rounded-lg flex items-center justify-center">
                            <div class="text-center text-indigo-700">
                                <div class="text-6xl mb-2">▶️</div>
                                <div class="text-sm">25:30 minutes</div>
                            </div>
                        </div>
                        <div>
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">
                                Innovation in Healthcare: AI-Powered Diagnostics
                            </h3>
                            <p class="text-gray-700 mb-4">
                                Follow Dr. Ahmed Khan's research team as they develop an AI-powered medical 
                                imaging system that's revolutionizing disease diagnosis. From laboratory 
                                experiments to clinical trials, witness the journey of innovation.
                            </p>
                            <div class="text-sm text-gray-600 mb-4">
                                <div>👤 Dr. Ahmed Khan & Team</div>
                                <div>🎬 Produced by ORIC Media</div>
                                <div>📊 2.5M views</div>
                            </div>
                            <button class="btn-primary">Watch Now</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Documentary Series -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Documentary Series</h3>
                
                <div class="space-y-6">
                    <!-- Research Impact Series -->
                    <div class="card border-l-4 border-blue-600">
                        <h4 class="text-xl font-bold text-blue-900 mb-4">Research Impact Series</h4>
                        <div class="grid md:grid-cols-3 gap-4">
                            <div class="bg-blue-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-blue-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Clean Water Solutions</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Low-cost water purification system bringing clean water to rural communities
                                </p>
                                <div class="text-xs text-gray-600">18:45 | 1.2M views</div>
                            </div>
                            
                            <div class="bg-blue-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-blue-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Sustainable Agriculture</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Smart farming techniques increasing crop yields while reducing environmental impact
                                </p>
                                <div class="text-xs text-gray-600">22:15 | 980K views</div>
                            </div>
                            
                            <div class="bg-blue-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-blue-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Renewable Energy</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Solar innovations making clean energy accessible and affordable
                                </p>
                                <div class="text-xs text-gray-600">20:30 | 850K views</div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Innovators Profile Series -->
                    <div class="card border-l-4 border-green-600">
                        <h4 class="text-xl font-bold text-green-900 mb-4">Innovators Profile Series</h4>
                        <div class="grid md:grid-cols-3 gap-4">
                            <div class="bg-green-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-green-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Dr. Nadia Iqbal</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Pioneer in biotechnology research with international recognition
                                </p>
                                <div class="text-xs text-gray-600">15:20 | 650K views</div>
                            </div>
                            
                            <div class="bg-green-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-green-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Dr. Muhammad Asif</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Engineering excellence in renewable energy systems
                                </p>
                                <div class="text-xs text-gray-600">17:40 | 720K views</div>
                            </div>
                            
                            <div class="bg-green-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-green-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Dr. Ayesha Siddiqui</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Leadership in management research and business innovation
                                </p>
                                <div class="text-xs text-gray-600">14:55 | 580K views</div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Behind the Scenes -->
                    <div class="card border-l-4 border-purple-600">
                        <h4 class="text-xl font-bold text-purple-900 mb-4">Behind the Scenes: Research Labs</h4>
                        <div class="grid md:grid-cols-3 gap-4">
                            <div class="bg-purple-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-purple-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Molecular Biology Lab</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Inside the cutting-edge facility where genetic research happens
                                </p>
                                <div class="text-xs text-gray-600">12:30 | 420K views</div>
                            </div>
                            
                            <div class="bg-purple-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-purple-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">AI & Robotics Lab</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Exploring the future of artificial intelligence and automation
                                </p>
                                <div class="text-xs text-gray-600">16:20 | 890K views</div>
                            </div>
                            
                            <div class="bg-purple-50 p-4 rounded cursor-pointer hover:shadow-md transition-shadow">
                                <div class="bg-purple-200 aspect-video rounded mb-3 flex items-center justify-center">
                                    <span class="text-3xl">▶️</span>
                                </div>
                                <h5 class="font-bold text-gray-900 mb-2">Materials Science Lab</h5>
                                <p class="text-sm text-gray-700 mb-2">
                                    Developing next-generation materials for various applications
                                </p>
                                <div class="text-xs text-gray-600">14:10 | 520K views</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Event Coverage -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Event Coverage</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="bg-orange-200 aspect-video rounded-lg mb-4 flex items-center justify-center">
                            <span class="text-5xl">▶️</span>
                        </div>
                        <h4 class="font-bold text-gray-900 mb-2">Annual Research Symposium 2026 Highlights</h4>
                        <p class="text-sm text-gray-700 mb-2">
                            Complete coverage of the three-day symposium featuring keynotes, presentations, and awards
                        </p>
                        <div class="text-xs text-gray-600">45:20 | 1.8M views</div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="bg-orange-200 aspect-video rounded-lg mb-4 flex items-center justify-center">
                            <span class="text-5xl">▶️</span>
                        </div>
                        <h4 class="font-bold text-gray-900 mb-2">International Conference 2025</h4>
                        <p class="text-sm text-gray-700 mb-2">
                            Faculty presentations and networking at the prestigious international conference
                        </p>
                        <div class="text-xs text-gray-600">32:45 | 1.1M views</div>
                    </div>
                </div>
            </div>
            
            <!-- YouTube Channel -->
            <div class="bg-red-50 border-l-4 border-red-600 p-8 mb-8">
                <div class="flex items-center gap-4 mb-4">
                    <div class="text-4xl">📺</div>
                    <div>
                        <h3 class="text-xl font-bold text-gray-900">ORIC YouTube Channel</h3>
                        <p class="text-gray-700">
                            Subscribe to our YouTube channel for regular updates, research insights, and educational content
                        </p>
                    </div>
                </div>
                <div class="flex items-center gap-6 text-gray-700">
                    <div>
                        <div class="text-2xl font-bold text-red-600">250+</div>
                        <div class="text-sm">Videos</div>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-red-600">50K+</div>
                        <div class="text-sm">Subscribers</div>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-red-600">2.5M+</div>
                        <div class="text-sm">Total Views</div>
                    </div>
                </div>
                <a href="#" class="mt-4 inline-block bg-red-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-red-700">
                    Subscribe Now
                </a>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-indigo-600 to-blue-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Share Your Research Story</h3>
                <p class="text-xl mb-6">
                    Have an impactful research project? We'd love to feature it in our documentary series
                </p>
                <a href="#" class="bg-white text-indigo-600 px-8 py-3 rounded-lg font-bold hover:bg-gray-100 inline-block">
                    Submit Research Story
                </a>
            </div>
        </div>
    </section>
</asp:Content>
