<%@ Control Language="C#" AutoEventWireup="true" %>

<footer class="bg-gray-900 text-white mt-16">
    <div class="container mx-auto px-4 py-12">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
            <!-- About Column -->
            <div>
                <h3 class="text-xl font-bold mb-4">About ORIC</h3>
                <p class="text-gray-400">Office of Research, Innovation & Commercialization promoting excellence in research and innovation.</p>
            </div>
            
            <!-- Quick Links -->
            <div>
                <h3 class="text-xl font-bold mb-4">Quick Links</h3>
                <ul class="space-y-2 text-gray-400">
                    <li><a href="<%= ResolveUrl("~/about/OSC.aspx") %>" class="hover:text-white">ORIC Steering Committee
</a></li>
                    <li><a href="<%= ResolveUrl("~/research/Funding_Agencies.aspx") %>" class="hover:text-white">Funding Agencies</a></li>
                    <li><a href="<%= ResolveUrl("~/media/Publications.aspx") %>" class="hover:text-white">Publications</a></li>
                </ul>
            </div>
            
            <!-- Research -->
            <div>
                <h3 class="text-xl font-bold mb-4">Research</h3>
                <ul class="space-y-2 text-gray-400">
                    <li><a href="<%= ResolveUrl("~/research/IBC.aspx") %>" class="hover:text-white">IBC</a></li>
                    <li><a href="<%= ResolveUrl("~/research/BEC.aspx") %>" class="hover:text-white">BEC</a></li>
                    <li><a href="<%= ResolveUrl("~/research/Services.aspx") %>" class="hover:text-white">Services</a></li>
                </ul>
            </div>
            
            <!-- Contact -->
            <div>
                <h3 class="text-xl font-bold mb-4">Contact</h3>
                <ul class="space-y-2 text-gray-400">
                    <li>Email: oric@university.edu.pk</li>
                    <li>Phone: +92 XXX XXXXXXX</li>
                    <li>Address: University Campus</li>
                </ul>
            </div>
        </div>
        
        <div class="border-t border-gray-800 mt-8 pt-8 text-center text-gray-400">
            <p>&copy; <%= DateTime.Now.Year %> ORIC. All rights reserved.</p>
        </div>
    </div>
</footer>
