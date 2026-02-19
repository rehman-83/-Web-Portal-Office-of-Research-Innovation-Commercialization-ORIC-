<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    IMERP - Internal Monetary Endowment Research Program - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-teal-600 to-cyan-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Internal Monetary Endowment Research Program</h1>
            <p class="text-xl">Supporting Faculty Research Through Internal Funding</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">About IMERP</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Internal Monetary Endowment Research Program (IMERP) is a university-funded initiative 
                    designed to support innovative research projects by faculty members. The program provides 
                    seed funding to encourage research productivity and help researchers develop competitive 
                    proposals for external funding.
                </p>
            </div>
            
            <div class="grid md:grid-cols-2 gap-6 mb-12">
                <div class="card bg-blue-50 border-l-4 border-blue-600">
                    <h3 class="text-xl font-bold text-blue-900 mb-4">Funding Categories</h3>
                    <div class="space-y-4">
                        <div>
                            <h4 class="font-bold text-gray-900">Category A: Research Projects</h4>
                            <p class="text-gray-700">Up to PKR 500,000</p>
                            <p class="text-sm text-gray-600">Duration: 12-18 months</p>
                        </div>
                        <div>
                            <h4 class="font-bold text-gray-900">Category B: Seed Grants</h4>
                            <p class="text-gray-700">Up to PKR 250,000</p>
                            <p class="text-sm text-gray-600">Duration: 6-12 months</p>
                        </div>
                        <div>
                            <h4 class="font-bold text-gray-900">Category C: Conference Support</h4>
                            <p class="text-gray-700">Up to PKR 100,000</p>
                            <p class="text-sm text-gray-600">For international conference participation</p>
                        </div>
                    </div>
                </div>
                
                <div class="card bg-green-50 border-l-4 border-green-600">
                    <h3 class="text-xl font-bold text-green-900 mb-4">Eligibility Criteria</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>✓ Full-time faculty member</li>
                        <li>✓ Minimum 2 years of service</li>
                        <li>✓ At least one publication in the last 3 years</li>
                        <li>✓ No ongoing IMERP project</li>
                        <li>✓ Completed previous grants (if any)</li>
                        <li>✓ Endorsement from Head of Department</li>
                    </ul>
                </div>
            </div>
            
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Application Process</h3>
                <div class="space-y-6">
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">1</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Prepare Proposal</h4>
                            <p class="text-gray-700 mb-2">
                                Download and complete the IMERP proposal template including:
                            </p>
                            <ul class="text-gray-600 ml-4">
                                <li>• Project title and abstract</li>
                                <li>• Research objectives and methodology</li>
                                <li>• Expected outcomes and deliverables</li>
                                <li>• Detailed budget breakdown</li>
                                <li>• Timeline and milestones</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">2</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Submit Application</h4>
                            <p class="text-gray-700">
                                Submit the proposal through the ORIC online portal along with:
                            </p>
                            <ul class="text-gray-600 ml-4">
                                <li>• Completed proposal form</li>
                                <li>• CV of Principal Investigator</li>
                                <li>• Departmental endorsement letter</li>
                                <li>• Ethics/biosafety approval (if applicable)</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">3</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Review & Evaluation</h4>
                            <p class="text-gray-700">
                                Proposals undergo peer review by expert committee based on:
                            </p>
                            <ul class="text-gray-600 ml-4">
                                <li>• Scientific merit and innovation (40%)</li>
                                <li>• Feasibility and methodology (30%)</li>
                                <li>• Budget justification (15%)</li>
                                <li>• Expected impact (15%)</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="bg-blue-600 text-white rounded-full w-10 h-10 flex items-center justify-center flex-shrink-0 mr-4 font-bold">4</div>
                        <div class="flex-1">
                            <h4 class="text-lg font-bold text-gray-900 mb-2">Award & Execution</h4>
                            <p class="text-gray-700">
                                Successful applicants receive award letter and can begin project execution. 
                                Quarterly progress reports required.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="bg-yellow-50 border-l-4 border-yellow-500 p-6 mb-8">
                <h3 class="text-xl font-bold text-yellow-900 mb-3">Important Dates - 2026</h3>
                <div class="grid md:grid-cols-2 gap-4 text-gray-700">
                    <div>
                        <strong>Spring Call:</strong>
                        <ul class="ml-4 mt-1">
                            <li>• Application Opens: March 1, 2026</li>
                            <li>• Deadline: April 30, 2026</li>
                            <li>• Awards Announced: June 15, 2026</li>
                        </ul>
                    </div>
                    <div>
                        <strong>Fall Call:</strong>
                        <ul class="ml-4 mt-1">
                            <li>• Application Opens: September 1, 2026</li>
                            <li>• Deadline: October 31, 2026</li>
                            <li>• Awards Announced: December 15, 2026</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="card bg-gradient-to-r from-blue-600 to-blue-800 text-white mb-8">
                <h3 class="text-2xl font-bold mb-4">Program Statistics (2023-2024)</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
                    <div>
                        <div class="text-3xl font-bold">PKR 12.5M</div>
                        <div class="text-blue-100 text-sm">Total Funding</div>
                    </div>
                    <div>
                        <div class="text-3xl font-bold">42</div>
                        <div class="text-blue-100 text-sm">Projects Funded</div>
                    </div>
                    <div>
                        <div class="text-3xl font-bold">68</div>
                        <div class="text-blue-100 text-sm">Publications</div>
                    </div>
                    <div>
                        <div class="text-3xl font-bold">15</div>
                        <div class="text-blue-100 text-sm">PhD Students</div>
                    </div>
                </div>
            </div>
            
            <div class="text-center">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Ready to Apply?</h3>
                <p class="text-gray-700 mb-6">Download the application form and guidelines</p>
                <div class="flex justify-center gap-4">
                    <a href="#" class="btn-primary">Download Application Form</a>
                    <a href="#" class="bg-white border-2 border-blue-600 text-blue-600 px-6 py-3 rounded-lg font-semibold hover:bg-blue-50 transition">
                        View Guidelines
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
