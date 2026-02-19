<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC Steering Committee (OSC) - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">ORIC Steering Committee (OSC)</h1>
            <p class="text-xl">Strategic Oversight and Direction</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About OSC</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The ORIC Steering Committee (OSC) provides strategic direction and oversight to ORIC operations. 
                    The committee meets regularly to review progress, approve major initiatives, and ensure alignment 
                    with institutional goals and national research priorities.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Functions</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Strategic planning and policy formulation</li>
                        <li>• Budget approval and resource allocation</li>
                        <li>• Performance monitoring and evaluation</li>
                        <li>• Approval of major research initiatives</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Meetings</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Quarterly regular meetings</li>
                        <li>• Special meetings as required</li>
                        <li>• Annual strategic review sessions</li>
                        <li>• Minutes circulated to all members</li>
                    </ul>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8 mb-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Committee Members</h3>
                <div class="space-y-3 text-gray-700">
                    <p class="font-semibold">• Vice Chancellor (Chairperson)</p>
                    <p class="font-semibold">• Director ORIC (Member Secretary)</p>
                    <p>• Dean of Faculties</p>
                    <p>• Representatives from industry and research organizations</p>
                    <p>• Senior faculty members with research expertise</p>
                </div>
            </div>
            
            <div class="card">
                <h3 class="text-xl font-bold text-blue-600 mb-3">Contact OSC</h3>
                <p class="text-gray-700 mb-2">For matters related to OSC meetings or submissions:</p>
                <p class="text-gray-700">Email: osc.oric@university.edu.pk</p>
            </div>
        </div>
    </section>
</asp:Content>
