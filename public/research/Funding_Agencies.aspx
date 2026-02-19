<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Funding Agencies - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Funding Agencies</h1>
            <p class="text-xl">National & International Research Funding Sources</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <h2 class="text-3xl font-bold text-gray-900 mb-8">National Funding Agencies</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">Higher Education Commission (HEC)</h3>
                    <p class="text-gray-700 mb-3">Primary funding body for higher education research in Pakistan</p>
                    <a href="https://hec.gov.pk" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">Pakistan Science Foundation (PSF)</h3>
                    <p class="text-gray-700 mb-3">Supporting research in natural and social sciences</p>
                    <a href="#" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">Pakistan Council of Research in Water Resources</h3>
                    <p class="text-gray-700 mb-3">Funding for water and environmental research</p>
                    <a href="#" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">PAEC (Pakistan Atomic Energy Commission)</h3>
                    <p class="text-gray-700 mb-3">Nuclear science and technology research funding</p>
                    <a href="#" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">NESCOM</h3>
                    <p class="text-gray-700 mb-3">Engineering and technology research initiatives</p>
                    <a href="#" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">PARC (Pakistan Agricultural Research Council)</h3>
                    <p class="text-gray-700 mb-3">Agricultural and food security research programs</p>
                    <a href="#" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
            </div>
            
            <h2 class="text-3xl font-bold text-gray-900 mb-8">International Funding Agencies</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">World Bank</h3>
                    <p class="text-gray-700 mb-3">Development and research grants for socioeconomic studies</p>
                    <a href="https://www.worldbank.org" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">USAID</h3>
                    <p class="text-gray-700 mb-3">Research funding for development and health projects</p>
                    <a href="https://www.usaid.gov" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">European Union Horizon Europe</h3>
                    <p class="text-gray-700 mb-3">Major research and innovation program</p>
                    <a href="https://ec.europa.eu/info/horizon-europe" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">British Council</h3>
                    <p class="text-gray-700 mb-3">Research partnerships and collaborative grants</p>
                    <a href="https://www.britishcouncil.org" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">Fulbright Program</h3>
                    <p class="text-gray-700 mb-3">Educational exchange and research grants</p>
                    <a href="https://fulbright.state.gov" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-2">WHO (World Health Organization)</h3>
                    <p class="text-gray-700 mb-3">Health research grants and collaborations</p>
                    <a href="https://www.who.int" target="_blank" class="text-blue-600 hover:underline">Visit Website →</a>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Need Help Finding Funding?</h3>
                <p class="text-gray-700 mb-6">Our research team can assist you in identifying suitable funding opportunities and preparing competitive proposals.</p>
                <a href="../contact/Process_Form.aspx" class="btn-primary">Contact Research Services</a>
            </div>
        </div>
    </section>
</asp:Content>
