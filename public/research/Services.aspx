<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Services - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-green-600 to-teal-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Research Services</h1>
            <p class="text-xl">Comprehensive Support for Your Research Journey</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Services We Offer</h2>
                <p class="text-lg text-gray-700">
                    ORIC provides a comprehensive suite of research support services to help faculty 
                    and students excel in their research endeavors.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">📝</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Grant Writing Support</h3>
                    <p class="text-gray-700">
                        Expert assistance in preparing competitive grant proposals, including 
                        proposal development, budget planning, and compliance review.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">📊</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Statistical Analysis</h3>
                    <p class="text-gray-700">
                        Professional statistical consultation and data analysis services using 
                        SPSS, R, Python, and other advanced analytical tools.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">🔬</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Research Design</h3>
                    <p class="text-gray-700">
                        Consultation on research methodology, experimental design, and 
                        sampling strategies for robust research outcomes.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">📚</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Literature Review</h3>
                    <p class="text-gray-700">
                        Assistance with systematic literature reviews, database searches, 
                        and reference management using EndNote and Mendeley.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">✍️</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Manuscript Editing</h3>
                    <p class="text-gray-700">
                        Professional editing and proofreading services to enhance manuscript 
                        quality for submission to high-impact journals.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">📄</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Plagiarism Check</h3>
                    <p class="text-gray-700">
                        Turnitin and iThenticate similarity checking services to ensure 
                        originality and academic integrity.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">🎓</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Thesis Formatting</h3>
                    <p class="text-gray-700">
                        Professional formatting services to ensure theses and dissertations 
                        meet university standards and guidelines.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">🌐</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Research Visibility</h3>
                    <p class="text-gray-700">
                        Support for creating researcher profiles on ORCID, Google Scholar, 
                        ResearchGate, and other academic networks.
                    </p>
                </div>
                
                <div class="card hover:shadow-xl transition-shadow">
                    <div class="text-blue-600 text-4xl mb-3">💻</div>
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Software Training</h3>
                    <p class="text-gray-700">
                        Training workshops on research software including NVivo, MATLAB, 
                        SPSS, GraphPad Prism, and LaTeX.
                    </p>
                </div>
            </div>
            
            <div class="bg-blue-50 p-8 rounded-lg mb-8">
                <h2 class="text-2xl font-bold text-gray-900 mb-6">Service Request Procedure</h2>
                <div class="space-y-4">
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center flex-shrink-0 mr-4">1</div>
                        <div>
                            <h4 class="font-bold text-gray-900">Submit Request Form</h4>
                            <p class="text-gray-700">Fill out the online service request form available on the ORIC portal</p>
                        </div>
                    </div>
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center flex-shrink-0 mr-4">2</div>
                        <div>
                            <h4 class="font-bold text-gray-900">Initial Consultation</h4>
                            <p class="text-gray-700">Meet with the relevant service provider to discuss your needs</p>
                        </div>
                    </div>
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center flex-shrink-0 mr-4">3</div>
                        <div>
                            <h4 class="font-bold text-gray-900">Service Delivery</h4>
                            <p class="text-gray-700">Receive the requested service within the agreed timeline</p>
                        </div>
                    </div>
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-8 h-8 flex items-center justify-center flex-shrink-0 mr-4">4</div>
                        <div>
                            <h4 class="font-bold text-gray-900">Feedback</h4>
                            <p class="text-gray-700">Provide feedback to help us improve our services</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="text-center">
                <a href="#" class="btn-primary inline-block">Request a Service</a>
            </div>
        </div>
    </section>
</asp:Content>
