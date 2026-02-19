<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Community Outreach - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-rose-600 to-pink-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Community Outreach Programs</h1>
            <p class="text-xl">Connecting Research with Social Impact</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Our Mission</h2>
                <p class="text-lg text-gray-700 max-w-4xl mx-auto">
                    ORIC is committed to translating research into meaningful social impact. Our outreach 
                    programs connect university resources with community needs, creating sustainable solutions 
                    and fostering partnerships for societal development.
                </p>
            </div>
            
            <!-- Focus Areas -->
            <div class="grid md:grid-cols-4 gap-6 mb-12">
                <div class="card text-center">
                    <div class="text-4xl mb-3">🎓</div>
                    <h3 class="font-bold text-gray-900">Education</h3>
                </div>
                <div class="card text-center">
                    <div class="text-4xl mb-3">🏥</div>
                    <h3 class="font-bold text-gray-900">Health</h3>
                </div>
                <div class="card text-center">
                    <div class="text-4xl mb-3">🌱</div>
                    <h3 class="font-bold text-gray-900">Environment</h3>
                </div>
                <div class="card text-center">
                    <div class="text-4xl mb-3">💼</div>
                    <h3 class="font-bold text-gray-900">Livelihoods</h3>
                </div>
            </div>
            
            <!-- Major Programs -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Outreach Initiatives</h3>
                
                <div class="space-y-8">
                    <div class="card border-l-4 border-blue-600">
                        <h4 class="text-xl font-bold text-blue-900 mb-3">Science for All - Public Lectures</h4>
                        <p class="text-gray-700 mb-4">
                            Monthly public lectures making scientific research accessible to the general community. 
                            Topics cover health, technology, environment, and social issues. Free and open to all, 
                            with special outreach to schools and colleges.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-blue-50 p-4 rounded">
                            <div>
                                <strong>Frequency:</strong> Monthly
                            </div>
                            <div>
                                <strong>Reach:</strong> 500+ attendees/year
                            </div>
                            <div>
                                <strong>Topics:</strong> Multidisciplinary
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-green-600">
                        <h4 class="text-xl font-bold text-green-900 mb-3">Rural Health Awareness Campaigns</h4>
                        <p class="text-gray-700 mb-4">
                            Faculty and students conduct health awareness camps in rural areas, providing free 
                            medical consultations, health screenings, and educational sessions on preventive 
                            healthcare, nutrition, and sanitation.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-green-50 p-4 rounded">
                            <div>
                                <strong>Villages Served:</strong> 25+
                            </div>
                            <div>
                                <strong>Beneficiaries:</strong> 3,000+ annually
                            </div>
                            <div>
                                <strong>Services:</strong> Free health checkups
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-purple-600">
                        <h4 class="text-xl font-bold text-purple-900 mb-3">Clean Water & Sanitation Project</h4>
                        <p class="text-gray-700 mb-4">
                            Engineering faculty collaborate with communities to design and implement sustainable 
                            water filtration systems. Students gain practical experience while communities receive 
                            access to clean drinking water.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-purple-50 p-4 rounded">
                            <div>
                                <strong>Systems Installed:</strong> 12
                            </div>
                            <div>
                                <strong>Population Served:</strong> 5,000+
                            </div>
                            <div>
                                <strong>Partner:</strong> Local Government
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-orange-600">
                        <h4 class="text-xl font-bold text-orange-900 mb-3">Digital Literacy for Seniors</h4>
                        <p class="text-gray-700 mb-4">
                            Computer Science students volunteer to teach basic digital skills to senior citizens 
                            in the community. Free 6-week courses covering smartphone usage, internet safety, 
                            online banking, and social media.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-orange-50 p-4 rounded">
                            <div>
                                <strong>Participants:</strong> 200+ trained
                            </div>
                            <div>
                                <strong>Student Volunteers:</strong> 50+
                            </div>
                            <div>
                                <strong>Sessions:</strong> 4 batches/year
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-teal-600">
                        <h4 class="text-xl font-bold text-teal-900 mb-3">Women's Entrepreneurship Training</h4>
                        <p class="text-gray-700 mb-4">
                            Business faculty conduct free entrepreneurship training for women in underserved 
                            communities. Program includes business planning, financial literacy, marketing, 
                            and access to micro-credit resources.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-teal-50 p-4 rounded">
                            <div>
                                <strong>Women Trained:</strong> 150+
                            </div>
                            <div>
                                <strong>Businesses Started:</strong> 45
                            </div>
                            <div>
                                <strong>Success Rate:</strong> 70%
                            </div>
                        </div>
                    </div>
                    
                    <div class="card border-l-4 border-red-600">
                        <h4 class="text-xl font-bold text-red-900 mb-3">Agricultural Innovation Program</h4>
                        <p class="text-gray-700 mb-4">
                            Agriculture/Life Sciences faculty work with farmers to introduce climate-resilient 
                            crops, modern farming techniques, and organic pest control methods. Demonstration 
                            plots established for practical training.
                        </p>
                        <div class="grid md:grid-cols-3 gap-4 text-sm bg-red-50 p-4 rounded">
                            <div>
                                <strong>Farmers Trained:</strong> 300+
                            </div>
                            <div>
                                <strong>Crop Yield Increase:</strong> 25-35%
                            </div>
                            <div>
                                <strong>Demo Farms:</strong> 5 locations
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Partnership Opportunities -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Partnership Opportunities</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card bg-blue-50">
                        <h4 class="text-lg font-bold text-blue-900 mb-3">For Organizations</h4>
                        <p class="text-gray-700 mb-3">
                            NGOs, government agencies, and social enterprises can partner with us for:
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>• Research collaborations on social issues</li>
                            <li>• Impact assessment and evaluation</li>
                            <li>• Training and capacity building</li>
                            <li>• Student volunteer programs</li>
                            <li>• Expert consultancy</li>
                        </ul>
                    </div>
                    
                    <div class="card bg-green-50">
                        <h4 class="text-lg font-bold text-green-900 mb-3">For Communities</h4>
                        <p class="text-gray-700 mb-3">
                            Communities can request support for:
                        </p>
                        <ul class="space-y-2 text-gray-700 text-sm">
                            <li>• Health and education programs</li>
                            <li>• Environmental sustainability projects</li>
                            <li>• Skill development training</li>
                            <li>• Technology adoption support</li>
                            <li>• Economic development initiatives</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Student Involvement -->
            <div class="bg-yellow-50 border-l-4 border-yellow-600 p-6 mb-12">
                <h3 class="text-xl font-bold text-yellow-900 mb-4">Get Involved as a Student</h3>
                <p class="text-gray-700 mb-4">
                    Students can participate in outreach programs to gain practical experience, develop 
                    soft skills, and contribute to society. Volunteer hours count toward community service 
                    requirements and enhance your resume.
                </p>
                <a href="#" class="btn-primary inline-block">Join as Volunteer</a>
            </div>
            
            <!-- Impact Statistics -->
            <div class="bg-gradient-to-r from-rose-600 to-pink-700 text-white p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold mb-6 text-center">Outreach Impact (2023-2024)</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
                    <div>
                        <div class="text-4xl font-bold mb-2">15,000+</div>
                        <div class="text-rose-100">Beneficiaries</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">35</div>
                        <div class="text-rose-100">Programs</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">250</div>
                        <div class="text-rose-100">Student Volunteers</div>
                    </div>
                    <div>
                        <div class="text-4xl font-bold mb-2">18</div>
                        <div class="text-rose-100">Partner Organizations</div>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gray-100 p-8 rounded-lg">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Partner With Us for Social Impact</h3>
                <p class="text-gray-700 mb-6">
                    Let's work together to create positive change in our communities
                </p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="btn-primary">Request Partnership</a>
                    <a href="#" class="bg-white border-2 border-rose-600 text-rose-600 px-6 py-3 rounded-lg font-semibold hover:bg-rose-50 transition">
                        View Upcoming Events
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
