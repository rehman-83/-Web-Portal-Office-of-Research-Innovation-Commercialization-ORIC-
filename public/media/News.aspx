<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    News & Announcements - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-red-600 to-rose-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">News & Announcements</h1>
            <p class="text-xl">Latest Updates from ORIC</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <!-- Featured News -->
            <div class="mb-12">
                <div class="card border-l-4 border-red-600 bg-red-50">
                    <div class="flex items-center gap-2 mb-3">
                        <span class="bg-red-600 text-white text-xs font-semibold px-3 py-1 rounded-full">Featured</span>
                        <span class="text-sm text-gray-600">February 15, 2026</span>
                    </div>
                    <h2 class="text-2xl font-bold text-gray-900 mb-3">
                        University Secures PKR 50 Million Research Grant from HEC
                    </h2>
                    <p class="text-gray-700 mb-4">
                        In a major achievement, the university has been awarded PKR 50 million through HEC's 
                        National Research Program for Excellence (NRPE). The grant will support cutting-edge 
                        research in artificial intelligence applications for healthcare diagnostics. Principal 
                        Investigator Dr. Ahmed Khan will lead a team of 15 researchers on this 3-year project.
                    </p>
                    <a href="#" class="text-red-600 font-semibold hover:underline">Read Full Story →</a>
                </div>
            </div>
            
            <!-- Latest News -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Recent News</h3>
                
                <div class="space-y-6">
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Research</span>
                            <span class="text-sm text-gray-600">February 12, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            Faculty Member Publishes in Nature Communications
                        </h4>
                        <p class="text-gray-700 mb-3">
                            Dr. Nadia Iqbal's groundbreaking research on antibiotic-resistant bacteria has been 
                            published in Nature Communications (Impact Factor: 16.6). The study identifies novel 
                            mechanisms that could lead to new treatment strategies.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Award</span>
                            <span class="text-sm text-gray-600">February 10, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            Student Wins Best Paper Award at IEEE Conference
                        </h4>
                        <p class="text-gray-700 mb-3">
                            PhD student Sarah Ahmed received the Best Paper Award at the International IEEE 
                            Conference on Machine Learning Applications. Her research on deep learning for 
                            medical image analysis impressed international experts.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-purple-100 text-purple-800 text-xs font-semibold px-3 py-1 rounded-full">Partnership</span>
                            <span class="text-sm text-gray-600">February 8, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            MoU Signed with Leading Tech Company for Joint Research
                        </h4>
                        <p class="text-gray-700 mb-3">
                            ORIC facilitated signing of a Memorandum of Understanding between the university and 
                            TechCorp International for collaborative research on IoT solutions. The partnership 
                            includes PKR 10M investment and 20 internship positions.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-orange-100 text-orange-800 text-xs font-semibold px-3 py-1 rounded-full">Event</span>
                            <span class="text-sm text-gray-600">February 5, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            Annual Research Symposium Showcases 100+ Projects
                        </h4>
                        <p class="text-gray-700 mb-3">
                            The 10th Annual Research Symposium concluded successfully with participation from 
                            over 500 researchers. The three-day event featured keynote speeches, poster 
                            presentations, and networking opportunities.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-teal-100 text-teal-800 text-xs font-semibold px-3 py-1 rounded-full">Achievement</span>
                            <span class="text-sm text-gray-600">February 1, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            University Ranks Among Top 5 in National Research Output
                        </h4>
                        <p class="text-gray-700 mb-3">
                            According to HEC's latest research productivity report, the university has been 
                            ranked 4th nationally in research publications with 450+ papers in 2025. This 
                            represents a 35% increase from previous year.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <div class="flex items-center gap-3 mb-3">
                            <span class="bg-yellow-100 text-yellow-800 text-xs font-semibold px-3 py-1 rounded-full">Announcement</span>
                            <span class="text-sm text-gray-600">January 28, 2026</span>
                        </div>
                        <h4 class="text-xl font-bold text-gray-900 mb-2">
                            Call for Proposals: IMERP Spring 2026 Round
                        </h4>
                        <p class="text-gray-700 mb-3">
                            ORIC announces the Spring 2026 call for Internal Monetary Endowment Research Program 
                            proposals. Faculty members can apply for up to PKR 500,000 per project. Deadline: 
                            April 30, 2026.
                        </p>
                        <a href="#" class="text-blue-600 font-semibold hover:underline">Read More →</a>
                    </div>
                </div>
            </div>
            
            <!-- Announcements -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Important Announcements</h3>
                
                <div class="bg-yellow-50 border-l-4 border-yellow-500 p-6 mb-4">
                    <div class="flex items-start">
                        <div class="text-2xl mr-3">📢</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Research Ethics Training - Mandatory for All Researchers</h4>
                            <p class="text-gray-700 text-sm">
                                All faculty and PhD students must complete online research ethics training by March 31, 2026. 
                                Certificate required for grant applications and IRB approvals.
                            </p>
                        </div>
                    </div>
                </div>
                
                <div class="bg-blue-50 border-l-4 border-blue-500 p-6 mb-4">
                    <div class="flex items-start">
                        <div class="text-2xl mr-3">📅</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">Upcoming Conference Travel Approval Deadline</h4>
                            <p class="text-gray-700 text-sm">
                                Faculty planning to attend international conferences in Q2 2026 must submit pre-approval 
                                requests by March 15, 2026 for reimbursement eligibility.
                            </p>
                        </div>
                    </div>
                </div>
                
                <div class="bg-green-50 border-l-4 border-green-500 p-6">
                    <div class="flex items-start">
                        <div class="text-2xl mr-3">🎯</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-2">New Laboratory Equipment Available for Booking</h4>
                            <p class="text-gray-700 text-sm">
                                ORIC has acquired advanced research equipment including HPLC, PCR machines, and 
                                spectrophotometers. Book online through the equipment portal.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Pagination -->
            <div class="flex justify-center gap-2">
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">Previous</button>
                <button class="px-4 py-2 bg-red-600 text-white rounded">1</button>
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">2</button>
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">3</button>
                <button class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">Next</button>
            </div>
        </div>
    </section>
</asp:Content>
