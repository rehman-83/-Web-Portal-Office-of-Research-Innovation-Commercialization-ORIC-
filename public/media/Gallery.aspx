<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Photo Gallery - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-pink-600 to-purple-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Photo Gallery</h1>
            <p class="text-xl">Capturing Moments of Innovation & Excellence</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <!-- Gallery Categories -->
            <div class="mb-12">
                <div class="flex flex-wrap gap-3 justify-center">
                    <button class="px-6 py-2 bg-pink-600 text-white rounded-full font-semibold">All</button>
                    <button class="px-6 py-2 bg-gray-200 rounded-full hover:bg-gray-300">Conferences</button>
                    <button class="px-6 py-2 bg-gray-200 rounded-full hover:bg-gray-300">Workshops</button>
                    <button class="px-6 py-2 bg-gray-200 rounded-full hover:bg-gray-300">Seminars</button>
                    <button class="px-6 py-2 bg-gray-200 rounded-full hover:bg-gray-300">Lab Activities</button>
                    <button class="px-6 py-2 bg-gray-200 rounded-full hover:bg-gray-300">Awards</button>
                </div>
            </div>
            
            <!-- Recent Albums -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Recent Albums</h3>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-blue-400 to-blue-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">25 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Annual Research Symposium 2026</h4>
                            <p class="text-sm text-gray-600 mb-2">February 5-7, 2026</p>
                            <p class="text-sm text-gray-700">
                                Highlights from our 10th Annual Research Symposium featuring keynote speakers, 
                                poster sessions, and awards ceremony.
                            </p>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-green-400 to-green-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">18 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Grant Writing Workshop</h4>
                            <p class="text-sm text-gray-600 mb-2">January 15-17, 2026</p>
                            <p class="text-sm text-gray-700">
                                Three-day intensive workshop on preparing competitive research proposals with 
                                expert facilitators and group activities.
                            </p>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-purple-400 to-purple-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">32 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">International Conference Visit</h4>
                            <p class="text-sm text-gray-600 mb-2">December 2025</p>
                            <p class="text-sm text-gray-700">
                                Faculty presentations and networking at the International Conference on 
                                Innovation & Technology in Dubai.
                            </p>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-orange-400 to-orange-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">42 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Research Lab Opening Ceremony</h4>
                            <p class="text-sm text-gray-600 mb-2">November 20, 2025</p>
                            <p class="text-sm text-gray-700">
                                Inauguration of the Advanced Materials Research Laboratory with state-of-the-art 
                                equipment and facilities.
                            </p>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-red-400 to-red-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">28 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Student Research Competition</h4>
                            <p class="text-sm text-gray-600 mb-2">October 25, 2025</p>
                            <p class="text-sm text-gray-700">
                                Undergraduate and graduate students showcasing their innovative research 
                                projects in the annual competition.
                            </p>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow cursor-pointer">
                        <div class="bg-gradient-to-br from-teal-400 to-teal-600 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-2">📸</div>
                                <div class="text-sm">15 Photos</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Industry Partners Meeting</h4>
                            <p class="text-sm text-gray-600 mb-2">September 30, 2025</p>
                            <p class="text-sm text-gray-700">
                                Stakeholder meeting with industry partners to discuss collaboration opportunities 
                                and technology transfer.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Featured Photos -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Featured Photos</h3>
                
                <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                    <div class="aspect-square bg-gradient-to-br from-blue-200 to-blue-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">🎓</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-green-200 to-green-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">🔬</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-purple-200 to-purple-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">🏆</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-orange-200 to-orange-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">🤝</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-pink-200 to-pink-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">💡</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-yellow-200 to-yellow-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">📊</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-red-200 to-red-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">🎤</span>
                    </div>
                    <div class="aspect-square bg-gradient-to-br from-teal-200 to-teal-400 rounded-lg flex items-center justify-center">
                        <span class="text-4xl">📚</span>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-pink-600 to-purple-700 text-white p-12 rounded-lg">
                <h3 class="text-2xl font-bold mb-4">Want to Share Your Event Photos?</h3>
                <p class="mb-6">
                    If you have photos from ORIC events, we'd love to feature them in our gallery
                </p>
                <a href="#" class="bg-white text-purple-600 px-8 py-3 rounded-lg font-bold hover:bg-gray-100 inline-block">
                    Submit Photos
                </a>
            </div>
        </div>
    </section>
</asp:Content>
