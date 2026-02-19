<%@ Control Language="C#" AutoEventWireup="true" %>

<header class="bg-white shadow-md sticky top-0 z-50">
    <nav class="container mx-auto px-4 py-4">
        <div class="flex items-center justify-between">
            <!-- Logo -->
            <div class="flex items-center space-x-4">
                <img src="../assets/img/Logo.png" alt="ORIC Logo" class="h-16" />
                <div>
                    <h1 class="text-2xl font-bold text-blue-900">ORIC</h1>
                    <p class="text-sm text-gray-600">Office of Research, Innovation & Commercialization</p>
                </div>
            </div>
            
            <!-- Navigation Links -->
            <div class="hidden lg:flex space-x-6">
                <a href="../Default.aspx" class="nav-link">Home</a>
                <div class="relative group">
                    <button class="nav-link">About ▾</button>
                    <div class="absolute hidden group-hover:block bg-white shadow-lg rounded-lg mt-2 py-2 w-48">
                        <a href="../about/Organogram.aspx" class="block px-4 py-2 hover:bg-gray-100">Organogram</a>
                        <a href="../about/Director.aspx" class="block px-4 py-2 hover:bg-gray-100">Director Message</a>
                        <a href="../about/Staff.aspx" class="block px-4 py-2 hover:bg-gray-100">Staff</a>
                    </div>
                </div>
                <a href="../research/Funding_Agencies.aspx" class="nav-link">Research</a>
                <a href="../outreach/Outreach.aspx" class="nav-link">Outreach</a>
                <a href="../commercialization/Technologies.aspx" class="nav-link">Commercialization</a>
                <a href="../media/News.aspx" class="nav-link">Media</a>
            </div>
        </div>
    </nav>
</header>
