<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Seminars & Lectures - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-cyan-600 to-blue-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Seminars & Guest Lectures</h1>
            <p class="text-xl">Engaging Minds Through Knowledge Exchange</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Academic Seminars</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    ORIC organizes regular seminars, workshops, and guest lectures featuring renowned scholars, 
                    industry experts, and researchers from around the world. These events foster intellectual 
                    discourse and expose students and faculty to cutting-edge research.
                </p>
            </div>
            
            <!-- Upcoming Events -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Upcoming Events</h3>
                
                <div class="space-y-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Artificial Intelligence in Healthcare: Opportunities and Challenges
                                    </h4>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Keynote</span>
                                </div>
                                <p class="text-gray-600 mb-3">
                                    <strong>Speaker:</strong> Prof. Dr. James Chen | Stanford University, USA
                                </p>
                                <p class="text-gray-700 mb-3">
                                    Explore how AI and machine learning are revolutionizing medical diagnostics, 
                                    drug discovery, and personalized treatment. Discussion of ethical considerations 
                                    and future directions.
                                </p>
                                <div class="flex flex-wrap gap-4 text-sm">
                                    <div class="flex items-center text-gray-600">
                                        📅 <span class="ml-2">March 25, 2026 (Tuesday)</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        🕐 <span class="ml-2">2:00 PM - 4:00 PM</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        📍 <span class="ml-2">Main Auditorium</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="flex gap-3">
                            <a href="#" class="btn-primary text-sm">Register Now</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-sm">
                                Add to Calendar
                            </a>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Sustainable Energy Solutions for Developing Countries
                                    </h4>
                                    <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Workshop</span>
                                </div>
                                <p class="text-gray-600 mb-3">
                                    <strong>Speaker:</strong> Dr. Amina Malik | UN Environment Programme
                                </p>
                                <p class="text-gray-700 mb-3">
                                    Interactive workshop on renewable energy technologies, policy frameworks, 
                                    and community-based solutions. Includes hands-on session on solar system design.
                                </p>
                                <div class="flex flex-wrap gap-4 text-sm">
                                    <div class="flex items-center text-gray-600">
                                        📅 <span class="ml-2">April 8, 2026 (Wednesday)</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        🕐 <span class="ml-2">10:00 AM - 3:00 PM</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        📍 <span class="ml-2">Engineering Block</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="flex gap-3">
                            <a href="#" class="btn-primary text-sm">Register Now</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-sm">
                                View Details
                            </a>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Blockchain Technology and Financial Innovation
                                    </h4>
                                    <span class="bg-purple-100 text-purple-800 text-xs font-semibold px-3 py-1 rounded-full">Seminar</span>
                                </div>
                                <p class="text-gray-600 mb-3">
                                    <strong>Speaker:</strong> Mr. Tariq Ahmed | Fintech Industry Expert
                                </p>
                                <p class="text-gray-700 mb-3">
                                    Understand blockchain fundamentals, cryptocurrency markets, DeFi applications, 
                                    and implications for traditional banking and finance.
                                </p>
                                <div class="flex flex-wrap gap-4 text-sm">
                                    <div class="flex items-center text-gray-600">
                                        📅 <span class="ml-2">April 15, 2026 (Thursday)</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        🕐 <span class="ml-2">3:00 PM - 5:00 PM</span>
                                    </div>
                                    <div class="flex items-center text-gray-600">
                                        📍 <span class="ml-2">Business School Auditorium</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="flex gap-3">
                            <a href="#" class="btn-primary text-sm">Register Now</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-sm">
                                Speaker Bio
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Seminar Series -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Regular Seminar Series</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card bg-blue-50">
                        <h4 class="text-lg font-bold text-blue-900 mb-3">ORIC Research Colloquium</h4>
                        <p class="text-gray-700 mb-3">
                            Monthly forum where faculty present ongoing research to peers for feedback and 
                            collaboration opportunities.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Frequency:</strong> First Friday of each month<br/>
                            <strong>Time:</strong> 3:00 PM - 5:00 PM
                        </div>
                    </div>
                    
                    <div class="card bg-green-50">
                        <h4 class="text-lg font-bold text-green-900 mb-3">PhD Scholar Presentations</h4>
                        <p class="text-gray-700 mb-3">
                            Doctoral students present research progress, receive mentoring from faculty panel, 
                            and practice academic presentation skills.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Frequency:</strong> Bi-weekly<br/>
                            <strong>Time:</strong> 2:00 PM - 4:00 PM
                        </div>
                    </div>
                    
                    <div class="card bg-purple-50">
                        <h4 class="text-lg font-bold text-purple-900 mb-3">Industry Connect Series</h4>
                        <p class="text-gray-700 mb-3">
                            Industry leaders share insights on trends, technologies, and career opportunities. 
                            Networking session follows each talk.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Frequency:</strong> Monthly<br/>
                            <strong>Time:</strong> 4:00 PM - 6:00 PM
                        </div>
                    </div>
                    
                    <div class="card bg-orange-50">
                        <h4 class="text-lg font-bold text-orange-900 mb-3">Distinguished Lecture Series</h4>
                        <p class="text-gray-700 mb-3">
                            Internationally renowned scholars deliver lectures on breakthrough research and 
                            emerging paradigms across disciplines.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Frequency:</strong> Quarterly<br/>
                            <strong>Time:</strong> Special arrangements
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Past Events -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Recent Past Events</h3>
                <div class="space-y-4">
                    <div class="card border-l-4 border-gray-400">
                        <div class="grid md:grid-cols-4 gap-4">
                            <div class="text-gray-600">
                                <div class="font-bold">Feb 18, 2026</div>
                                <div class="text-sm">Main Auditorium</div>
                            </div>
                            <div class="md:col-span-3">
                                <h4 class="font-bold text-gray-900 mb-2">
                                    Climate Change and Agricultural Sustainability
                                </h4>
                                <p class="text-gray-700 text-sm mb-2">
                                    Dr. Maria Santos, FAO | 180 Attendees
                                </p>
                                <a href="#" class="text-blue-600 text-sm hover:underline">View Recording →</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-gray-400">
                        <div class="grid md:grid-cols-4 gap-4">
                            <div class="text-gray-600">
                                <div class="font-bold">Feb 5, 2026</div>
                                <div class="text-sm">CS Department</div>
                            </div>
                            <div class="md:col-span-3">
                                <h4 class="font-bold text-gray-900 mb-2">
                                    Quantum Computing: From Theory to Application
                                </h4>
                                <p class="text-gray-700 text-sm mb-2">
                                    Prof. David Lee, MIT | 150 Attendees
                                </p>
                                <a href="#" class="text-blue-600 text-sm hover:underline">View Slides →</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-gray-400">
                        <div class="grid md:grid-cols-4 gap-4">
                            <div class="text-gray-600">
                                <div class="font-bold">Jan 22, 2026</div>
                                <div class="text-sm">Virtual Event</div>
                            </div>
                            <div class="md:col-span-3">
                                <h4 class="font-bold text-gray-900 mb-2">
                                    Mental Health in Academia: Breaking the Silence
                                </h4>
                                <p class="text-gray-700 text-sm mb-2">
                                    Dr. Sarah Johnson, Clinical Psychologist | 220 Attendees
                                </p>
                                <a href="#" class="text-blue-600 text-sm hover:underline">View Resources →</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- For Organizers -->
            <div class="bg-yellow-50 border-l-4 border-yellow-500 p-6 mb-8">
                <h3 class="text-xl font-bold text-yellow-900 mb-3">Want to Organize a Seminar?</h3>
                <p class="text-gray-700 mb-4">
                    Departments and research groups can request ORIC support for organizing seminars and 
                    inviting guest speakers. We provide logistical support, funding, and promotional assistance.
                </p>
                <a href="#" class="btn-primary inline-block">Submit Event Request</a>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-cyan-600 to-blue-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Stay Updated</h3>
                <p class="text-xl mb-6 text-cyan-100">
                    Subscribe to receive notifications about upcoming seminars and lectures
                </p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="bg-white text-blue-600 px-8 py-3 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Subscribe to Newsletter
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-3 rounded-lg font-bold hover:bg-white hover:text-blue-600 transition inline-block">
                        View Full Calendar
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
