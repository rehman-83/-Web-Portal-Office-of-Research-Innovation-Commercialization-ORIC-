<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Business Incubation Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-20">
        <div class="container mx-auto px-4">
            <h1 class="text-5xl font-bold mb-4">Business Incubation Center (BIC)</h1>
            <p class="text-xl">Nurturing Startups and Entrepreneurship</p>
        </div>
    </section>
    
    <!-- Introduction -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="max-w-4xl mx-auto">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About BIC</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Business Incubation Center (BIC) at ORIC is dedicated to fostering entrepreneurship and 
                    innovation by providing a nurturing environment for startups and early-stage businesses. We 
                    offer comprehensive support including mentorship, funding opportunities, workspace, and 
                    networking resources to help transform innovative ideas into successful ventures.
                </p>
                <p class="text-lg text-gray-700">
                    Our mission is to bridge the gap between academic research and commercial success, creating 
                    a thriving ecosystem that encourages risk-taking, innovation, and sustainable business growth.
                </p>
            </div>
        </div>
    </section>
    
    <!-- Services Offered -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-center text-gray-900 mb-12">Our Services</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Mentorship Programs</h3>
                    <p class="text-gray-600">Connect with experienced entrepreneurs and industry experts for guidance.</p>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Funding Support</h3>
                    <p class="text-gray-600">Access to seed funding, grants, and investor networks.</p>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Co-Working Space</h3>
                    <p class="text-gray-600">Modern workspace with all necessary facilities and infrastructure.</p>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Training Workshops</h3>
                    <p class="text-gray-600">Regular workshops on business development, marketing, and finance.</p>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Networking Events</h3>
                    <p class="text-gray-600">Connect with potential partners, investors, and fellow entrepreneurs.</p>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Legal & IP Support</h3>
                    <p class="text-gray-600">Assistance with legal matters, patents, and intellectual property.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Success Stories -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-center text-gray-900 mb-12">Success Stories</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-gray-50 rounded-lg p-6">
                    <div class="text-4xl font-bold text-blue-600 mb-2">15+</div>
                    <p class="text-gray-600">Successful Startups</p>
                </div>
                
                <div class="bg-gray-50 rounded-lg p-6">
                    <div class="text-4xl font-bold text-blue-600 mb-2">PKR 50M+</div>
                    <p class="text-gray-600">Total Funding Raised</p>
                </div>
                
                <div class="bg-gray-50 rounded-lg p-6">
                    <div class="text-4xl font-bold text-blue-600 mb-2">200+</div>
                    <p class="text-gray-600">Jobs Created</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Application Process -->
    <section class="py-16 bg-blue-50">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-center text-gray-900 mb-12">How to Apply</h2>
            <div class="max-w-3xl mx-auto">
                <div class="space-y-6">
                    <div class="flex items-start space-x-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">1</div>
                        <div>
                            <h3 class="text-xl font-bold mb-2">Submit Application</h3>
                            <p class="text-gray-600">Fill out the online application form with your business idea and plan.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">2</div>
                        <div>
                            <h3 class="text-xl font-bold mb-2">Initial Screening</h3>
                            <p class="text-gray-600">Our team reviews your application for feasibility and innovation.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">3</div>
                        <div>
                            <h3 class="text-xl font-bold mb-2">Pitch Presentation</h3>
                            <p class="text-gray-600">Selected candidates present their ideas to our evaluation committee.</p>
                        </div>
                    </div>
                    
                    <div class="flex items-start space-x-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">4</div>
                        <div>
                            <h3 class="text-xl font-bold mb-2">Onboarding</h3>
                            <p class="text-gray-600">Successful applicants join the BIC program and receive support.</p>
                        </div>
                    </div>
                </div>
                
                <div class="text-center mt-12">
                    <a href="../Calls.aspx" class="btn-primary">Apply Now</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Contact CTA -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 text-center">
            <h2 class="text-3xl font-bold text-gray-900 mb-4">Have Questions?</h2>
            <p class="text-lg text-gray-600 mb-8">Our team is here to help you with any queries about the BIC program.</p>
            <a href="../contact/Process_Form.aspx" class="btn-primary">Contact BIC Team</a>
        </div>
    </section>
</asp:Content>
