<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Journals - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-indigo-600 to-purple-700 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">University Research Journals</h1>
            <p class="text-xl">Publishing Excellence in Peer-Reviewed Research</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="mb-12 text-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Our Journals</h2>
                <p class="text-lg text-gray-700 max-w-3xl mx-auto">
                    The university publishes several peer-reviewed academic journals covering diverse disciplines. 
                    All journals follow international publication standards and ethics.
                </p>
            </div>
            
            <!-- Featured Journals -->
            <div class="space-y-8 mb-12">
                <div class="card border-l-4 border-blue-600 hover:shadow-xl transition-shadow">
                    <div class="flex flex-col md:flex-row justify-between">
                        <div class="flex-1">
                            <div class="flex items-center gap-3 mb-3">
                                <h3 class="text-2xl font-bold text-gray-900">Journal of Science & Technology</h3>
                                <span class="bg-green-100 text-green-800 text-xs font-semibold px-2 py-1 rounded">HEC Recognized</span>
                            </div>
                            <p class="text-gray-700 mb-4">
                                A multidisciplinary journal publishing original research in engineering, computer science, 
                                physics, chemistry, and applied sciences. Published bi-annually.
                            </p>
                            <div class="grid md:grid-cols-2 gap-4 text-sm">
                                <div>
                                    <strong>ISSN:</strong> 1234-5678<br/>
                                    <strong>Frequency:</strong> Bi-annual<br/>
                                    <strong>Impact Factor:</strong> 0.85
                                </div>
                                <div>
                                    <strong>Chief Editor:</strong> Dr. Muhammad Asif<br/>
                                    <strong>HEC Category:</strong> Y<br/>
                                    <strong>Indexing:</strong> Google Scholar, DOAJ
                                </div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-2 mt-4 md:mt-0 md:ml-4">
                            <a href="#" class="btn-primary text-center text-sm">Submit Article</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-center text-sm">
                                View Issues
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="card border-l-4 border-green-600 hover:shadow-xl transition-shadow">
                    <div class="flex flex-col md:flex-row justify-between">
                        <div class="flex-1">
                            <div class="flex items-center gap-3 mb-3">
                                <h3 class="text-2xl font-bold text-gray-900">Journal of Management & Business</h3>
                                <span class="bg-green-100 text-green-800 text-xs font-semibold px-2 py-1 rounded">HEC Recognized</span>
                            </div>
                            <p class="text-gray-700 mb-4">
                                Publishes high-quality research in management sciences, finance, marketing, 
                                entrepreneurship, and business administration.
                            </p>
                            <div class="grid md:grid-cols-2 gap-4 text-sm">
                                <div>
                                    <strong>ISSN:</strong> 2345-6789<br/>
                                    <strong>Frequency:</strong> Quarterly<br/>
                                    <strong>Impact Factor:</strong> 0.72
                                </div>
                                <div>
                                    <strong>Chief Editor:</strong> Dr. Ayesha Siddiqui<br/>
                                    <strong>HEC Category:</strong> Y<br/>
                                    <strong>Indexing:</strong> EconLit, EBSCO
                                </div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-2 mt-4 md:mt-0 md:ml-4">
                            <a href="#" class="btn-primary text-center text-sm">Submit Article</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-center text-sm">
                                View Issues
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="card border-l-4 border-purple-600 hover:shadow-xl transition-shadow">
                    <div class="flex flex-col md:flex-row justify-between">
                        <div class="flex-1">
                            <div class="flex items-center gap-3 mb-3">
                                <h3 class="text-2xl font-bold text-gray-900">Journal of Life Sciences</h3>
                                <span class="bg-green-100 text-green-800 text-xs font-semibold px-2 py-1 rounded">HEC Recognized</span>
                            </div>
                            <p class="text-gray-700 mb-4">
                                Features original research in biology, biotechnology, biochemistry, microbiology, 
                                and related life sciences disciplines.
                            </p>
                            <div class="grid md:grid-cols-2 gap-4 text-sm">
                                <div>
                                    <strong>ISSN:</strong> 3456-7890<br/>
                                    <strong>Frequency:</strong> Bi-annual<br/>
                                    <strong>Impact Factor:</strong> 0.93
                                </div>
                                <div>
                                    <strong>Chief Editor:</strong> Dr. Nadia Iqbal<br/>
                                    <strong>HEC Category:</strong> Y<br/>
                                    <strong>Indexing:</strong> PubMed, Scopus
                                </div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-2 mt-4 md:mt-0 md:ml-4">
                            <a href="#" class="btn-primary text-center text-sm">Submit Article</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-center text-sm">
                                View Issues
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="card border-l-4 border-orange-600 hover:shadow-xl transition-shadow">
                    <div class="flex flex-col md:flex-row justify-between">
                        <div class="flex-1">
                            <div class="flex items-center gap-3 mb-3">
                                <h3 class="text-2xl font-bold text-gray-900">Journal of Social Sciences</h3>
                                <span class="bg-yellow-100 text-yellow-800 text-xs font-semibold px-2 py-1 rounded">Emerging</span>
                            </div>
                            <p class="text-gray-700 mb-4">
                                Publishes research in education, psychology, sociology, political science, 
                                and interdisciplinary social sciences.
                            </p>
                            <div class="grid md:grid-cols-2 gap-4 text-sm">
                                <div>
                                    <strong>ISSN:</strong> 4567-8901<br/>
                                    <strong>Frequency:</strong> Annual<br/>
                                    <strong>Impact Factor:</strong> Under Review
                                </div>
                                <div>
                                    <strong>Chief Editor:</strong> Dr. Farhan Ahmed<br/>
                                    <strong>HEC Category:</strong> Under Review<br/>
                                    <strong>Indexing:</strong> Google Scholar
                                </div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-2 mt-4 md:mt-0 md:ml-4">
                            <a href="#" class="btn-primary text-center text-sm">Submit Article</a>
                            <a href="#" class="bg-gray-100 text-gray-700 px-4 py-2 rounded hover:bg-gray-200 text-center text-sm">
                                View Issues
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Submission Guidelines -->
            <div class="mb-12">
                <h3 class="text-2xl font-bold text-gray-900 mb-6">Author Guidelines</h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div class="card bg-blue-50">
                        <h4 class="text-xl font-bold text-blue-900 mb-4">Manuscript Preparation</h4>
                        <ul class="space-y-2 text-gray-700">
                            <li>✓ Original research contributions</li>
                            <li>✓ Follow journal-specific templates</li>
                            <li>✓ APA/Chicago citation style</li>
                            <li>✓ Maximum 8,000 words</li>
                            <li>✓ Abstract: 200-250 words</li>
                            <li>✓ 4-6 keywords</li>
                        </ul>
                    </div>
                    
                    <div class="card bg-green-50">
                        <h4 class="text-xl font-bold text-green-900 mb-4">Review Process</h4>
                        <ul class="space-y-2 text-gray-700">
                            <li>• Double-blind peer review</li>
                            <li>• Initial screening: 1 week</li>
                            <li>• Peer review: 4-6 weeks</li>
                            <li>• Revision period: 2 weeks</li>
                            <li>• Final decision: 8-10 weeks</li>
                            <li>• No submission fees</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Publication Ethics -->
            <div class="bg-gray-100 p-8 rounded-lg mb-8">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Publication Ethics</h3>
                <p class="text-gray-700 mb-4">
                    All journals adhere to the Committee on Publication Ethics (COPE) guidelines:
                </p>
                <div class="grid md:grid-cols-3 gap-4">
                    <div>
                        <h4 class="font-bold text-gray-900 mb-2">Originality</h4>
                        <p class="text-sm text-gray-700">Manuscripts must be original and not under consideration elsewhere</p>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 mb-2">Plagiarism Check</h4>
                        <p class="text-sm text-gray-700">All submissions screened using Turnitin (max 19% similarity)</p>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 mb-2">Data Integrity</h4>
                        <p class="text-sm text-gray-700">Authors must provide raw data upon request</p>
                    </div>
                </div>
            </div>
            
            <!-- Call to Action -->
            <div class="text-center bg-gradient-to-r from-blue-600 to-blue-800 text-white p-12 rounded-lg">
                <h3 class="text-3xl font-bold mb-4">Submit Your Research</h3>
                <p class="text-xl mb-6 text-blue-100">
                    Share your research with the academic community
                </p>
                <a href="#" class="bg-white text-blue-600 px-8 py-4 rounded-lg font-bold hover:bg-gray-100 inline-block">
                    View Submission Portal
                </a>
            </div>
        </div>
    </section>
</asp:Content>
