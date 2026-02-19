<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Publications - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-teal-600 to-cyan-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">ORIC Publications</h1>
            <p class="text-xl">Newsletters, Annual Reports & Research Magazines</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <!-- ORIC Newsletter -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">ORIC Monthly Newsletter</h3>
                <p class="text-gray-700 mb-6">
                    Stay updated with the latest research news, funding opportunities, and achievements. 
                    Published monthly with contributions from faculty and researchers.
                </p>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card hover:shadow-xl transition-shadow">
                        <div class="bg-gradient-to-br from-blue-400 to-blue-600 h-64 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-3">📰</div>
                                <div class="text-xl font-bold">February 2026</div>
                                <div class="text-sm">Vol. 5, Issue 2</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Latest Issue</h4>
                            <ul class="text-sm text-gray-700 space-y-1 mb-4">
                                <li>• HEC Grant Success Stories</li>
                                <li>• Symposium Highlights</li>
                                <li>• Publication Awards</li>
                                <li>• Upcoming Events</li>
                            </ul>
                            <a href="#" class="text-blue-600 font-semibold hover:underline">Download PDF →</a>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow">
                        <div class="bg-gradient-to-br from-green-400 to-green-600 h-64 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-3">📰</div>
                                <div class="text-xl font-bold">January 2026</div>
                                <div class="text-sm">Vol. 5, Issue 1</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Previous Issue</h4>
                            <ul class="text-sm text-gray-700 space-y-1 mb-4">
                                <li>• Year in Review 2025</li>
                                <li>• New Research Projects</li>
                                <li>• Training Programs</li>
                                <li>• Research Metrics</li>
                            </ul>
                            <a href="#" class="text-blue-600 font-semibold hover:underline">Download PDF →</a>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-xl transition-shadow">
                        <div class="bg-gradient-to-br from-purple-400 to-purple-600 h-64 rounded-t-lg flex items-center justify-center text-white">
                            <div class="text-center">
                                <div class="text-5xl mb-3">📰</div>
                                <div class="text-xl font-bold">December 2025</div>
                                <div class="text-sm">Vol. 4, Issue 12</div>
                            </div>
                        </div>
                        <div class="p-4">
                            <h4 class="font-bold text-gray-900 mb-2">Archive</h4>
                            <ul class="text-sm text-gray-700 space-y-1 mb-4">
                                <li>• Research Excellence Awards</li>
                                <li>• Conference Participation</li>
                                <li>• Industry Partnerships</li>
                                <li>• Year-End Message</li>
                            </ul>
                            <a href="#" class="text-blue-600 font-semibold hover:underline">Download PDF →</a>
                        </div>
                    </div>
                </div>
                
                <div class="mt-6 text-center">
                    <a href="#" class="text-blue-600 font-semibold hover:underline">View All Newsletters →</a>
                </div>
            </div>
            
            <!-- Annual Reports -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Annual Research Reports</h3>
                <p class="text-gray-700 mb-6">
                    Comprehensive annual reports highlighting research achievements, publications, grants, 
                    and impact metrics.
                </p>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-teal-600 hover:shadow-xl transition-shadow">
                        <div class="flex gap-4">
                            <div class="bg-teal-100 p-6 rounded flex-shrink-0">
                                <div class="text-4xl text-teal-600">📊</div>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-gray-900 mb-2">Annual Report 2025</h4>
                                <p class="text-gray-700 text-sm mb-3">
                                    Complete overview of research activities, achievements, and statistics for 2025. 
                                    Includes financial reports and strategic initiatives.
                                </p>
                                <div class="flex gap-4 text-sm text-gray-600 mb-3">
                                    <span>📄 120 pages</span>
                                    <span>📅 Published: Jan 2026</span>
                                </div>
                                <a href="#" class="text-teal-600 font-semibold hover:underline">Download Report →</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex gap-4">
                            <div class="bg-blue-100 p-6 rounded flex-shrink-0">
                                <div class="text-4xl text-blue-600">📊</div>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-gray-900 mb-2">Annual Report 2024</h4>
                                <p class="text-gray-700 text-sm mb-3">
                                    Comprehensive report covering 2024 research milestones, grant successes, 
                                    publications, and outreach programs.
                                </p>
                                <div class="flex gap-4 text-sm text-gray-600 mb-3">
                                    <span>📄 115 pages</span>
                                    <span>📅 Published: Jan 2025</span>
                                </div>
                                <a href="#" class="text-blue-600 font-semibold hover:underline">Download Report →</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Research Magazine -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Research Spotlight Magazine</h3>
                <p class="text-gray-700 mb-6">
                    Quarterly magazine featuring in-depth articles on research projects, innovator profiles, 
                    and impact stories written in accessible language.
                </p>
                
                <div class="grid md:grid-cols-4 gap-4">
                    <div class="card hover:shadow-lg transition-shadow text-center">
                        <div class="bg-gradient-to-br from-red-300 to-red-500 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div>
                                <div class="text-4xl mb-2">📖</div>
                                <div class="font-bold">Q4 2025</div>
                            </div>
                        </div>
                        <div class="p-3">
                            <h5 class="font-bold text-sm mb-2">Healthcare Innovation</h5>
                            <a href="#" class="text-xs text-blue-600 hover:underline">Read Online</a>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow text-center">
                        <div class="bg-gradient-to-br from-orange-300 to-orange-500 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div>
                                <div class="text-4xl mb-2">📖</div>
                                <div class="font-bold">Q3 2025</div>
                            </div>
                        </div>
                        <div class="p-3">
                            <h5 class="font-bold text-sm mb-2">Climate Solutions</h5>
                            <a href="#" class="text-xs text-blue-600 hover:underline">Read Online</a>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow text-center">
                        <div class="bg-gradient-to-br from-green-300 to-green-500 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div>
                                <div class="text-4xl mb-2">📖</div>
                                <div class="font-bold">Q2 2025</div>
                            </div>
                        </div>
                        <div class="p-3">
                            <h5 class="font-bold text-sm mb-2">AI & Future Tech</h5>
                            <a href="#" class="text-xs text-blue-600 hover:underline">Read Online</a>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow text-center">
                        <div class="bg-gradient-to-br from-blue-300 to-blue-500 h-48 rounded-t-lg flex items-center justify-center text-white">
                            <div>
                                <div class="text-4xl mb-2">📖</div>
                                <div class="font-bold">Q1 2025</div>
                            </div>
                        </div>
                        <div class="p-3">
                            <h5 class="font-bold text-sm mb-2">Sustainable Energy</h5>
                            <a href="#" class="text-xs text-blue-600 hover:underline">Read Online</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Special Publications -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Special Publications</h3>
                
                <div class="space-y-4">
                    <div class="card flex items-start gap-4">
                        <div class="bg-purple-100 p-4 rounded">
                            <span class="text-3xl">📘</span>
                        </div>
                        <div class="flex-1">
                            <h4 class="font-bold text-gray-900 mb-1">Research Impact Assessment Report 2025</h4>
                            <p class="text-sm text-gray-700 mb-2">
                                Detailed analysis of research impact on society, economy, and policy. Includes case 
                                studies and metrics.
                            </p>
                            <a href="#" class="text-blue-600 text-sm hover:underline">Download PDF (8.5 MB)</a>
                        </div>
                    </div>
                    
                    <div class="card flex items-start gap-4">
                        <div class="bg-green-100 p-4 rounded">
                            <span class="text-3xl">📗</span>
                        </div>
                        <div class="flex-1">
                            <h4 class="font-bold text-gray-900 mb-1">Faculty Research Profiles Directory</h4>
                            <p class="text-sm text-gray-700 mb-2">
                                Comprehensive directory of faculty research interests, publications, and ongoing 
                                projects.
                            </p>
                            <a href="#" class="text-blue-600 text-sm hover:underline">Download PDF (12.3 MB)</a>
                        </div>
                    </div>
                    
                    <div class="card flex items-start gap-4">
                        <div class="bg-orange-100 p-4 rounded">
                            <span class="text-3xl">📙</span>
                        </div>
                        <div class="flex-1">
                            <h4 class="font-bold text-gray-900 mb-1">Research Ethics & Integrity Guidelines</h4>
                            <p class="text-sm text-gray-700 mb-2">
                                Complete guide on research ethics, responsible conduct, and compliance requirements.
                            </p>
                            <a href="#" class="text-blue-600 text-sm hover:underline">Download PDF (2.1 MB)</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Subscribe -->
            <div class="text-center bg-gradient-to-r from-teal-600 to-cyan-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Subscribe to ORIC Publications</h3>
                <p class="text-xl mb-6">
                    Receive our newsletter, reports, and magazines directly in your inbox
                </p>
                <div class="flex max-w-md mx-auto gap-2">
                    <input type="email" placeholder="Enter your email" class="flex-1 px-4 py-3 rounded-lg text-gray-900" />
                    <button class="bg-white text-teal-600 px-6 py-3 rounded-lg font-bold hover:bg-gray-100">
                        Subscribe
                    </button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
