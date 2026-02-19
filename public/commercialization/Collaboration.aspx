<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Industry-Academia Collaboration - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-sky-600 to-indigo-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Industry-Academia Collaboration</h1>
            <p class="text-xl">Bridging Research and Innovation with Industry Needs</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Collaboration Framework</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    ORIC facilitates strategic partnerships between the university and industry to drive 
                    innovation, solve real-world problems, and create economic value. We connect industry 
                    challenges with academic expertise to deliver mutually beneficial outcomes.
                </p>
            </div>
            
            <!-- Collaboration Models -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Collaboration Opportunities</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🔬</div>
                        <h4 class="text-xl font-bold text-blue-900 mb-3">Contract Research</h4>
                        <p class="text-gray-700 mb-4">
                            Companies sponsor specific research projects conducted by university faculty and 
                            students. Ideal for product development, process optimization, and technical 
                            problem-solving.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ Customized research solutions</li>
                            <li>✓ Access to specialized equipment</li>
                            <li>✓ Expert faculty consultation</li>
                            <li>✓ Flexible project duration</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🤝</div>
                        <h4 class="text-xl font-bold text-green-900 mb-3">Joint Ventures</h4>
                        <p class="text-gray-700 mb-4">
                            Long-term partnerships for collaborative R&D, shared laboratories, and 
                            co-development of innovative products or services.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ Shared investment and risks</li>
                            <li>✓ Joint IP ownership</li>
                            <li>✓ Co-branding opportunities</li>
                            <li>✓ Strategic market positioning</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">👨‍🎓</div>
                        <h4 class="text-xl font-bold text-purple-900 mb-3">Internships & Training</h4>
                        <p class="text-gray-700 mb-4">
                            Companies can host student interns, offer industrial training, or collaborate 
                            on curriculum development to build skilled workforce.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ Access to talented students</li>
                            <li>✓ Fresh perspectives and ideas</li>
                            <li>✓ Future recruitment pipeline</li>
                            <li>✓ Curriculum alignment</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">💡</div>
                        <h4 class="text-xl font-bold text-orange-900 mb-3">Technology Licensing</h4>
                        <p class="text-gray-700 mb-4">
                            License university-developed technologies, patents, and innovations for 
                            commercial application and market deployment.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ Proven technologies</li>
                            <li>✓ Competitive licensing terms</li>
                            <li>✓ Technical support included</li>
                            <li>✓ Exclusive or non-exclusive options</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-teal-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🎯</div>
                        <h4 class="text-xl font-bold text-teal-900 mb-3">Consultancy Services</h4>
                        <p class="text-gray-700 mb-4">
                            Faculty experts provide specialized consulting on technical challenges, 
                            strategic planning, quality assurance, and process improvements.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ Expert domain knowledge</li>
                            <li>✓ Independent assessments</li>
                            <li>✓ Problem-solving support</li>
                            <li>✓ Flexible engagement models</li>
                        </ul>
                    </div>
                    
                    <div class="card border-l-4 border-red-600 hover:shadow-xl transition-shadow">
                        <div class="text-4xl mb-3">🏭</div>
                        <h4 class="text-xl font-bold text-red-900 mb-3">Testing & Calibration</h4>
                        <p class="text-gray-700 mb-4">
                            Access university laboratories for product testing, quality control, 
                            material analysis, and equipment calibration services.
                        </p>
                        <ul class="space-y-2 text-gray-600 text-sm">
                            <li>✓ ISO-certified facilities</li>
                            <li>✓ Advanced instrumentation</li>
                            <li>✓ Certified reports</li>
                            <li>✓ Competitive pricing</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Benefits -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Why Partner With Us?</h3>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🧠</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">Expert Faculty</h4>
                        <p class="text-gray-700 text-sm">
                            Access to PhD-qualified researchers with specialized knowledge across multiple disciplines
                        </p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">⚡</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">Innovation Hub</h4>
                        <p class="text-gray-700 text-sm">
                            State-of-the-art laboratories and research facilities with cutting-edge equipment
                        </p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">💰</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">Cost-Effective</h4>
                        <p class="text-gray-700 text-sm">
                            Competitive pricing and potential for government grants and tax incentives
                        </p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🎓</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">Talent Pipeline</h4>
                        <p class="text-gray-700 text-sm">
                            Early access to skilled graduates and postgraduates for recruitment
                        </p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🌟</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">IP Protection</h4>
                        <p class="text-gray-700 text-sm">
                            Clear IP agreements and confidentiality protections for collaborative projects
                        </p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🌍</div>
                        <h4 class="text-lg font-bold text-gray-900 mb-3">Global Network</h4>
                        <p class="text-gray-700 text-sm">
                            Connections to international research collaborators and funding opportunities
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Success Stories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Collaboration Success Stories</h3>
                
                <div class="space-y-6">
                    <div class="card bg-blue-50">
                        <h4 class="font-bold text-gray-900 mb-2">Tech Solutions Ltd - AI Development</h4>
                        <p class="text-sm text-blue-600 mb-3">Computer Science Department | 2023-2024</p>
                        <p class="text-gray-700">
                            Collaborative development of AI-powered customer service platform. Project resulted 
                            in 3 patents, 2 publications, and successful product launch serving 50+ clients.
                        </p>
                    </div>
                    
                    <div class="card bg-green-50">
                        <h4 class="font-bold text-gray-900 mb-2">BioPharm Industries - Drug Discovery</h4>
                        <p class="text-sm text-green-600 mb-3">Life Sciences Department | 2022-2025</p>
                        <p class="text-gray-700">
                            Joint research on novel antimicrobial compounds. Led to discovery of 2 compounds 
                            now in clinical trials. PKR 15M research funding secured.
                        </p>
                    </div>
                    
                    <div class="card bg-purple-50">
                        <h4 class="font-bold text-gray-900 mb-2">GreenEnergy Corp - Solar Panel Efficiency</h4>
                        <p class="text-sm text-purple-600 mb-3">Engineering Department | 2024</p>
                        <p class="text-gray-700">
                            Optimization of solar panel manufacturing process increased efficiency by 18% while 
                            reducing costs. Technology now implemented across all production lines.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- How to Partner -->
            <div class="bg-gray-100 p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Partnership Process</h3>
                
                <div class="space-y-6">
                    <div class="flex items-start">
                        <div class="bg-sky-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Initial Consultation</h4>
                            <p class="text-gray-700">
                                Contact ORIC to discuss your needs, challenges, or collaboration ideas. 
                                We'll schedule a meeting to understand requirements.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-sky-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Expertise Matching</h4>
                            <p class="text-gray-700">
                                ORIC identifies relevant faculty experts and facilitates introductions. 
                                Technical discussions to define project scope.
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-sky-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Proposal & Agreement</h4>
                            <p class="text-gray-700">
                                Develop detailed project proposal with timeline, budget, and deliverables. 
                                Negotiate and sign collaboration agreement (MoU/Contract).
                            </p>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-sky-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Project Execution</h4>
                            <p class="text-gray-700">
                                Begin collaborative work with regular progress reviews. ORIC provides 
                                administrative and logistical support throughout.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-sky-600 to-indigo-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Let's Innovate Together</h3>
                <p class="text-xl mb-8 text-sky-100">
                    Partner with us to transform ideas into impactful solutions
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-4">
                    <a href="#" class="bg-white text-indigo-600 px-8 py-4 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Request Partnership Meeting
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-4 rounded-lg font-bold hover:bg-white hover:text-indigo-600 transition inline-block">
                        Download Partnership Guide
                    </a>
                </div>
                <p class="mt-6 text-sky-100">
                    📧 partnerships@oric.edu | 📞 +92 (XX) XXXX-XXXX
                </p>
            </div>
        </div>
    </section>
</asp:Content>
