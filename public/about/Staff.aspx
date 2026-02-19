<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ORIC Staff - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-blue-600 to-blue-800 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">ORIC Staff</h1>
            <p class="text-xl">Meet Our Dedicated Team</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <!-- Management Team -->
            <div class="mb-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Management Team</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <div class="card text-center">
                        <img src="../assets/img/about/director.jpg" alt="Director" class="w-32 h-32 rounded-full mx-auto mb-4 object-cover" onerror="this.src='https://via.placeholder.com/150'" />
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Prof. Dr. [Name]</h3>
                        <p class="text-blue-600 font-semibold mb-2">Director</p>
                        <p class="text-gray-600 text-sm mb-3">Ph.D. in [Field]</p>
                        <p class="text-gray-600 text-sm">Email: director.oric@university.edu.pk</p>
                    </div>
                    
                    <div class="card text-center">
                        <img src="../assets/img/about/deputy-director.jpg" alt="Deputy Director" class="w-32 h-32 rounded-full mx-auto mb-4 object-cover" onerror="this.src='https://via.placeholder.com/150'" />
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Dr. [Name]</h3>
                        <p class="text-blue-600 font-semibold mb-2">Deputy Director</p>
                        <p class="text-gray-600 text-sm mb-3">Ph.D. in [Field]</p>
                        <p class="text-gray-600 text-sm">Email: deputy.oric@university.edu.pk</p>
                    </div>
                </div>
            </div>
            
            <!-- Research Section -->
            <div class="mb-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-8">Research Section</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-blue-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-blue-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Research Officer</p>
                        <p class="text-gray-600 text-sm">research@university.edu.pk</p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-blue-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-blue-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Assistant Research Officer</p>
                        <p class="text-gray-600 text-sm">research.asst@university.edu.pk</p>
                    </div>
                </div>
            </div>
            
            <!-- Innovation & Commercialization Section -->
            <div class="mb-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-8">Innovation & Commercialization</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-green-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-green-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Innovation Officer</p>
                        <p class="text-gray-600 text-sm">innovation@university.edu.pk</p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-green-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-green-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Technology Transfer Officer</p>
                        <p class="text-gray-600 text-sm">tech.transfer@university.edu.pk</p>
                    </div>
                </div>
            </div>
            
            <!-- Administrative Support -->
            <div class="mb-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-8">Administrative Support</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-gray-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-gray-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Administrative Officer</p>
                        <p class="text-gray-600 text-sm">admin.oric@university.edu.pk</p>
                    </div>
                    
                    <div class="card text-center">
                        <div class="w-24 h-24 bg-gray-100 rounded-full mx-auto mb-4 flex items-center justify-center">
                            <span class="text-3xl text-gray-600 font-bold">[I]</span>
                        </div>
                        <h3 class="font-bold text-gray-900 mb-1">[Staff Name]</h3>
                        <p class="text-blue-600 text-sm mb-1">Accounts Officer</p>
                        <p class="text-gray-600 text-sm">accounts.oric@university.edu.pk</p>
                    </div>
                </div>
            </div>
            
            <!-- Contact Section -->
            <div class="bg-blue-50 rounded-lg p-8 text-center">
                <h2 class="text-2xl font-bold text-gray-900 mb-4">Get in Touch</h2>
                <p class="text-gray-700 mb-6">Have questions? Our team is here to help you with all your research and innovation needs.</p>
                <a href="../contact/Process_Form.aspx" class="btn-primary">Contact ORIC</a>
            </div>
        </div>
    </section>
</asp:Content>
