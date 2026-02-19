<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    IRAB - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Institutional Review & Advisory Board (IRAB)</h1>
            <p class="text-xl">Guiding Research Excellence</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About IRAB</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Institutional Review & Advisory Board (IRAB) serves as the apex body for reviewing and 
                    advising on all research-related matters at the university. The board ensures that research 
                    activities maintain the highest standards of quality, ethics, and compliance with national 
                    and international guidelines.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Mandate</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Review research proposals and projects</li>
                        <li>• Advise on research strategy and priorities</li>
                        <li>• Monitor research quality and impact</li>
                        <li>• Recommend policy improvements</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Composition</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Vice Chancellor (Chairperson)</li>
                        <li>• Director ORIC (Secretary)</li>
                        <li>• Senior faculty representatives</li>
                        <li>• External research experts</li>
                    </ul>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Key Responsibilities</h3>
                <div class="space-y-3 text-gray-700">
                    <p>✓ Reviewing institutional research policies and recommending improvements</p>
                    <p>✓ Evaluating proposals for large research grants and collaborative projects</p>
                    <p>✓ Advising on research infrastructure development and resource allocation</p>
                    <p>✓ Monitoring compliance with ethical guidelines and research standards</p>
                    <p>✓ Promoting interdisciplinary research and international collaboration</p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
