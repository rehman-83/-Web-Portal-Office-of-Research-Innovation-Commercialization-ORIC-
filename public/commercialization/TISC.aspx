<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Technology & Innovation Support Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-lime-600 to-green-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Technology & Innovation Support Center (TISC)</h1>
            <p class="text-xl">Empowering Innovation Through IP Intelligence & Support</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About TISC</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Technology & Innovation Support Center (TISC) is a WIPO-supported initiative that 
                    provides innovators, researchers, and entrepreneurs with free access to high-quality 
                    technology information and IP-related services. TISC helps foster innovation by 
                    facilitating access to patent databases and technology intelligence.
                </p>
            </div>
            
            <!-- Core Services -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Our Services</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🔍</div>
                        <h4 class="text-xl font-bold text-blue-900 mb-3">Patent Search & Analysis</h4>
                        <p class="text-gray-700 mb-4">
                            Comprehensive patent searches to assess novelty, identify prior art, and analyze 
                            competitive landscape. Access to global patent databases including WIPO, USPTO, 
                            EPO, and JPO.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Novelty searches</li>
                            <li>✓ Freedom-to-operate analysis</li>
                            <li>✓ Technology landscape reports</li>
                            <li>✓ Competitor patent analysis</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">📄</div>
                        <h4 class="text-xl font-bold text-green-900 mb-3">IP Application Support</h4>
                        <p class="text-gray-700 mb-4">
                            Guidance on preparing and filing patent, trademark, and design applications. 
                            Support with provisional and complete specifications.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Patent drafting assistance</li>
                            <li>✓ Trademark registration guidance</li>
                            <li>✓ Industrial design protection</li>
                            <li>✓ Copyright registration</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">📚</div>
                        <h4 class="text-xl font-bold text-purple-900 mb-3">Technology Information Access</h4>
                        <p class="text-gray-700 mb-4">
                            Free access to scientific and technical databases, journals, and standards to 
                            support research and development activities.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ PATENTSCOPE database access</li>
                            <li>✓ Scientific journal databases</li>
                            <li>✓ Technical standards</li>
                            <li>✓ Market research reports</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🎓</div>
                        <h4 class="text-xl font-bold text-orange-900 mb-3">Training & Capacity Building</h4>
                        <p class="text-gray-700 mb-4">
                            Regular workshops and training sessions on IP management, patent searching, 
                            technology commercialization, and innovation strategies.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ IP awareness workshops</li>
                            <li>✓ Patent search training</li>
                            <li>✓ Commercialization strategies</li>
                            <li>✓ Innovation management</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-red-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">💡</div>
                        <h4 class="text-xl font-bold text-red-900 mb-3">Innovation Consulting</h4>
                        <p class="text-gray-700 mb-4">
                            Expert advice on protecting innovations, managing IP portfolios, and developing 
                            commercialization strategies for research outputs.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ IP strategy development</li>
                            <li>✓ Technology valuation</li>
                            <li>✓ Licensing negotiations</li>
                            <li>✓ Startup IP guidance</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-teal-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🌐</div>
                        <h4 class="text-xl font-bold text-teal-900 mb-3">Technology Transfer Facilitation</h4>
                        <p class="text-gray-700 mb-4">
                            Connect researchers with industry partners, facilitate technology licensing, 
                            and support spin-off company formation.
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>✓ Technology matching</li>
                            <li>✓ Partner identification</li>
                            <li>✓ Licensing agreement support</li>
                            <li>✓ Startup incubation</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Who Can Benefit -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Who Can Use TISC Services?</h3>
                
                <div class="grid md:grid-cols-4 gap-6">
                    <div class="card text-center">
                        <div class="text-4xl mb-3">👨‍🔬</div>
                        <h4 class="font-bold text-gray-900">Researchers</h4>
                        <p class="text-sm text-gray-600 mt-2">Faculty & students conducting R&D</p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">🚀</div>
                        <h4 class="font-bold text-gray-900">Startups</h4>
                        <p class="text-sm text-gray-600 mt-2">Technology-based entrepreneurs</p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">🏢</div>
                        <h4 class="font-bold text-gray-900">SMEs</h4>
                        <p class="text-sm text-gray-600 mt-2">Small & medium enterprises</p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">💼</div>
                        <h4 class="font-bold text-gray-900">Innovators</h4>
                        <p class="text-sm text-gray-600 mt-2">Independent inventors</p>
                    </div>
                </div>
            </div>
            
            <!-- Available Databases -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Access to Premium Databases</h3>
                
                <div class="bg-blue-50 p-8 rounded-lg">
                    <div class="grid md:grid-cols-2 gap-6">
                        <div>
                            <h4 class="font-bold text-blue-900 mb-3">Patent Databases</h4>
                            <ul class="space-y-2 text-gray-700 text-sm">
                                <li>✓ WIPO PATENTSCOPE</li>
                                <li>✓ Espacenet (EPO)</li>
                                <li>✓ USPTO Patent Database</li>
                                <li>✓ JPO Patent Database</li>
                                <li>✓ Google Patents</li>
                                <li>✓ Patent Analytics Tools</li>
                            </ul>
                        </div>
                        <div>
                            <h4 class="font-bold text-blue-900 mb-3">Scientific Literature</h4>
                            <ul class="space-y-2 text-gray-700 text-sm">
                                <li>✓ Research4Life Access</li>
                                <li>✓ IEEE Xplore</li>
                                <li>✓ ScienceDirect</li>
                                <li>✓ SpringerLink</li>
                                <li>✓ Wiley Online Library</li>
                                <li>✓ Technical Standards (ISO, IEC)</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- How to Access -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">How to Access TISC Services</h3>
                
                <div class="bg-gray-100 p-8 rounded-lg">
                    <div class="space-y-6">
                        <div class="flex items-start">
                            <div class="bg-lime-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Registration</h4>
                                <p class="text-gray-700">
                                    Register on the TISC portal with basic information about your innovation 
                                    or research area. Registration is free and takes only 5 minutes.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-lime-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Service Request</h4>
                                <p class="text-gray-700">
                                    Submit a service request specifying your needs (patent search, IP advice, etc.). 
                                    TISC team will respond within 48 hours.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-lime-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Consultation</h4>
                                <p class="text-gray-700">
                                    Meet with TISC experts to discuss your requirements. Get personalized 
                                    guidance on IP protection and commercialization strategies.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-lime-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Service Delivery</h4>
                                <p class="text-gray-700">
                                    Receive the requested service (search report, training, etc.) with 
                                    follow-up support as needed. All services are confidential.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Success Metrics -->
            <div class="bg-gradient-to-r from-lime-600 to-green-700 text-white p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold mb-6 text-center">TISC Impact (2023-2024)</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
                    <div>
                        <div class="text-4xl font-bold mb-2">850+</div>
                        <div class="text-lime-100">Service Requests</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">320</div>
                        <div class="text-lime-100">Patent Searches</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">45</div>
                        <div class="text-lime-100">Patents Filed</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">28</div>
                        <div class="text-lime-100">Training Sessions</div>
                    </div>
                </div>
            </div>
            
            <!-- Upcoming Trainings -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Upcoming Training Programs</h3>
                
                <div class="space-y-4">
                    <div class="card border-l-4 border-blue-600">
                        <div class="flex justify-between items-start">
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Introduction to Patent Searching</h4>
                                <p class="text-sm text-gray-600 mb-2">📅 March 18, 2026 | 🕐 2:00 PM - 5:00 PM | 📍 TISC Lab</p>
                                <p class="text-gray-700 text-sm">
                                    Hands-on training on using patent databases and conducting effective searches
                                </p>
                            </div>
                            <a href="#" class="btn-primary text-sm whitespace-nowrap">Register</a>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600">
                        <div class="flex justify-between items-start">
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">IP Management for Startups</h4>
                                <p class="text-sm text-gray-600 mb-2">📅 March 25, 2026 | 🕐 10:00 AM - 4:00 PM | 📍 Virtual</p>
                                <p class="text-gray-700 text-sm">
                                    Protecting intellectual property in early-stage ventures
                                </p>
                            </div>
                            <a href="#" class="btn-primary text-sm whitespace-nowrap">Register</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-lime-600 to-green-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Start Your Innovation Journey</h3>
                <p class="text-xl mb-8 text-lime-100">
                    Access world-class IP services and technology intelligence - completely free
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-4">
                    <a href="#" class="bg-white text-green-600 px-8 py-4 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Register for TISC Services
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-4 rounded-lg font-bold hover:bg-white hover:text-green-600 transition inline-block">
                        Schedule Consultation
                    </a>
                </div>
                <p class="mt-6 text-lime-100">
                    📧 tisc@oric.edu | 📞 +92 (XX) XXXX-XXXX ext. 123
                </p>
            </div>
        </div>
    </section>
</asp:Content>
