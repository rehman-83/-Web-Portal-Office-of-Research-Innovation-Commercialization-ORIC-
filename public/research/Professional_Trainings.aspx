<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Professional Training Programs - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-orange-600 to-red-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Professional Training Programs</h1>
            <p class="text-xl">Building Research Capacity Through Excellence in Training</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Research Capacity Building</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    ORIC organizes comprehensive training programs to enhance research skills, promote best practices, 
                    and foster a culture of excellence in research and innovation.
                </p>
            </div>
            
            <!-- Upcoming Workshops -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6">Upcoming Workshops</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <h4 class="text-xl font-bold text-gray-900">Grant Writing Masterclass</h4>
                            <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Upcoming</span>
                        </div>
                        <p class="text-gray-600 mb-2">📅 March 15-17, 2026 | 9:00 AM - 5:00 PM</p>
                        <p class="text-gray-600 mb-2">📍 ORIC Conference Hall</p>
                        <p class="text-gray-700 mb-4">
                            Comprehensive 3-day workshop on writing competitive research proposals for HEC, 
                            PSF, and international funding agencies.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Register Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <h4 class="text-xl font-bold text-gray-900">Research Ethics & Integrity</h4>
                            <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Upcoming</span>
                        </div>
                        <p class="text-gray-600 mb-2">📅 March 22-23, 2026 | 10:00 AM - 4:00 PM</p>
                        <p class="text-gray-600 mb-2">📍 Virtual/Hybrid</p>
                        <p class="text-gray-700 mb-4">
                            Essential training on research ethics, plagiarism prevention, data integrity, 
                            and responsible conduct of research.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Register Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <h4 class="text-xl font-bold text-gray-900">Statistical Analysis with SPSS</h4>
                            <span class="bg-purple-100 text-purple-800 text-xs font-semibold px-3 py-1 rounded-full">Upcoming</span>
                        </div>
                        <p class="text-gray-600 mb-2">📅 April 5-9, 2026 | 2:00 PM - 6:00 PM</p>
                        <p class="text-gray-600 mb-2">📍 Computer Lab 3</p>
                        <p class="text-gray-700 mb-4">
                            Hands-on training in statistical data analysis using SPSS, covering descriptive 
                            statistics, hypothesis testing, and advanced methods.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Register Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <h4 class="text-xl font-bold text-gray-900">Scientific Paper Writing</h4>
                            <span class="bg-orange-100 text-orange-800 text-xs font-semibold px-3 py-1 rounded-full">Upcoming</span>
                        </div>
                        <p class="text-gray-600 mb-2">📅 April 12-14, 2026 | 9:00 AM - 1:00 PM</p>
                        <p class="text-gray-600 mb-2">📍 ORIC Conference Hall</p>
                        <p class="text-gray-700 mb-4">
                            Learn to write and publish in high-impact journals, covering manuscript structure, 
                            peer review process, and journal selection.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Register Now →</a>
                    </div>
                </div>
            </div>
            
            <!-- Training Categories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6">Training Categories</h3>
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🔬</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Research Methodology</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• Quantitative Research Methods</li>
                            <li>• Qualitative Research Techniques</li>
                            <li>• Mixed Methods Approach</li>
                            <li>• Research Design</li>
                        </ul>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">💻</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Data Analysis Tools</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• SPSS & R Programming</li>
                            <li>• Python for Data Science</li>
                            <li>• NVivo for Qualitative Analysis</li>
                            <li>• AMOS & SmartPLS</li>
                        </ul>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">📊</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Academic Writing</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• Scientific Paper Writing</li>
                            <li>• Thesis Writing</li>
                            <li>• Literature Review</li>
                            <li>• Citation Management</li>
                        </ul>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🎯</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Grant & Funding</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• Proposal Writing</li>
                            <li>• Budget Development</li>
                            <li>• Project Management</li>
                            <li>• Compliance & Reporting</li>
                        </ul>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">⚖️</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Ethics & Compliance</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• Research Ethics</li>
                            <li>• IRB/IBC Applications</li>
                            <li>• Plagiarism Prevention</li>
                            <li>• Data Management</li>
                        </ul>
                    </div>
                    
                    <div class="card text-center">
                        <div class="text-5xl mb-4">🚀</div>
                        <h4 class="text-xl font-bold text-gray-900 mb-3">Innovation & IP</h4>
                        <ul class="text-gray-700 text-left space-y-2">
                            <li>• Intellectual Property Rights</li>
                            <li>• Patent Filing</li>
                            <li>• Technology Transfer</li>
                            <li>• Startup Development</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Past Training Statistics -->
            <div class="bg-gradient-to-r from-blue-600 to-blue-800 text-white p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold mb-6 text-center">Training Impact (2023-2024)</h3>
                <div class="grid md:grid-cols-4 gap-6 text-center">
                    <div>
                        <div class="text-4xl font-bold mb-2">48</div>
                        <div class="text-blue-100">Training Sessions</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">1,250+</div>
                        <div class="text-blue-100">Participants</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">85%</div>
                        <div class="text-blue-100">Satisfaction Rate</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">320</div>
                        <div class="text-blue-100">Training Hours</div>
                    </div>
                </div>
            </div>
            
            <!-- Registration Info -->
            <div class="text-center bg-gray-100 p-8 rounded-lg">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Join Our Training Programs</h3>
                <p class="text-gray-700 mb-6">
                    All training programs are free for university faculty and students. Registration is required.
                </p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="btn-primary">View Training Calendar</a>
                    <a href="#" class="bg-white text-blue-600 px-6 py-3 rounded-lg font-semibold hover:bg-gray-50 transition">
                        Request Custom Training
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
