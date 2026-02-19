<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Technology Transfer - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-fuchsia-600 to-purple-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Available Technologies for Licensing</h1>
            <p class="text-xl">Innovative Solutions Ready for Commercialization</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Technology Portfolio</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    Our university has developed numerous innovative technologies across various sectors. 
                    These proven solutions are available for licensing to industry partners for commercial 
                    development and market deployment.
                </p>
            </div>
            
            <!-- Featured Technologies -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Featured Technologies</h3>
                
                <div class="space-y-8">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        AI-Powered Medical Image Analysis System
                                    </h4>
                                    <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Patent Pending</span>
                                </div>
                                <p class="text-sm text-gray-600 mb-3">
                                    <strong>Developers:</strong> Dr. Ahmed Khan, Dr. Fatima Malik | CS & Medical Imaging
                                </p>
                                <p class="text-gray-700 mb-4">
                                    Deep learning-based system for automated detection of abnormalities in X-rays, 
                                    CT scans, and MRIs. Achieves 96% accuracy with 40% faster diagnosis time. 
                                    Includes FDA-compliant validation protocols.
                                </p>
                                <div class="grid md:grid-cols-3 gap-4 text-sm mb-4">
                                    <div class="bg-blue-50 p-3 rounded">
                                        <strong>TRL:</strong> 7/9 (Prototype tested)
                                    </div>
                                    <div class="bg-blue-50 p-3 rounded">
                                        <strong>Market:</strong> Healthcare/Diagnostics
                                    </div>
                                    <div class="bg-blue-50 p-3 rounded">
                                        <strong>IP Status:</strong> Patent Filed 2024
                                    </div>
                                </div>
                                <div class="text-sm text-gray-700">
                                    <strong>Applications:</strong> Hospitals, diagnostic centers, telemedicine platforms
                                </div>
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Request License Information →</a>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Low-Cost Water Purification System
                                    </h4>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Patented</span>
                                </div>
                                <p class="text-sm text-gray-600 mb-3">
                                    <strong>Developers:</strong> Dr. Muhammad Asif, Engineering Team
                                </p>
                                <p class="text-gray-700 mb-4">
                                    Novel filtration technology using locally sourced materials removes 99.9% 
                                    contaminants at 70% lower cost than conventional systems. Solar-powered 
                                    operation ideal for off-grid communities.
                                </p>
                                <div class="grid md:grid-cols-3 gap-4 text-sm mb-4">
                                    <div class="bg-green-50 p-3 rounded">
                                        <strong>TRL:</strong> 9/9 (Field deployed)
                                    </div>
                                    <div class="bg-green-50 p-3 rounded">
                                        <strong>Market:</strong> Water/Sanitation
                                    </div>
                                    <div class="bg-green-50 p-3 rounded">
                                        <strong>IP Status:</strong> Patent #PK-2023-4567
                                    </div>
                                </div>
                                <div class="text-sm text-gray-700">
                                    <strong>Applications:</strong> Rural communities, disaster relief, construction sites
                                </div>
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Request License Information →</a>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Biodegradable Food Packaging Material
                                    </h4>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Patented</span>
                                </div>
                                <p class="text-sm text-gray-600 mb-3">
                                    <strong>Developers:</strong> Dr. Nadia Iqbal, Life Sciences Department
                                </p>
                                <p class="text-gray-700 mb-4">
                                    Plant-based packaging material with antimicrobial properties. Extends food 
                                    shelf life by 30% while decomposing in 45 days. Cost-competitive with 
                                    plastic alternatives.
                                </p>
                                <div class="grid md:grid-cols-3 gap-4 text-sm mb-4">
                                    <div class="bg-purple-50 p-3 rounded">
                                        <strong>TRL:</strong> 8/9 (Pilot production)
                                    </div>
                                    <div class="bg-purple-50 p-3 rounded">
                                        <strong>Market:</strong> Food/Packaging
                                    </div>
                                    <div class="bg-purple-50 p-3 rounded">
                                        <strong>IP Status:</strong> Patent #PK-2024-1234
                                    </div>
                                </div>
                                <div class="text-sm text-gray-700">
                                    <strong>Applications:</strong> Food industry, retail packaging, catering services
                                </div>
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Request License Information →</a>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">
                                        Smart Agriculture IoT Platform
                                    </h4>
                                    <span class="bg-yellow-100 text-yellow-800 text-xs font-semibold px-3 py-1 rounded-full">Prototype</span>
                                </div>
                                <p class="text-sm text-gray-600 mb-3">
                                    <strong>Developers:</strong> Engineering & CS Collaboration
                                </p>
                                <p class="text-gray-700 mb-4">
                                    IoT-enabled system for precision agriculture with soil moisture sensors, 
                                    weather monitoring, and AI-based crop management recommendations. Mobile 
                                    app interface for farmers.
                                </p>
                                <div class="grid md:grid-cols-3 gap-4 text-sm mb-4">
                                    <div class="bg-orange-50 p-3 rounded">
                                        <strong>TRL:</strong> 6/9 (Prototype tested)
                                    </div>
                                    <div class="bg-orange-50 p-3 rounded">
                                        <strong>Market:</strong> Agriculture/AgriTech
                                    </div>
                                    <div class="bg-orange-50 p-3 rounded">
                                        <strong>IP Status:</strong> Provisional Patent
                                    </div>
                                </div>
                                <div class="text-sm text-gray-700">
                                    <strong>Applications:</strong> Farms, greenhouses, agricultural cooperatives
                                </div>
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Request License Information →</a>
                    </div>
                </div>
            </div>
            
            <!-- Technology Categories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Technologies by Sector</h3>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">💊</div>
                        <h4 class="font-bold text-gray-900 mb-2">Healthcare & Biotech</h4>
                        <p class="text-gray-700 text-sm mb-3">12 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                    
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">💻</div>
                        <h4 class="font-bold text-gray-900 mb-2">IT & Software</h4>
                        <p class="text-gray-700 text-sm mb-3">18 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                    
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">⚡</div>
                        <h4 class="font-bold text-gray-900 mb-2">Energy & Environment</h4>
                        <p class="text-gray-700 text-sm mb-3">9 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                    
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">🏗️</div>
                        <h4 class="font-bold text-gray-900 mb-2">Engineering & Materials</h4>
                        <p class="text-gray-700 text-sm mb-3">15 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                    
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">🌾</div>
                        <h4 class="font-bold text-gray-900 mb-2">Agriculture & Food</h4>
                        <p class="text-gray-700 text-sm mb-3">7 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                    
                    <div class="card text-center hover:shadow-lg transition-shadow">
                        <div class="text-4xl mb-3">🔬</div>
                        <h4 class="font-bold text-gray-900 mb-2">Other Innovations</h4>
                        <p class="text-gray-700 text-sm mb-3">8 technologies available</p>
                        <a href="#" class="text-blue-600 text-sm hover:underline">View Portfolio →</a>
                    </div>
                </div>
            </div>
            
            <!-- Licensing Information -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Licensing Options</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card bg-blue-50 border-l-4 border-blue-600">
                        <h4 class="text-lg font-bold text-blue-900 mb-4">Exclusive License</h4>
                        <p class="text-gray-700 mb-4">
                            Single licensee gains exclusive rights to commercialize the technology in 
                            specified territory or field of use.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Market exclusivity</li>
                            <li>✓ Higher upfront fees</li>
                            <li>✓ Performance milestones</li>
                            <li>✓ Reversion clause if not commercialized</li>
                        </ul>
                    </div>
                    
                    <div class="card bg-green-50 border-l-4 border-green-600">
                        <h4 class="text-lg font-bold text-green-900 mb-4">Non-Exclusive License</h4>
                        <p class="text-gray-700 mb-4">
                            Multiple licensees can commercialize the technology simultaneously in 
                            different or same markets.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Lower initial investment</li>
                            <li>✓ Faster time to market</li>
                            <li>✓ Flexible terms</li>
                            <li>✓ Suitable for broad applications</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Licensing Process -->
            <div class="bg-gray-100 p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Licensing Process</h3>
                
                <div class="space-y-6">
                    <div class="flex items-start">
                        <div class="bg-fuchsia-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Technology Evaluation</h4>
                            <p class="text-gray-700">
                                Review technology portfolio and request detailed information packages. 
                                Arrange demonstration or pilot testing.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-fuchsia-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Due Diligence & NDA</h4>
                            <p class="text-gray-700">
                                Sign Non-Disclosure Agreement (NDA). Conduct technical and commercial 
                                due diligence with inventor support.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-fuchsia-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Term Negotiation</h4>
                            <p class="text-gray-700">
                                Negotiate license terms including fees, royalties, territory, exclusivity, 
                                and milestones. Draft license agreement.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-fuchsia-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Agreement & Transfer</h4>
                            <p class="text-gray-700">
                                Sign license agreement. Complete technology transfer with documentation, 
                                training, and ongoing technical support.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-fuchsia-600 to-purple-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Explore Licensing Opportunities</h3>
                <p class="text-xl mb-8 text-fuchsia-100">
                    Transform university innovations into commercial success
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-4">
                    <a href="#" class="bg-white text-purple-600 px-8 py-4 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Browse Technology Catalog
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-4 rounded-lg font-bold hover:bg-white hover:text-purple-600 transition inline-block">
                        Request License Inquiry
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
