<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Board of Ethical Committee (BEC) - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Board of Ethical Committee (BEC)</h1>
            <p class="text-xl">Upholding Research Ethics Standards</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-5xl">
            <div class="mb-12">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">About BEC</h2>
                <p class="text-lg text-gray-700 mb-4">
                    The Board of Ethical Committee (BEC) reviews all research involving human participants, animals, 
                    or sensitive data to ensure compliance with national and international ethical standards. The 
                    committee protects the rights, welfare, and dignity of research subjects.
                </p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Core Principles</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Respect for persons and autonomy</li>
                        <li>• Beneficence and non-maleficence</li>
                        <li>• Justice and fairness</li>
                        <li>• Informed consent</li>
                        <li>• Confidentiality and privacy</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 class="text-xl font-bold text-blue-600 mb-3">Review Timeline</h3>
                    <ul class="space-y-2 text-gray-700">
                        <li>• Submit application 4 weeks before start</li>
                        <li>• Initial screening within 1 week</li>
                        <li>• Committee review monthly</li>
                        <li>• Decision within 2-3 weeks</li>
                        <li>• Continuing review annually</li>
                    </ul>
                </div>
            </div>
            
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Research Requiring BEC Approval</h3>
                <div class="bg-red-50 border-l-4 border-red-400 p-6 mb-6">
                    <p class="text-gray-800 font-semibold mb-2">📋 BEC approval is mandatory for:</p>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                        <div>
                            <p class="font-semibold text-gray-900 mb-2">Human Research:</p>
                            <ul class="space-y-1 text-gray-700">
                                <li>• Clinical trials and drug studies</li>
                                <li>• Surveys and questionnaires</li>
                                <li>• Interviews and focus groups</li>
                                <li>• Behavioral and psychological research</li>
                                <li>• Use of human biological samples</li>
                            </ul>
                        </div>
                        
                        <div>
                            <p class="font-semibold text-gray-900 mb-2">Animal Research:</p>
                            <ul class="space-y-1 text-gray-700">
                                <li>• Vertebrate animal studies</li>
                                <li>• Surgical procedures on animals</li>
                                <li>• Animal behavior studies</li>
                                <li>• Field studies involving wildlife</li>
                                <li>• Use of animal tissues</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Application Forms & Guidelines</h3>
                <div class="space-y-3">
                    <a href="../assets/files/downloads/bec-human-research-form.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Human Research Application Form</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                    
                    <a href="../assets/files/downloads/bec-animal-research-form.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Animal Research Application Form</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                    
                    <a href="../assets/files/downloads/bec-informed-consent-template.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Informed Consent Template</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                    
                    <a href="../assets/files/downloads/bec-guidelines.pdf" class="flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
                        <span class="font-semibold text-gray-900">Ethical Review Guidelines</span>
                        <span class="text-blue-600">Download PDF →</span>
                    </a>
                </div>
            </div>
            
            <div class="bg-blue-50 rounded-lg p-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Contact BEC</h3>
                <p class="text-gray-700 mb-4">For ethical review submissions or inquiries:</p>
                <p class="text-gray-800 font-semibold">Email: bec@university.edu.pk</p>
                <p class="text-gray-800 font-semibold">Phone: +92 XXX XXXXXXX</p>
                <p class="text-gray-700 mt-4">Committee meets on the first Monday of each month</p>
            </div>
        </div>
    </section>
</asp:Content>
