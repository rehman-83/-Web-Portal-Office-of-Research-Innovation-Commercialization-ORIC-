<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    IFGSJ - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">International Forum for Graduate Studies & Jobs (IFGSJ)</h1>
            <p class="text-xl">Bridging Graduate Studies and Career Opportunities</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About IFGSJ</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The International Forum for Graduate Studies & Jobs (IFGSJ) is a platform that connects students 
                    and researchers with international opportunities for graduate studies, research positions, and 
                    career advancement. We facilitate access to scholarships, fellowships, and job placements worldwide.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-12">
                <div class="card text-center">
                    <div class="text-4xl text-blue-600 mb-3">🎓</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Graduate Programs</h3>
                    <p class="text-gray-600">Access to MS/PhD opportunities at top universities</p>
                </div>
                
                <div class="card text-center">
                    <div class="text-4xl text-blue-600 mb-3">💼</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Job Placements</h3>
                    <p class="text-gray-600">International research and academic positions</p>
                </div>
                
                <div class="card text-center">
                    <div class="text-4xl text-blue-600 mb-3">💰</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Scholarships</h3>
                    <p class="text-gray-600">Information on fully funded scholarship programs</p>
                </div>
            </div>
            
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Our Services</h3>
                <div class="space-y-4">
                    <div class="flex items-start space-x-4 card">
                        <div class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">1</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-1">Information Dissemination</h4>
                            <p class="text-gray-700">Regular updates on scholarships, graduate programs, and job opportunities through email, website, and social media.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4 card">
                        <div class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">2</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-1">Application Assistance</h4>
                            <p class="text-gray-700">Guidance on preparing applications, writing statements of purpose, and securing recommendation letters.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4 card">
                        <div class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">3</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-1">Networking Events</h4>
                            <p class="text-gray-700">Organizing sessions with international university representatives and alumni working abroad.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4 card">
                        <div class="flex-shrink-0 w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">4</div>
                        <div>
                            <h4 class="font-bold text-gray-900 mb-1">Workshops & Seminars</h4>
                            <p class="text-gray-700">Training on GRE/IELTS preparation, visa processes, and adapting to international academic environments.</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8 text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Stay Connected</h3>
                <p class="text-gray-700 mb-6">Subscribe to our mailing list to receive updates on international opportunities</p>
                <a href="../contact/Process_Form.aspx" class="btn-primary">Subscribe Now</a>
            </div>
        </div>
    </section>
</asp:Content>
