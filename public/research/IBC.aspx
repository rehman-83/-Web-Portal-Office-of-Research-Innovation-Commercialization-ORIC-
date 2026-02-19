<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Institutional Biosafety Committee (IBC) - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Institutional Biosafety Committee (IBC)</h1>
            <p class="text-xl">Ensuring Safe Research Practices</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About IBC</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Institutional Biosafety Committee (IBC) oversees all research involving biohazardous materials, 
                    recombinant DNA, infectious agents, and genetically modified organisms. The committee ensures 
                    compliance with national and international biosafety guidelines.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Responsibilities</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Review and approve biosafety protocols</li>
                        <li>• Assess risk levels of biological research</li>
                        <li>• Monitor laboratory safety compliance</li>
                        <li>• Provide biosafety training and guidance</li>
                        <li>• Investigate biosafety incidents</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Review Process</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Submit application via ORIC portal</li>
                        <li>• Initial review by IBC secretary</li>
                        <li>• Full committee review (monthly)</li>
                        <li>• Decision communicated within 2 weeks</li>
                        <li>• Annual renewals required</li>
                    </ul>
                </div>
            </div>
            
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Research Requiring IBC Approval</h3>
                <div class="bg-yellow-50 border-l-4 border-yellow-400 p-6 mb-6">
                    <p class="text-gray-800 font-semibold mb-2">⚠️ Mandatory IBC approval is required for:</p>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Research with recombinant or synthetic nucleic acid molecules</li>
                        <li>• Work with human or animal pathogens (BSL-2, BSL-3)</li>
                        <li>• Studies involving genetically modified organisms (GMOs)</li>
                        <li>• Research with infectious agents or toxins</li>
                        <li>• Use of human or animal tissues, blood, or body fluids</li>
                    </ul>
                </div>
            </div>
            
            <div class="card mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Application Forms</h3>
                <div class="space-y-3">
                    <a href="../assets/files/downloads/ibc-application-form.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">IBC Application Form</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                    
                    <a href="../assets/files/downloads/ibc-protocol-guidelines.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Protocol Preparation Guidelines</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                    
                    <a href="../assets/files/downloads/ibc-sops.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Standard Operating Procedures (SOPs)</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Contact IBC</h3>
                <p class="text-gray-700 mb-4">For questions about biosafety or IBC submissions:</p>
                <p class="text-gray-800 font-semibold">Email: ibc@university.edu.pk</p>
                <p class="text-gray-800 font-semibold">Phone: +92 XXX XXXXXXX</p>
            </div>
        </div>
    </section>
</asp:Content>
