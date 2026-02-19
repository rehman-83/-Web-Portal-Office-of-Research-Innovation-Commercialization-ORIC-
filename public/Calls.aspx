<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Calls & Announcements - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-20">
        <div class="container mx-auto px-4">
            <h1 class="text-5xl font-bold mb-4">Calls & Announcements</h1>
            <p class="text-xl">Current Funding Opportunities and Research Calls</p>
        </div>
    </section>
    
    <!-- Active Calls -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-gray-900 mb-8">Active Calls</h2>
            
            <div class="space-y-6">
                <!-- Call 1 -->
                <div class="card border-l-4 border-blue-600">
                    <div class="flex items-start justify-between">
                        <div class="flex-grow">
                            <div class="flex items-center space-x-3 mb-2">
                                <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">OPEN</span>
                                <span class="text-sm text-gray-500">Deadline: March 31, 2026</span>
                            </div>
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">Research Grant Program 2026</h3>
                            <p class="text-gray-700 mb-4">
                                ORIC invites applications for research grants supporting innovative projects in science, 
                                technology, engineering, and social sciences. Grants up to PKR 5 Million available.
                            </p>
                            <div class="flex flex-wrap gap-2 mb-4">
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">Research</span>
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">Funding</span>
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">All Disciplines</span>
                            </div>
                            <a href="../assets/files/downloads/research-grant-2026.pdf" class="text-blue-600 hover:underline font-semibold">Download Guidelines →</a>
                        </div>
                    </div>
                </div>
                
                <!-- Call 2 -->
                <div class="card border-l-4 border-blue-600">
                    <div class="flex items-start justify-between">
                        <div class="flex-grow">
                            <div class="flex items-center space-x-3 mb-2">
                                <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">OPEN</span>
                                <span class="text-sm text-gray-500">Deadline: April 15, 2026</span>
                            </div>
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">International Collaboration Grants</h3>
                            <p class="text-gray-700 mb-4">
                                Support for establishing international research collaborations and partnerships. 
                                Travel grants and collaboration expenses covered up to PKR 2 Million.
                            </p>
                            <div class="flex flex-wrap gap-2 mb-4">
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">International</span>
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">Collaboration</span>
                            </div>
                            <a href="../assets/files/downloads/intl-collaboration-2026.pdf" class="text-blue-600 hover:underline font-semibold">Download Guidelines →</a>
                        </div>
                    </div>
                </div>
                
                <!-- Call 3 -->
                <div class="card border-l-4 border-orange-600">
                    <div class="flex items-start justify-between">
                        <div class="flex-grow">
                            <div class="flex items-center space-x-3 mb-2">
                                <span class="bg-orange-100 text-orange-800 text-xs font-semibold px-3 py-1 rounded-full">CLOSING SOON</span>
                                <span class="text-sm text-gray-500">Deadline: February 28, 2026</span>
                            </div>
                            <h3 class="text-2xl font-bold text-gray-900 mb-3">Innovation & Startup Seed Fund</h3>
                            <p class="text-gray-700 mb-4">
                                Seed funding for innovative startups emerging from university research. 
                                Up to PKR 1.5 Million in seed funding plus BIC support.
                            </p>
                            <div class="flex flex-wrap gap-2 mb-4">
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">Startup</span>
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">Innovation</span>
                                <span class="bg-blue-100 text-blue-800 text-sm px-3 py-1 rounded">BIC</span>
                            </div>
                            <a href="../BIC.aspx" class="text-blue-600 hover:underline font-semibold">Learn More →</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Upcoming Calls -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-gray-900 mb-8">Upcoming Calls</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="card">
                    <span class="bg-gray-200 text-gray-700 text-xs font-semibold px-3 py-1 rounded-full inline-block mb-3">UPCOMING</span>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">PhD Research Fellowship</h3>
                    <p class="text-gray-600 mb-3">Financial support for PhD candidates conducting innovative research.</p>
                    <p class="text-sm text-gray-500">Expected Opening: May 2026</p>
                </div>
                
                <div class="card">
                    <span class="bg-gray-200 text-gray-700 text-xs font-semibold px-3 py-1 rounded-full inline-block mb-3">UPCOMING</span>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Technology Commercialization Grant</h3>
                    <p class="text-gray-600 mb-3">Support for commercializing research outcomes and technologies.</p>
                    <p class="text-sm text-gray-500">Expected Opening: June 2026</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Closed Calls -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-gray-900 mb-8">Recently Closed Calls</h2>
            
            <div class="space-y-4">
                <div class="bg-gray-100 rounded-lg p-6">
                    <div class="flex items-center justify-between">
                        <div>
                            <span class="bg-red-100 text-red-800 text-xs font-semibold px-3 py-1 rounded-full mr-3">CLOSED</span>
                            <span class="text-lg font-bold text-gray-800">Young Researcher Grant 2025</span>
                        </div>
                        <span class="text-sm text-gray-500">Closed: January 31, 2026</span>
                    </div>
                </div>
                
                <div class="bg-gray-100 rounded-lg p-6">
                    <div class="flex items-center justify-between">
                        <div>
                            <span class="bg-red-100 text-red-800 text-xs font-semibold px-3 py-1 rounded-full mr-3">CLOSED</span>
                            <span class="text-lg font-bold text-gray-800">Equipment Grant Program 2025</span>
                        </div>
                        <span class="text-sm text-gray-500">Closed: December 31, 2025</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- How to Apply -->
    <section class="py-16 bg-blue-50">
        <div class="container mx-auto px-4">
            <div class="max-w-3xl mx-auto">
                <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">How to Apply</h2>
                
                <div class="bg-white rounded-lg shadow-md p-8">
                    <ol class="space-y-6">
                        <li class="flex items-start space-x-4">
                            <span class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">1</span>
                            <div>
                                <h3 class="font-bold text-lg mb-1">Review Guidelines</h3>
                                <p class="text-gray-600">Download and carefully read the call guidelines and eligibility criteria.</p>
                            </div>
                        </li>
                        
                        <li class="flex items-start space-x-4">
                            <span class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">2</span>
                            <div>
                                <h3 class="font-bold text-lg mb-1">Prepare Documents</h3>
                                <p class="text-gray-600">Gather all required documents including proposal, CV, and supporting materials.</p>
                            </div>
                        </li>
                        
                        <li class="flex items-start space-x-4">
                            <span class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">3</span>
                            <div>
                                <h3 class="font-bold text-lg mb-1">Submit Application</h3>
                                <p class="text-gray-600">Submit your complete application through the ORIC portal before the deadline.</p>
                            </div>
                        </li>
                        
                        <li class="flex items-start space-x-4">
                            <span class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">4</span>
                            <div>
                                <h3 class="font-bold text-lg mb-1">Await Review</h3>
                                <p class="text-gray-600">Applications are reviewed by expert committees. Results typically announced within 6-8 weeks.</p>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Contact -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl font-bold text-gray-900 mb-4">Need Assistance?</h2>
            <p class="text-lg text-gray-600 mb-8">Our team is available to answer any questions about funding opportunities.</p>
            <div class="flex flex-wrap justify-center gap-4">
                <a href="../contact/Process_Form.aspx" class="btn-primary">Contact Us</a>
                <a href="../research/Services.aspx" class="btn-secondary">View Services</a>
            </div>
        </div>
    </section>
</asp:Content>
