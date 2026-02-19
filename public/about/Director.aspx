<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Director's Message - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Director's Message</h1>
            <p class="text-xl">Welcome from the Director of ORIC</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="max-w-4xl mx-auto">
                <div class="flex flex-col md:flex-row gap-8 mb-12">
                    <div class="md:w-1/3">
                        <img src="../assets/img/about/director.jpg" alt="Director ORIC" class="w-full rounded-lg shadow-lg" onerror="this.src='../assets/img/placeholder-person.jpg'" />
                        <div class="mt-4 text-center">
                            <h2 class="text-2xl font-bold text-gray-900">Prof. Dr. [Name]</h2>
                            <p class="text-gray-600">Director, ORIC</p>
                        </div>
                    </div>
                    
                    <div class="md:w-2/3">
                        <div class="prose max-w-none">
                            <p class="text-lg text-gray-700 mb-4 italic">
                                "Research and innovation are the cornerstones of academic excellence and societal progress."
                            </p>
                            
                            <p class="text-gray-700 mb-4">
                                It gives me immense pleasure to welcome you to the Office of Research, Innovation & Commercialization (ORIC). 
                                As the Director, I am committed to fostering a vibrant research culture that encourages innovation, critical 
                                thinking, and impactful contributions to society.
                            </p>
                            
                            <p class="text-gray-700 mb-4">
                                ORIC serves as the central hub for all research-related activities at our institution. We are dedicated to 
                                providing comprehensive support to our faculty and students in conducting high-quality research, securing 
                                funding, and navigating the complexities of research ethics and compliance.
                            </p>
                            
                            <p class="text-gray-700 mb-4">
                                Our mission extends beyond traditional research support. We actively promote innovation and entrepreneurship 
                                through our Business Incubation Center (BIC), helping transform groundbreaking ideas into viable commercial 
                                ventures. We facilitate industry-academia partnerships, technology transfer, and the commercialization of 
                                research outcomes.
                            </p>
                            
                            <p class="text-gray-700 mb-4">
                                I encourage all members of our academic community to engage with ORIC's services and opportunities. Whether 
                                you're seeking research funding, looking for collaboration opportunities, or need guidance on research ethics, 
                                our experienced team is here to support you every step of the way.
                            </p>
                            
                            <p class="text-gray-700 mb-4">
                                Together, let us continue to push the boundaries of knowledge, drive innovation, and make meaningful 
                                contributions that benefit not just our institution, but society as a whole.
                            </p>
                            
                            <p class="text-gray-700 mt-8">
                                <strong>Prof. Dr. [Name]</strong><br />
                                Director, ORIC
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Quick Links -->
                <div class="bg-blue-50 rounded-lg p-8">
                    <h3 class="text-2xl font-bold text-gray-900 mb-6">Get Started with ORIC</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <a href="../research/Services.aspx" class="bg-white p-4 rounded-lg shadow hover:shadow-md transition-shadow">
                            <h4 class="font-bold text-blue-600 mb-2">Research Services</h4>
                            <p class="text-sm text-gray-600">Explore our comprehensive research support services</p>
                        </a>
                        
                        <a href="../Calls.aspx" class="bg-white p-4 rounded-lg shadow hover:shadow-md transition-shadow">
                            <h4 class="font-bold text-blue-600 mb-2">Funding Opportunities</h4>
                            <p class="text-sm text-gray-600">Browse active funding calls and grants</p>
                        </a>
                        
                        <a href="../BIC.aspx" class="bg-white p-4 rounded-lg shadow hover:shadow-md transition-shadow">
                            <h4 class="font-bold text-blue-600 mb-2">Innovation & BIC</h4>
                            <p class="text-sm text-gray-600">Learn about our incubation programs</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
