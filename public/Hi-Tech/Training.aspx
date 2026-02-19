<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Technical Training Programs - Hi-Tech Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-green-600 to-emerald-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Hi-Tech Training Programs</h1>
            <p class="text-xl">Advanced Technical Skills & Equipment Training</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About Training Programs</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Hi-Tech Center offers specialized training programs on advanced diagnostic equipment, 
                    laboratory techniques, and quality assurance procedures. Our hands-on training prepares 
                    students and professionals for careers in medical laboratories and research facilities.
                </p>
            </div>
            
            <!-- Training Categories -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Training Programs</h3>
                
                <div class="space-y-6">
                    <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">Clinical Laboratory Technician Training</h4>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-3 py-1 rounded-full">Certification Program</span>
                                </div>
                                <p class="text-gray-700 mb-4">
                                    Comprehensive 6-month program covering all aspects of clinical laboratory work 
                                    including hematology, biochemistry, microbiology, and quality control. Theory 
                                    classes combined with extensive hands-on practice.
                                </p>
                                <div class="grid md:grid-cols-4 gap-4 text-sm">
                                    <div>
                                        <strong>Duration:</strong> 6 months
                                    </div>
                                    <div>
                                        <strong>Schedule:</strong> Mon-Fri, 9 AM - 2 PM
                                    </div>
                                    <div>
                                        <strong>Fee:</strong> PKR 50,000
                                    </div>
                                    <div>
                                        <strong>Next Batch:</strong> April 2026
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn-primary text-sm">Apply Now</a>
                    </div>
                    
                    <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">Molecular Diagnostics Training</h4>
                                    <span class="bg-green-100 text-green-800 text-xs font-semibold px-3 py-1 rounded-full">Advanced Program</span>
                                </div>
                                <p class="text-gray-700 mb-4">
                                    Specialized training in molecular diagnostic techniques including PCR, DNA/RNA 
                                    extraction, gel electrophoresis, and sequencing. Ideal for researchers and 
                                    advanced technicians.
                                </p>
                                <div class="grid md:grid-cols-4 gap-4 text-sm">
                                    <div>
                                        <strong>Duration:</strong> 3 months
                                    </div>
                                    <div>
                                        <strong>Schedule:</strong> Weekend batches
                                    </div>
                                    <div>
                                        <strong>Fee:</strong> PKR 40,000
                                    </div>
                                    <div>
                                        <strong>Next Batch:</strong> March 2026
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn-primary text-sm">Apply Now</a>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">Medical Laboratory Quality Management</h4>
                                    <span class="bg-purple-100 text-purple-800 text-xs font-semibold px-3 py-1 rounded-full">Professional Development</span>
                                </div>
                                <p class="text-gray-700 mb-4">
                                    Training on ISO 15189 standards, quality control procedures, equipment 
                                    calibration, and laboratory accreditation requirements. Essential for lab 
                                    managers and quality officers.
                                </p>
                                <div class="grid md:grid-cols-4 gap-4 text-sm">
                                    <div>
                                        <strong>Duration:</strong> 1 month
                                    </div>
                                    <div>
                                        <strong>Schedule:</strong> Flexible
                                    </div>
                                    <div>
                                        <strong>Fee:</strong> PKR 25,000
                                    </div>
                                    <div>
                                        <strong>Next Batch:</strong> March 2026
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn-primary text-sm">Apply Now</a>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                        <div class="flex justify-between items-start mb-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h4 class="text-xl font-bold text-gray-900">Phlebotomy & Sample Collection</h4>
                                    <span class="bg-orange-100 text-orange-800 text-xs font-semibold px-3 py-1 rounded-full">Short Course</span>
                                </div>
                                <p class="text-gray-700 mb-4">
                                    Intensive training in venipuncture techniques, sample collection procedures, 
                                    safety protocols, and patient interaction. Includes practical assessment and 
                                    certification.
                                </p>
                                <div class="grid md:grid-cols-4 gap-4 text-sm">
                                    <div>
                                        <strong>Duration:</strong> 6 weeks
                                    </div>
                                    <div>
                                        <strong>Schedule:</strong> Evening batches
                                    </div>
                                    <div>
                                        <strong>Fee:</strong> PKR 15,000
                                    </div>
                                    <div>
                                        <strong>Next Batch:</strong> April 2026
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn-primary text-sm">Apply Now</a>
                    </div>
                </div>
            </div>
            
            <!-- Equipment Training -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Equipment-Specific Training</h3>
                <p class="text-gray-700 mb-6">
                    Short-duration training courses on operation and maintenance of specific laboratory equipment
                </p>
                
                <div class="grid md:grid-cols-3 gap-6">
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">Hematology Analyzer Operation</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Complete training on automated hematology analyzers including calibration, 
                            troubleshooting, and quality control
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 3 days</div>
                            <div>💰 Fee: PKR 5,000</div>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">Real-Time PCR Training</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Hands-on training on qPCR machines including protocol optimization, 
                            data analysis, and validation
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 5 days</div>
                            <div>💰 Fee: PKR 8,000</div>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">HPLC System Training</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Advanced training on HPLC operation, method development, maintenance, 
                            and troubleshooting
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 1 week</div>
                            <div>💰 Fee: PKR 10,000</div>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">Microscopy Techniques</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Training in brightfield, darkfield, and fluorescence microscopy with 
                            emphasis on diagnostic applications
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 2 weeks</div>
                            <div>💰 Fee: PKR 6,000</div>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">Electrolyte Analyzer</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Operation and maintenance of electrolyte analyzers including calibration 
                            and quality assurance
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 2 days</div>
                            <div>💰 Fee: PKR 4,000</div>
                        </div>
                    </div>
                    
                    <div class="card hover:shadow-lg transition-shadow">
                        <h4 class="font-bold text-gray-900 mb-2">Immunoassay Systems</h4>
                        <p class="text-sm text-gray-700 mb-3">
                            Training on ELISA and chemiluminescence immunoassay systems for hormone 
                            and biomarker analysis
                        </p>
                        <div class="text-xs text-gray-600 space-y-1">
                            <div>⏱️ Duration: 4 days</div>
                            <div>💰 Fee: PKR 7,000</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Training Features -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Why Train With Us?</h3>
                
                <div class="grid md:grid-cols-4 gap-6">
                    <div class="card text-center">
                        <div class="text-4xl mb-3">🎓</div>
                        <h4 class="font-bold text-gray-900 mb-2">Expert Instructors</h4>
                        <p class="text-sm text-gray-700">
                            Learn from experienced professionals and certified trainers
                        </p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">🔬</div>
                        <h4 class="font-bold text-gray-900 mb-2">Hands-On Practice</h4>
                        <p class="text-sm text-gray-700">
                            Extensive practical sessions with real equipment
                        </p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">📜</div>
                        <h4 class="font-bold text-gray-900 mb-2">Certification</h4>
                        <p class="text-sm text-gray-700">
                            Industry-recognized certificates upon completion
                        </p>
                    </div>
                    <div class="card text-center">
                        <div class="text-4xl mb-3">💼</div>
                        <h4 class="font-bold text-gray-900 mb-2">Job Placement</h4>
                        <p class="text-sm text-gray-700">
                            Career guidance and placement assistance
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Admission Requirements -->
            <div class="bg-yellow-50 border-l-4 border-yellow-500 p-6 mb-8">
                <h3 class="text-xl font-bold text-yellow-900 mb-4">Admission Requirements</h3>
                <div class="grid md:grid-cols-2 gap-6 text-gray-700">
                    <div>
                        <h4 class="font-bold mb-2">General Requirements:</h4>
                        <ul class="space-y-1 text-sm">
                            <li>• Minimum qualification varies by program</li>
                            <li>• Copy of educational certificates</li>
                            <li>• CNIC/Passport copy</li>
                            <li>• Recent passport-size photographs</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-bold mb-2">For Advanced Programs:</h4>
                        <ul class="space-y-1 text-sm">
                            <li>• Bachelor's degree in relevant field</li>
                            <li>• Basic laboratory experience (preferred)</li>
                            <li>• English proficiency</li>
                            <li>• Interview/entrance test may apply</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Contact -->
            <div class="text-center bg-gradient-to-r from-green-600 to-emerald-700 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Start Your Technical Training Journey</h3>
                <p class="text-xl mb-6">
                    Enroll in our programs and advance your career in medical diagnostics
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-4">
                    <a href="#" class="bg-white text-green-600 px-8 py-3 rounded-lg font-bold hover:bg-gray-100 inline-block">
                        Download Brochure
                    </a>
                    <a href="#" class="border-2 border-white text-white px-8 py-3 rounded-lg font-bold hover:bg-white hover:text-green-600 transition inline-block">
                        Apply Online
                    </a>
                </div>
                <p class="mt-6 text-green-100">
                    📞 +92 (XX) XXXX-XXXX | 📧 training@hitechcenter.edu
                </p>
            </div>
        </div>
    </section>
</asp:Content>
