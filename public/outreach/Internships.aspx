<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Internships - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-violet-600 to-purple-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Research Internship Programs</h1>
            <p class="text-xl">Hands-On Research Experience for Students</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About Research Internships</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    ORIC offers research internship opportunities for undergraduate and graduate students 
                    to gain practical research experience under faculty supervision. Internships are available 
                    in various disciplines throughout the year.
                </p>
            </div>
            
            <!-- Program Types -->
            <div class="grid md:grid-cols-3 gap-6 mb-12">
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">☀️</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Summer Internships</h3>
                    <p class="text-gray-700 mb-3">
                        8-12 week intensive research experience during summer break
                    </p>
                    <div class="text-sm text-gray-600">
                        <strong>Duration:</strong> June - August
                    </div>
                </div>
                
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">📚</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Semester Internships</h3>
                    <p class="text-gray-700 mb-3">
                        Part-time research work alongside academic coursework
                    </p>
                    <div class="text-sm text-gray-600">
                        <strong>Duration:</strong> 15-20 hours/week
                    </div>
                </div>
                
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">🎯</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Project-Based</h3>
                    <p class="text-gray-700 mb-3">
                        Work on specific research projects with defined deliverables
                    </p>
                    <div class="text-sm text-gray-600">
                        <strong>Duration:</strong> Flexible (3-6 months)
                    </div>
                </div>
            </div>
            
            <!-- Available Positions -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Current Openings</h3>
                
                <div class="space-y-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <div>
                                <h4 class="text-xl font-bold text-gray-900">Machine Learning Research Intern</h4>
                                <p class="text-gray-600">Department of Computer Science</p>
                            </div>
                            <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Open</span>
                        </div>
                        <p class="text-gray-700 mb-3">
                            Work on deep learning models for medical image analysis. Experience with Python, 
                            TensorFlow/PyTorch required.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm mb-3">
                            <div>
                                <strong>Supervisor:</strong> Dr. Ahmed Khan
                            </div>
                            <div>
                                <strong>Duration:</strong> 8 weeks
                            </div>
                            <div>
                                <strong>Stipend:</strong> PKR 15,000/month
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Apply Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <div>
                                <h4 class="text-xl font-bold text-gray-900">Biotechnology Research Assistant</h4>
                                <p class="text-gray-600">Department of Life Sciences</p>
                            </div>
                            <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Open</span>
                        </div>
                        <p class="text-gray-700 mb-3">
                            Assist in microbial genetics research. Lab experience and knowledge of molecular 
                            biology techniques preferred.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm mb-3">
                            <div>
                                <strong>Supervisor:</strong> Dr. Nadia Iqbal
                            </div>
                            <div>
                                <strong>Duration:</strong> 12 weeks
                            </div>
                            <div>
                                <strong>Stipend:</strong> PKR 12,000/month
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Apply Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <div>
                                <h4 class="text-xl font-bold text-gray-900">Data Analysis Intern</h4>
                                <p class="text-gray-600">ORIC Research Support</p>
                            </div>
                            <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Open</span>
                        </div>
                        <p class="text-gray-700 mb-3">
                            Support multiple research projects with statistical analysis. Strong skills in 
                            SPSS, R, or Python required.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm mb-3">
                            <div>
                                <strong>Supervisor:</strong> ORIC Team
                            </div>
                            <div>
                                <strong>Duration:</strong> Semester-long
                            </div>
                            <div>
                                <strong>Stipend:</strong> PKR 10,000/month
                            </div>
                        </div>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Apply Now →</a>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-lg transition-shadow">
                        <div class="flex justify-between items-start mb-3">
                            <div>
                                <h4 class="text-xl font-bold text-gray-900">Renewable Energy Research Intern</h4>
                                <p class="text-gray-600">Department of Engineering</p>
                            </div>
                            <span class="bg-yellow-100 text-yellow-800 text-xs font-semibold px-3 py-1 rounded-full">Upcoming</span>
                        </div>
                        <p class="text-gray-700 mb-3">
                            Solar panel efficiency optimization research. Background in electrical engineering 
                            or physics required.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm mb-3">
                            <div>
                                <strong>Supervisor:</strong> Dr. Muhammad Asif
                            </div>
                            <div>
                                <strong>Duration:</strong> 10 weeks
                            </div>
                            <div>
                                <strong>Stipend:</strong> PKR 15,000/month
                            </div>
                        </div>
                        <p class="text-sm text-gray-600">Applications open: March 1, 2026</p>
                    </div>
                </div>
            </div>
            
            <!-- Eligibility & Benefits -->
            <div class="grid md:grid-cols-2 gap-6 mb-12">
                <div class="card bg-blue-50 border-l-4 border-blue-600">
                    <h3 class="text-xl font-bold text-blue-900 mb-4">Eligibility Criteria</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>✓ Currently enrolled student (BS/MS/PhD)</li>
                        <li>✓ Minimum CGPA of 3.0/4.0</li>
                        <li>✓ Strong academic record in relevant field</li>
                        <li>✓ Faculty recommendation required</li>
                        <li>✓ Commitment for full internship duration</li>
                        <li>✓ Research proposal or interest statement</li>
                    </ul>
                </div>
                
                <div class="card bg-green-50 border-l-4 border-green-600">
                    <h3 class="text-xl font-bold text-green-900 mb-4">Internship Benefits</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>✓ Monthly stipend (PKR 10,000-15,000)</li>
                        <li>✓ Hands-on research experience</li>
                        <li>✓ Faculty mentorship & guidance</li>
                        <li>✓ Certificate of completion</li>
                        <li>✓ Co-authorship opportunities</li>
                        <li>✓ Professional skill development</li>
                    </ul>
                </div>
            </div>
            
            <!-- Application Process -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">How to Apply</h3>
                
                <div class="bg-gray-100 p-8 rounded-lg">
                    <div class="space-y-6">
                        <div class="flex items-start">
                            <div class="bg-violet-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Review Positions</h4>
                                <p class="text-gray-700">
                                    Browse available internship positions and identify opportunities matching 
                                    your interests and qualifications.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-violet-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Prepare Documents</h4>
                                <p class="text-gray-700 mb-2">Gather required documents:</p>
                                <ul class="text-gray-600 text-sm ml-4">
                                    <li>• Updated CV with academic achievements</li>
                                    <li>• Transcript (unofficial copy acceptable)</li>
                                    <li>• Faculty recommendation letter</li>
                                    <li>• Statement of research interest (500 words)</li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-violet-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Submit Application</h4>
                                <p class="text-gray-700">
                                    Apply online through the ORIC portal. Applications reviewed on rolling basis.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-violet-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Interview & Selection</h4>
                                <p class="text-gray-700">
                                    Shortlisted candidates will be interviewed by the supervisor. Selection 
                                    notification within 2 weeks.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Success Stories -->
            <div class="bg-gradient-to-r from-violet-600 to-purple-700 text-white p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold mb-6 text-center">Intern Success Stories</h3>
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="bg-white bg-opacity-20 p-6 rounded-lg">
                        <p class="mb-3 italic">
                            "The internship gave me invaluable hands-on experience and led to my first research 
                            publication. It opened doors for my PhD admission."
                        </p>
                        <p class="font-bold">- Sarah Ahmed, CS Dept</p>
                    </div>
                    <div class="bg-white bg-opacity-20 p-6 rounded-lg">
                        <p class="mb-3 italic">
                            "Working under Dr. Iqbal's supervision helped me develop lab skills that are crucial 
                            for my career in biotechnology."
                        </p>
                        <p class="font-bold">- Ali Hassan, Life Sciences</p>
                    </div>
                    <div class="bg-white bg-opacity-20 p-6 rounded-lg">
                        <p class="mb-3 italic">
                            "The stipend support allowed me to focus on research full-time during summer. 
                            Best decision I made!"
                        </p>
                        <p class="font-bold">- Fatima Khan, Engineering</p>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Ready to Start Your Research Journey?</h3>
                <p class="text-gray-700 mb-6">Apply for an internship position today</p>
                <a href="#" class="btn-primary inline-block">View All Positions & Apply</a>
            </div>
        </div>
    </section>
</asp:Content>
