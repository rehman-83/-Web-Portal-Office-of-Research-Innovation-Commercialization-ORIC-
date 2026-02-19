<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Overseas Pakistani Researchers Program - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-emerald-600 to-teal-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Overseas Pakistani Researchers Program</h1>
            <p class="text-xl">Connecting Global Pakistani Talent with Local Academia</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About the Program</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Overseas Pakistani Researchers (OP) Program is a collaborative initiative to engage 
                    Pakistani researchers working abroad in strengthening research and innovation at the university. 
                    The program facilitates knowledge transfer, joint research projects, and capacity building 
                    through short-term and long-term engagements.
                </p>
            </div>
            
            <div class="grid md:grid-cols-3 gap-6 mb-12">
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">🌍</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Global Network</h3>
                    <p class="text-gray-700">
                        Connect with Pakistani researchers in leading universities worldwide
                    </p>
                </div>
                
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">🤝</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Collaboration</h3>
                    <p class="text-gray-700">
                        Establish joint research projects and student exchange programs
                    </p>
                </div>
                
                <div class="card text-center hover:shadow-xl transition-shadow">
                    <div class="text-5xl mb-4">📚</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Knowledge Transfer</h3>
                    <p class="text-gray-700">
                        Learn from international best practices and cutting-edge research
                    </p>
                </div>
            </div>
            
            <!-- Engagement Categories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Engagement Opportunities</h3>
                
                <div class="space-y-6">
                    <div class="card border-l-4 border-blue-600">
                        <h4 class="text-xl font-bold text-blue-900 mb-3">1. Visiting Faculty Program</h4>
                        <p class="text-gray-700 mb-3">
                            Invite overseas Pakistani researchers as visiting faculty for 2-12 weeks to deliver 
                            specialized courses, workshops, and seminars.
                        </p>
                        <div class="bg-blue-50 p-4 rounded">
                            <strong>Benefits:</strong> Travel, accommodation, honorarium up to PKR 500,000
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600">
                        <h4 class="text-xl font-bold text-green-900 mb-3">2. Joint Research Projects</h4>
                        <p class="text-gray-700 mb-3">
                            Collaborate on research projects with shared expertise, resources, and international 
                            co-authorship opportunities.
                        </p>
                        <div class="bg-green-50 p-4 rounded">
                            <strong>Support:</strong> Research funding, laboratory access, graduate student support
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600">
                        <h4 class="text-xl font-bold text-purple-900 mb-3">3. Remote Collaboration</h4>
                        <p class="text-gray-700 mb-3">
                            Engage as remote supervisor/co-supervisor for PhD students, or collaborate on 
                            grant proposals and publications.
                        </p>
                        <div class="bg-purple-50 p-4 rounded">
                            <strong>Support:</strong> Virtual meeting platforms, document sharing, research support
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600">
                        <h4 class="text-xl font-bold text-orange-900 mb-3">4. Summer Schools & Workshops</h4>
                        <p class="text-gray-700 mb-3">
                            Organize intensive summer schools, boot camps, or specialized workshops in emerging 
                            research areas.
                        </p>
                        <div class="bg-orange-50 p-4 rounded">
                            <strong>Support:</strong> Event organization, marketing, facilities, participant stipends
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Application Process -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">How to Participate</h3>
                
                <div class="bg-gray-100 p-8 rounded-lg">
                    <div class="space-y-6">
                        <div class="flex items-start">
                            <div class="bg-emerald-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">For Overseas Researchers</h4>
                                <p class="text-gray-700">
                                    Register on the OP portal with your CV, research profile, and proposed 
                                    engagement type. Department will review and match with local needs.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-emerald-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">For University Faculty</h4>
                                <p class="text-gray-700">
                                    Submit request through ORIC specifying the expertise needed, project details, 
                                    and preferred engagement duration.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-emerald-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Matching & Approval</h4>
                                <p class="text-gray-700">
                                    ORIC facilitates matching process and seeks approval from relevant committees. 
                                    MoU signed upon approval.
                                </p>
                            </div>
                        </div>
                        
                        <div class="flex items-start">
                            <div class="bg-emerald-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                            <div>
                                <h4 class="font-bold text-gray-900 mb-2">Engagement & Reporting</h4>
                                <p class="text-gray-700">
                                    Execute the collaboration with ORIC support. Submit completion report and 
                                    feedback at the end.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Success Stories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Success Stories</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card bg-blue-50">
                        <h4 class="font-bold text-gray-900 mb-2">Dr. Ali Raza - MIT, USA</h4>
                        <p class="text-sm text-blue-600 mb-3">Machine Learning & AI</p>
                        <p class="text-gray-700 mb-3">
                            Delivered 2-week intensive workshop on Deep Learning, supervised 3 MS theses, 
                            resulted in 2 joint publications in IEEE conferences.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Duration:</strong> 2 weeks | <strong>Year:</strong> 2024
                        </div>
                    </div>
                    
                    <div class="card bg-green-50">
                        <h4 class="font-bold text-gray-900 mb-2">Dr. Sana Malik - Oxford, UK</h4>
                        <p class="text-sm text-green-600 mb-3">Biotechnology</p>
                        <p class="text-gray-700 mb-3">
                            Established joint research project on genomics, trained lab staff on advanced 
                            techniques, co-supervising 2 PhD students remotely.
                        </p>
                        <div class="text-sm text-gray-600">
                            <strong>Duration:</strong> Ongoing | <strong>Year:</strong> 2023-Present
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Statistics -->
            <div class="bg-gradient-to-r from-emerald-600 to-teal-700 text-white p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold mb-6 text-center">Program Impact (2022-2024)</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
                    <div>
                        <div class="text-4xl font-bold mb-2">28</div>
                        <div class="text-emerald-100">OP Researchers</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">42</div>
                        <div class="text-emerald-100">Engagements</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">35</div>
                        <div class="text-emerald-100">Publications</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">15</div>
                        <div class="text-emerald-100">Countries</div>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Join the Program</h3>
                <p class="text-gray-700 mb-6">
                    Whether you're an overseas researcher or university faculty, we invite you to participate
                </p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="btn-primary">Register as OP Researcher</a>
                    <a href="#" class="bg-white border-2 border-emerald-600 text-emerald-600 px-6 py-3 rounded-lg font-semibold hover:bg-emerald-50 transition">
                        Request OP Collaboration
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
