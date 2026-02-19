<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Approved PhD Supervisors - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-purple-600 to-indigo-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Approved PhD Supervisors</h1>
            <p class="text-xl">Distinguished Faculty for Doctoral Research</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Supervisor Directory</h2>
                <p class="text-lg text-gray-700 mb-6">
                    Our approved PhD supervisors are distinguished scholars with expertise across various 
                    disciplines. They have demonstrated excellence in research, publication, and student mentorship.
                </p>
                
                <div class="bg-blue-50 p-6 rounded-lg mb-8">
                    <h3 class="text-xl font-bold text-gray-900 mb-3">Supervisor Eligibility Criteria</h3>
                    <ul class="grid md:grid-cols-2 gap-3 text-gray-700">
                        <li>• PhD degree in relevant field</li>
                        <li>• Minimum 3 publications in HEC-recognized journals</li>
                        <li>• Active research profile</li>
                        <li>• HEC-approved supervisor status</li>
                        <li>• Experience in research supervision</li>
                        <li>• Availability for student mentorship</li>
                    </ul>
                </div>
            </div>
            
            <!-- Computer Science -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6 border-b-2 border-blue-600 pb-2">
                    Computer Science & IT
                </h3>
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border border-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Name</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Designation</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Research Areas</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">h-index</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Ahmed Khan</td>
                                <td class="px-6 py-4">Professor</td>
                                <td class="px-6 py-4">Machine Learning, AI</td>
                                <td class="px-6 py-4">28</td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Fatima Malik</td>
                                <td class="px-6 py-4">Associate Professor</td>
                                <td class="px-6 py-4">Cyber Security, Networks</td>
                                <td class="px-6 py-4">22</td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Hassan Ali</td>
                                <td class="px-6 py-4">Associate Professor</td>
                                <td class="px-6 py-4">Data Science, IoT</td>
                                <td class="px-6 py-4">19</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Engineering -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6 border-b-2 border-blue-600 pb-2">
                    Engineering
                </h3>
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border border-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Name</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Designation</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Research Areas</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">h-index</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Muhammad Asif</td>
                                <td class="px-6 py-4">Professor</td>
                                <td class="px-6 py-4">Renewable Energy, Power Systems</td>
                                <td class="px-6 py-4">31</td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Sara Ahmed</td>
                                <td class="px-6 py-4">Associate Professor</td>
                                <td class="px-6 py-4">Structural Engineering</td>
                                <td class="px-6 py-4">24</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Management Sciences -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6 border-b-2 border-blue-600 pb-2">
                    Management Sciences
                </h3>
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border border-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Name</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Designation</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Research Areas</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">h-index</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Ayesha Siddiqui</td>
                                <td class="px-6 py-4">Professor</td>
                                <td class="px-6 py-4">Strategic Management, Leadership</td>
                                <td class="px-6 py-4">26</td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Bilal Khan</td>
                                <td class="px-6 py-4">Associate Professor</td>
                                <td class="px-6 py-4">Finance, Economics</td>
                                <td class="px-6 py-4">21</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Life Sciences -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-blue-600 mb-6 border-b-2 border-blue-600 pb-2">
                    Life Sciences
                </h3>
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border border-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Name</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Designation</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">Research Areas</th>
                                <th class="px-6 py-3 text-left text-sm font-bold text-gray-700">h-index</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Nadia Iqbal</td>
                                <td class="px-6 py-4">Professor</td>
                                <td class="px-6 py-4">Molecular Biology, Genetics</td>
                                <td class="px-6 py-4">33</td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4">Dr. Zahid Mahmood</td>
                                <td class="px-6 py-4">Associate Professor</td>
                                <td class="px-6 py-4">Biotechnology, Microbiology</td>
                                <td class="px-6 py-4">20</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="bg-gray-100 p-8 rounded-lg text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Interested in PhD Supervision?</h3>
                <p class="text-gray-700 mb-6">
                    Faculty members meeting the eligibility criteria can apply for PhD supervisor approval
                </p>
                <a href="#" class="btn-primary inline-block">Apply for Supervisor Status</a>
            </div>
        </div>
    </section>
</asp:Content>
