<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Events Calendar - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-amber-600 to-yellow-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Events Calendar</h1>
            <p class="text-xl">Upcoming and Past Research Events</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <!-- Month Navigation -->
            <div class="flex justify-between items-center mb-8">
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">← Previous</button>
                <h2 class="text-2xl font-bold text-gray-900">March 2026</h2>
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">Next →</button>
            </div>
            
            <!-- Upcoming Events -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Upcoming Events</h3>
                
                <div class="space-y-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex flex-col md:flex-row gap-6">
                            <div class="bg-blue-600 text-white p-4 rounded text-center min-w-[100px]">
                                <div class="text-3xl font-bold">15</div>
                                <div class="text-sm">March</div>
                                <div class="text-xs">Tuesday</div>
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">Grant Writing Workshop</h4>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Workshop</span>
                                </div>
                                <p class="text-gray-700 mb-3">
                                    Three-day intensive workshop on preparing competitive research proposals for 
                                    national and international funding agencies. Expert speakers and practical sessions.
                                </p>
                                <div class="text-sm text-gray-600 space-y-1">
                                    <div>⏰ 9:00 AM - 5:00 PM</div>
                                    <div>📍 ORIC Conference Hall</div>
                                    <div>👤 Dr. Ahmed Khan, Dr. Sarah Wilson</div>
                                </div>
                                <div class="mt-4">
                                    <a href="#" class="btn-primary text-sm">Register Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="flex flex-col md:flex-row gap-6">
                            <div class="bg-green-600 text-white p-4 rounded text-center min-w-[100px]">
                                <div class="text-3xl font-bold">18</div>
                                <div class="text-sm">March</div>
                                <div class="text-xs">Friday</div>
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">Introduction to Patent Searching</h4>
                                    <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">TISC Training</span>
                                </div>
                                <p class="text-gray-700 mb-3">
                                    Hands-on training session on using patent databases and conducting effective 
                                    patent searches. Learn to access PATENTSCOPE, Espacenet, and other resources.
                                </p>
                                <div class="text-sm text-gray-600 space-y-1">
                                    <div>⏰ 2:00 PM - 5:00 PM</div>
                                    <div>📍 TISC Lab, ORIC Building</div>
                                    <div>👤 TISC Team</div>
                                </div>
                                <div class="mt-4">
                                    <a href="#" class="btn-primary text-sm">Register Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="flex flex-col md:flex-row gap-6">
                            <div class="bg-purple-600 text-white p-4 rounded text-center min-w-[100px]">
                                <div class="text-3xl font-bold">25</div>
                                <div class="text-sm">March</div>
                                <div class="text-xs">Tuesday</div>
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Artificial Intelligence in Healthcare - Keynote Lecture
                                    </h4>
                                    <span class="bg-purple-100 text-purple-800 text-xs font-semibold px-3 py-1 rounded-full">Seminar</span>
                                </div>
                                <p class="text-gray-700 mb-3">
                                    Distinguished lecture by Prof. Dr. James Chen from Stanford University on AI 
                                    applications in medical diagnostics and personalized treatment.
                                </p>
                                <div class="text-sm text-gray-600 space-y-1">
                                    <div>⏰ 2:00 PM - 4:00 PM</div>
                                    <div>📍 Main Auditorium</div>
                                    <div>👤 Prof. Dr. James Chen (Stanford University, USA)</div>
                                </div>
                                <div class="mt-4">
                                    <a href="#" class="btn-primary text-sm">Register Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="flex flex-col md:flex-row gap-6">
                            <div class="bg-orange-600 text-white p-4 rounded text-center min-w-[100px]">
                                <div class="text-3xl font-bold">28</div>
                                <div class="text-sm">March</div>
                                <div class="text-xs">Friday</div>
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">PhD Scholar Presentations</h4>
                                    <span class="bg-orange-100 text-orange-800 text-xs font-semibold px-3 py-1 rounded-full">Research Colloquium</span>
                                </div>
                                <p class="text-gray-700 mb-3">
                                    Monthly research colloquium where PhD scholars present their progress and 
                                    receive feedback from faculty panel. Open to all.
                                </p>
                                <div class="text-sm text-gray-600 space-y-1">
                                    <div>⏰ 2:00 PM - 5:00 PM</div>
                                    <div>📍 Seminar Room 201, ORIC</div>
                                    <div>👤 Faculty Review Panel</div>
                                </div>
                                <div class="mt-4">
                                    <span class="text-gray-600 text-sm">Open to all - No registration required</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Past Events -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Past Events</h3>
                
                <div class="space-y-4">
                    <div class="card bg-gray-50">
                        <div class="flex items-start justify-between">
                            <div class="flex-1">
                                <h4 class="font-bold text-gray-900 mb-1">Annual Research Symposium 2026</h4>
                                <p class="text-sm text-gray-600 mb-2">February 5-7, 2026 | Main Campus</p>
                                <p class="text-sm text-gray-700">
                                    Three-day symposium featuring 100+ research presentations, poster sessions, 
                                    and awards ceremony. Over 500 participants.
                                </p>
                            </div>
                            <a href="#" class="text-blue-600 text-sm hover:underline whitespace-nowrap ml-4">View Photos</a>
                        </div>
                    </div>
                    
                    <div class="card bg-gray-50">
                        <div class="flex items-start justify-between">
                            <div class="flex-1">
                                <h4 class="font-bold text-gray-900 mb-1">Research Ethics & Integrity Workshop</h4>
                                <p class="text-sm text-gray-600 mb-2">January 22-23, 2026 | Virtual</p>
                                <p class="text-sm text-gray-700">
                                    Interactive workshop on research ethics, plagiarism prevention, and 
                                    responsible conduct of research. 120 participants.
                                </p>
                            </div>
                            <a href="#" class="text-blue-600 text-sm hover:underline whitespace-nowrap ml-4">View Recording</a>
                        </div>
                    </div>
                    
                    <div class="card bg-gray-50">
                        <div class="flex items-start justify-between">
                            <div class="flex-1">
                                <h4 class="font-bold text-gray-900 mb-1">Statistical Analysis with SPSS</h4>
                                <p class="text-sm text-gray-600 mb-2">January 15-19, 2026 | Computer Lab</p>
                                <p class="text-sm text-gray-700">
                                    Five-day intensive training on statistical analysis using SPSS for research data. 
                                    Hands-on sessions and assignments.
                                </p>
                            </div>
                            <a href="#" class="text-blue-600 text-sm hover:underline whitespace-nowrap ml-4">View Materials</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Event Categories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Event Categories</h3>
                
                <div class="grid md:grid-cols-4 gap-4">
                    <div class="card text-center hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="text-3xl mb-2">📚</div>
                        <h4 class="font-bold text-gray-900">Workshops</h4>
                        <p class="text-sm text-gray-600">Skill development</p>
                    </div>
                    <div class="card text-center hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="text-3xl mb-2">🎤</div>
                        <h4 class="font-bold text-gray-900">Seminars</h4>
                        <p class="text-sm text-gray-600">Expert talks</p>
                    </div>
                    <div class="card text-center hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="text-3xl mb-2">🏆</div>
                        <h4 class="font-bold text-gray-900">Competitions</h4>
                        <p class="text-sm text-gray-600">Research contests</p>
                    </div>
                    <div class="card text-center hover:shadow-lg transition-shadow cursor-pointer">
                        <div class="text-3xl mb-2">🤝</div>
                        <h4 class="font-bold text-gray-900">Networking</h4>
                        <p class="text-sm text-gray-600">Meet & collaborate</p>
                    </div>
                </div>
            </div>
            
            <!-- Subscribe -->
            <div class="text-center bg-gradient-to-r from-amber-600 to-yellow-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Never Miss an Event</h3>
                <p class="text-xl mb-6">Subscribe to receive event notifications and reminders</p>
                <div class="flex max-w-md mx-auto gap-2">
                    <input type="email" placeholder="Enter your email" class="flex-1 px-4 py-3 rounded-lg text-gray-900" />
                    <button class="bg-white text-amber-600 px-6 py-3 rounded-lg font-bold hover:bg-gray-100">
                        Subscribe
                    </button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
