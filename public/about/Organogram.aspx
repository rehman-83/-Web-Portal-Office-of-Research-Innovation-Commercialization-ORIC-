<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Organogram - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Organogram</h1>
            <p class="text-xl">ORIC Organizational Structure</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="max-w-5xl mx-auto">
                <div class="bg-blue-50 rounded-lg p-8 mb-8">
                    <h2 class="text-2xl font-bold text-center text-gray-900 mb-8">ORIC Organizational Chart</h2>
                    
                    <!-- Director Level -->
                    <div class="flex justify-center mb-8">
                        <div class="bg-blue-600 text-white rounded-lg p-6 text-center shadow-lg w-64">
                            <h3 class="font-bold text-xl mb-2">Director ORIC</h3>
                            <p class="text-sm">Chief Executive</p>
                        </div>
                    </div>
                    
                    <!-- Deputy Director Level -->
                    <div class="flex justify-center mb-8">
                        <div class="bg-blue-500 text-white rounded-lg p-4 text-center shadow-lg w-56">
                            <h3 class="font-bold text-lg mb-1">Deputy Director</h3>
                            <p class="text-sm">Administration & Coordination</p>
                        </div>
                    </div>
                    
                    <!-- Departments -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <div class="bg-white border-2 border-blue-400 rounded-lg p-4 text-center shadow">
                            <h3 class="font-bold text-blue-700 mb-2">Research Section</h3>
                            <ul class="text-sm text-gray-600 space-y-1">
                                <li>Research Grants</li>
                                <li>IBC & BEC</li>
                                <li>Research Services</li>
                            </ul>
                        </div>
                        
                        <div class="bg-white border-2 border-blue-400 rounded-lg p-4 text-center shadow">
                            <h3 class="font-bold text-blue-700 mb-2">Innovation Section</h3>
                            <ul class="text-sm text-gray-600 space-y-1">
                                <li>BIC</li>
                                <li>Technology Transfer</li>
                                <li>Outreach Programs</li>
                            </ul>
                        </div>
                        
                        <div class="bg-white border-2 border-blue-400 rounded-lg p-4 text-center shadow">
                            <h3 class="font-bold text-blue-700 mb-2">Commercialization</h3>
                            <ul class="text-sm text-gray-600 space-y-1">
                                <li>IP Management</li>
                                <li>Industry Linkages</li>
                                <li>TISC</li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="prose max-w-none">
                    <h3 class="text-2xl font-bold text-gray-900 mb-4">Reporting Structure</h3>
                    <p class="text-gray-700 mb-4">
                        The Office of Research, Innovation & Commercialization operates under the direct supervision 
                        of the Vice Chancellor. The Director ORIC heads the office and coordinates all research, 
                        innovation, and commercialization activities across the university.
                    </p>
                    
                    <h3 class="text-2xl font-bold text-gray-900 mb-4 mt-8">Key Committees</h3>
                    <ul class="list-disc list-inside text-gray-700 space-y-2">
                        <li>Institutional Review & Advisory Board (IRAB)</li>
                        <li>Institutional Biosafety Committee (IBC)</li>
                        <li>Board of Ethical Committee (BEC)</li>
                        <li>ORIC Steering Committee (OSC)</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
