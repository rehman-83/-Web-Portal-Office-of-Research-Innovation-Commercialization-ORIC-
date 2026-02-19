<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Hi-Tech Diagnostic Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-indigo-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Hi-Tech Diagnostic Center</h1>
            <p class="text-xl">Advanced Diagnostic Services & Testing Facilities</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About the Center</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Hi-Tech Diagnostic Center is a state-of-the-art facility equipped with advanced 
                    medical equipment and staffed by experienced professionals. We provide comprehensive 
                    diagnostic services for research purposes, clinical studies, and community health needs.
                </p>
            </div>
            
            <!-- Services Overview -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Our Services</h3>
                
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex items-start gap-4">
                            <div class="bg-blue-100 p-3 rounded">
                                <span class="text-3xl">🔬</span>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-blue-900 mb-3">Laboratory Diagnostics</h4>
                                <ul class="space-y-2 text-gray-700 text-sm">
                                    <li>✓ Complete Blood Count (CBC)</li>
                                    <li>✓ Blood Chemistry Analysis</li>
                                    <li>✓ Lipid Profile</li>
                                    <li>✓ Liver & Kidney Function Tests</li>
                                    <li>✓ Thyroid Function Tests</li>
                                    <li>✓ Diabetes Screening (HbA1c)</li>
                                    <li>✓ Hormone Analysis</li>
                                    <li>✓ Tumor Markers</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="flex items-start gap-4">
                            <div class="bg-green-100 p-3 rounded">
                                <span class="text-3xl">🧬</span>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-green-900 mb-3">Molecular Diagnostics</h4>
                                <ul class="space-y-2 text-gray-700 text-sm">
                                    <li>✓ PCR Testing</li>
                                    <li>✓ DNA/RNA Extraction</li>
                                    <li>✓ Genetic Testing</li>
                                    <li>✓ Viral Load Analysis</li>
                                    <li>✓ Gene Expression Studies</li>
                                    <li>✓ COVID-19 RT-PCR</li>
                                    <li>✓ Hepatitis Screening</li>
                                    <li>✓ HIV Testing</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="flex items-start gap-4">
                            <div class="bg-purple-100 p-3 rounded">
                                <span class="text-3xl">🦠</span>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-purple-900 mb-3">Microbiology</h4>
                                <ul class="space-y-2 text-gray-700 text-sm">
                                    <li>✓ Culture & Sensitivity</li>
                                    <li>✓ Blood Culture</li>
                                    <li>✓ Urine Culture</li>
                                    <li>✓ Stool Analysis</li>
                                    <li>✓ Antibiotic Susceptibility</li>
                                    <li>✓ Fungal Culture</li>
                                    <li>✓ TB Testing</li>
                                    <li>✓ Parasitology</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="flex items-start gap-4">
                            <div class="bg-orange-100 p-3 rounded">
                                <span class="text-3xl">📊</span>
                            </div>
                            <div class="flex-1">
                                <h4 class="text-xl font-bold text-orange-900 mb-3">Imaging Services</h4>
                                <ul class="space-y-2 text-gray-700 text-sm">
                                    <li>✓ Digital X-Ray</li>
                                    <li>✓ Ultrasound</li>
                                    <li>✓ ECG/EKG</li>
                                    <li>✓ Echocardiography</li>
                                    <li>✓ Doppler Studies</li>
                                    <li>✓ Bone Density Scan</li>
                                    <li>✓ Mammography</li>
                                    <li>✓ CT Scan (Referral)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Research Support -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Research Services</h3>
                
                <div class="bg-blue-50 p-8 rounded-lg">
                    <p class="text-gray-700 mb-6">
                        The center provides specialized diagnostic support for research projects, clinical 
                        trials, and academic studies. Faculty and students can access our facilities for 
                        research purposes with prior arrangement.
                    </p>
                    
                    <div class="grid md:grid-cols-3 gap-6">
                        <div class="card bg-white">
                            <h4 class="font-bold text-gray-900 mb-3">Sample Processing</h4>
                            <p class="text-sm text-gray-700">
                                High-volume sample processing for research studies with strict quality control 
                                and documentation
                            </p>
                        </div>
                        <div class="card bg-white">
                            <h4 class="font-bold text-gray-900 mb-3">Custom Testing</h4>
                            <p class="text-sm text-gray-700">
                                Customized testing protocols designed specifically for research project 
                                requirements
                            </p>
                        </div>
                        <div class="card bg-white">
                            <h4 class="font-bold text-gray-900 mb-3">Data Management</h4>
                            <p class="text-sm text-gray-700">
                                Secure data storage and management systems compliant with research ethics and 
                                privacy standards
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Equipment -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Advanced Equipment</h3>
                
                <div class="grid md:grid-cols-4 gap-4">
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Automated Hematology Analyzer</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Biochemistry Analyzer</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Real-Time PCR Machine</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Electrolyte Analyzer</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Immunoassay System</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">HPLC System</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Microscopy Suite</h5>
                    </div>
                    <div class="card text-center">
                        <div class="text-3xl mb-2">⚙️</div>
                        <h5 class="font-bold text-sm">Centrifuge Equipment</h5>
                    </div>
                </div>
            </div>
            
            <!-- Pricing & Hours -->
            <div class="grid md:grid-cols-2 gap-6 mb-12">
                <div class="card bg-gradient-to-r from-blue-600 to-indigo-700 text-white">
                    <h3 class="text-2xl font-bold mb-4">Operating Hours</h3>
                    <div class="space-y-3">
                        <div class="flex justify-between">
                            <span>Monday - Friday:</span>
                            <span class="font-semibold">8:00 AM - 8:00 PM</span>
                        </div>
                        <div class="flex justify-between">
                            <span>Saturday:</span>
                            <span class="font-semibold">9:00 AM - 5:00 PM</span>
                        </div>
                        <div class="flex justify-between">
                            <span>Sunday:</span>
                            <span class="font-semibold">Closed</span>
                        </div>
                        <div class="flex justify-between border-t border-blue-400 pt-3">
                            <span>Emergency Services:</span>
                            <span class="font-semibold">24/7 On-Call</span>
                        </div>
                    </div>
                </div>
                
                <div class="card bg-green-50 border-l-4 border-green-600">
                    <h3 class="text-2xl font-bold text-green-900 mb-4">Special Rates</h3>
                    <ul class="space-y-3 text-gray-700">
                        <li>✓ <strong>University Students & Staff:</strong> 30% discount</li>
                        <li>✓ <strong>Research Projects:</strong> Special packages available</li>
                        <li>✓ <strong>Bulk Testing:</strong> Volume discounts offered</li>
                        <li>✓ <strong>Insurance:</strong> Major insurance accepted</li>
                    </ul>
                    <a href="#" class="mt-4 inline-block text-green-600 font-semibold hover:underline">
                        Download Complete Price List →
                    </a>
                </div>
            </div>
            
            <!-- How to Access -->
            <div class="bg-gray-100 p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">How to Access Services</h3>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="text-center">
                        <div class="bg-blue-600 text-white rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3 text-xl font-bold">1</div>
                        <h4 class="font-bold text-gray-900 mb-2">Walk-In or Appointment</h4>
                        <p class="text-sm text-gray-700">
                            Visit the center directly or book an appointment online to avoid waiting
                        </p>
                    </div>
                    <div class="text-center">
                        <div class="bg-blue-600 text-white rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3 text-xl font-bold">2</div>
                        <h4 class="font-bold text-gray-900 mb-2">Registration</h4>
                        <p class="text-sm text-gray-700">
                            Complete registration with valid ID and prescription (if applicable)
                        </p>
                    </div>
                    <div class="text-center">
                        <div class="bg-blue-600 text-white rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-3 text-xl font-bold">3</div>
                        <h4 class="font-bold text-gray-900 mb-2">Sample Collection & Report</h4>
                        <p class="text-sm text-gray-700">
                            Sample collected by trained staff. Reports available online within 24-48 hours
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Contact -->
            <div class="text-center bg-gradient-to-r from-blue-600 to-indigo-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Schedule Your Diagnostic Test</h3>
                <p class="text-xl mb-6">
                    Book an appointment or contact us for more information
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-4">
                    <a href="#" class="bg-white text-blue-600 px-8 py-3 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Book Appointment Online
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-3 rounded-lg font-bold hover:bg-white hover:text-blue-600 transition inline-block">
                        Contact Center
                    </a>
                </div>
                <p class="mt-6 text-blue-100">
                    📞 +92 (XX) XXXX-XXXX | 📧 hitech@oric.edu | 📍 University Main Campus
                </p>
            </div>
        </div>
    </section>
</asp:Content>
