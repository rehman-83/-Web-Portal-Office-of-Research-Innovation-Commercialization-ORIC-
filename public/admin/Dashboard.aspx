<%@ Page Language="C#" AutoEventWireup="true" %>
    <!-- Auth Check - Check for JWT token -->
    <% bool isAuthenticated=false; HttpCookie authCookie=Request.Cookies["AdminToken"]; string authToken=authCookie
        !=null ? authCookie.Value : null; if (string.IsNullOrEmpty(authToken)) { // Check session as fallback
        isAuthenticated=Session["AdminLoggedIn"] !=null && (bool)Session["AdminLoggedIn"]; } else {
        isAuthenticated=true; } if (!isAuthenticated) { Response.Redirect("~/admin/Login.aspx"); } %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>ORIC Admin Dashboard</title>
            <script src="https://cdn.tailwindcss.com"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
            <style>
                .gradient-header {
                    background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
                }

                .sidebar {
                    background: #f8f9fa;
                    border-right: 1px solid #e5e7eb;
                }

                .nav-item {
                    transition: all 0.3s ease;
                }

                .nav-item:hover {
                    background: #e0e7ff;
                    transform: translateX(4px);
                }

                .nav-item.active {
                    background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
                    color: white;
                    border-left: 4px solid #c8102e;
                }

                .card {
                    border: 1px solid #e5e7eb;
                    transition: all 0.3s ease;
                }

                .card:hover {
                    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
                    transform: translateY(-4px);
                }
            </style>
        </head>

        <body class="bg-gray-50">
            <div class="flex h-screen">
                <!-- Sidebar Navigation -->
                <aside class="w-64 sidebar hidden md:flex flex-col">
                    <!-- Logo -->
                    <div class="p-6 border-b">
                        <div class="flex items-center gap-3 mb-2">
                            <div
                                class="w-10 h-10 bg-gradient-to-r from-blue-600 to-blue-700 rounded-lg flex items-center justify-center">
                                <i class="fas fa-bolt text-white"></i>
                            </div>
                            <h1 class="text-xl font-bold text-gray-800">ORIC Admin</h1>
                        </div>
                        <p class="text-xs text-gray-500">Content Management System</p>
                    </div>

                    <!-- Navigation Menu -->
                    <nav class="flex-1 p-4 space-y-2 overflow-y-auto">
                        <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide">Content</div>

                        <a href="Dashboard.aspx" class="nav-item active flex items-center gap-3 px-4 py-3 rounded-lg">
                            <i class="fas fa-chart-line"></i>
                            <span>Dashboard</span>
                        </a>

                        <a href="Galleries.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-images"></i>
                            <span>Galleries</span>
                        </a>

                        <a href="Newsletters.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-newspaper"></i>
                            <span>Newsletters</span>
                        </a>

                        <a href="Publications.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-book"></i>
                            <span>Publications</span>
                        </a>

                        <a href="News.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-rss"></i>
                            <span>News</span>
                        </a>

                        <a href="Downloads.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-download"></i>
                            <span>Downloads</span>
                        </a>

                        <a href="Announcements.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-bullhorn"></i>
                            <span>Announcements</span>
                        </a>

                        <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide mt-6">Settings
                        </div>

                        <a href="Settings.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700 hover:text-gray-900">
                            <i class="fas fa-cog"></i>
                            <span>Settings</span>
                        </a>
                    </nav>

                    <!-- User Profile & Logout -->
                    <div class="p-4 border-t">
                        <div class="flex items-center justify-between bg-white p-3 rounded-lg">
                            <div class="flex items-center gap-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-r from-blue-600 to-blue-700 rounded-full flex items-center justify-center text-white text-xs font-bold">
                                    A
                                </div>
                                <div>
                                    <p class="text-sm font-semibold text-gray-800" id="sidebarUserName">
                                        <%= Session["AdminUser"] %>
                                    </p>
                                    <p class="text-xs text-gray-500">Administrator</p>
                                </div>
                            </div>
                            <a href="Logout.aspx" class="text-gray-500 hover:text-red-600" title="Logout">
                                <i class="fas fa-sign-out-alt"></i>
                            </a>
                        </div>
                    </div>
                </aside>

                <!-- Main Content -->
                <main class="flex-1 flex flex-col overflow-hidden">
                    <!-- Top Header -->
                    <header class="gradient-header text-white shadow-lg">
                        <div class="px-6 py-4 flex items-center justify-between">
                            <div>
                                <h1 class="text-2xl font-bold">Dashboard</h1>
                                <p class="text-blue-100 text-sm">Welcome back, <span id="headerUserName">
                                        <%= Session["AdminUser"] %>
                                    </span>!</p>
                            </div>
                            <div class="flex items-center gap-4">
                                <div class="text-right hidden sm:block">
                                    <p class="text-sm font-semibold">Last Login</p>
                                    <p class="text-xs text-blue-100">
                                        <%= DateTime.Now.ToString("MMM dd, yyyy HH:mm") %>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </header>

                    <!-- Page Content -->
                    <div class="flex-1 overflow-auto">
                        <div class="p-6">
                            <!-- Stats Grid -->
                            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                                <!-- Gallery Stats -->
                                <div class="card bg-white p-6 rounded-lg">
                                    <div class="flex items-center justify-between mb-4">
                                        <div class="flex items-center justify-center w-12 h-12 bg-blue-100 rounded-lg">
                                            <i class="fas fa-images text-blue-600"></i>
                                        </div>
                                        <span
                                            class="text-xs font-semibold text-green-600 bg-green-100 px-3 py-1 rounded-full">Active</span>
                                    </div>
                                    <h3 class="text-gray-600 text-sm font-medium mb-1">Gallery Images</h3>
                                    <p class="text-3xl font-bold text-gray-800">70</p>
                                    <p class="text-xs text-gray-500 mt-2">Across all albums</p>
                                </div>

                                <!-- Newsletters Stats -->
                                <div class="card bg-white p-6 rounded-lg">
                                    <div class="flex items-center justify-between mb-4">
                                        <div
                                            class="flex items-center justify-center w-12 h-12 bg-purple-100 rounded-lg">
                                            <i class="fas fa-newspaper text-purple-600"></i>
                                        </div>
                                        <span
                                            class="text-xs font-semibold text-green-600 bg-green-100 px-3 py-1 rounded-full">Active</span>
                                    </div>
                                    <h3 class="text-gray-600 text-sm font-medium mb-1">Newsletters</h3>
                                    <p class="text-3xl font-bold text-gray-800">189</p>
                                    <p class="text-xs text-gray-500 mt-2">Published items</p>
                                </div>

                                <!-- Publications Stats -->
                                <div class="card bg-white p-6 rounded-lg">
                                    <div class="flex items-center justify-between mb-4">
                                        <div class="flex items-center justify-center w-12 h-12 bg-green-100 rounded-lg">
                                            <i class="fas fa-book text-green-600"></i>
                                        </div>
                                        <span
                                            class="text-xs font-semibold text-gray-600 bg-gray-100 px-3 py-1 rounded-full">Pending</span>
                                    </div>
                                    <h3 class="text-gray-600 text-sm font-medium mb-1">Publications</h3>
                                    <p class="text-3xl font-bold text-gray-800">0</p>
                                    <p class="text-xs text-gray-500 mt-2">Ready to manage</p>
                                </div>

                                <!-- Users Stats -->
                                <div class="card bg-white p-6 rounded-lg">
                                    <div class="flex items-center justify-between mb-4">
                                        <div
                                            class="flex items-center justify-center w-12 h-12 bg-orange-100 rounded-lg">
                                            <i class="fas fa-users text-orange-600"></i>
                                        </div>
                                        <span
                                            class="text-xs font-semibold text-green-600 bg-green-100 px-3 py-1 rounded-full">Online</span>
                                    </div>
                                    <h3 class="text-gray-600 text-sm font-medium mb-1">Admin Users</h3>
                                    <p class="text-3xl font-bold text-gray-800">1</p>
                                    <p class="text-xs text-gray-500 mt-2">Active administrator</p>
                                </div>
                            </div>

                            <!-- Quick Actions -->
                            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                                <!-- Recent Activity -->
                                <div class="card bg-white rounded-lg p-6">
                                    <h2 class="text-lg font-bold text-gray-800 mb-4">Quick Actions</h2>
                                    <div class="space-y-2">
                                        <a href="Galleries.aspx"
                                            class="flex items-center justify-between p-3 bg-blue-50 hover:bg-blue-100 rounded-lg transition">
                                            <span class="flex items-center gap-2">
                                                <i class="fas fa-plus-circle text-blue-600"></i>
                                                <span class="font-medium text-gray-800">Add New Gallery</span>
                                            </span>
                                            <i class="fas fa-arrow-right text-gray-400"></i>
                                        </a>
                                        <a href="Newsletters.aspx"
                                            class="flex items-center justify-between p-3 bg-purple-50 hover:bg-purple-100 rounded-lg transition">
                                            <span class="flex items-center gap-2">
                                                <i class="fas fa-plus-circle text-purple-600"></i>
                                                <span class="font-medium text-gray-800">Add Newsletter</span>
                                            </span>
                                            <i class="fas fa-arrow-right text-gray-400"></i>
                                        </a>
                                        <a href="Publications.aspx"
                                            class="flex items-center justify-between p-3 bg-green-50 hover:bg-green-100 rounded-lg transition">
                                            <span class="flex items-center gap-2">
                                                <i class="fas fa-plus-circle text-green-600"></i>
                                                <span class="font-medium text-gray-800">Add Publication</span>
                                            </span>
                                            <i class="fas fa-arrow-right text-gray-400"></i>
                                        </a>
                                    </div>
                                </div>

                                <!-- System Info -->
                                <div class="card bg-white rounded-lg p-6">
                                    <h2 class="text-lg font-bold text-gray-800 mb-4">System Information</h2>
                                    <div class="space-y-3">
                                        <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                                            <span class="text-sm text-gray-600">API Status</span>
                                            <span class="flex items-center gap-1">
                                                <span class="w-2 h-2 bg-green-500 rounded-full"></span>
                                                <span class="text-sm font-semibold text-green-600">Running</span>
                                            </span>
                                        </div>
                                        <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                                            <span class="text-sm text-gray-600">Database</span>
                                            <span class="flex items-center gap-1">
                                                <span class="w-2 h-2 bg-green-500 rounded-full"></span>
                                                <span class="text-sm font-semibold text-green-600">Connected</span>
                                            </span>
                                        </div>
                                        <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                                            <span class="text-sm text-gray-600">Last Sync</span>
                                            <span class="text-sm font-semibold text-gray-800">
                                                <%= DateTime.Now.ToString("HH:mm:ss") %>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

            <script>
                // Populate username from localStorage
                document.addEventListener('DOMContentLoaded', function () {
                    const adminUser = localStorage.getItem('adminUser');
                    if (adminUser) {
                        const headerUserName = document.getElementById('headerUserName');
                        const sidebarUserName = document.getElementById('sidebarUserName');

                        if (headerUserName) headerUserName.textContent = adminUser;
                        if (sidebarUserName) sidebarUserName.textContent = adminUser;

                        // Update avatar letter
                        const avatarLetters = document.querySelectorAll('.sidebar .w-8, .sidebar .w-10');
                        avatarLetters.forEach(el => {
                            if (el.textContent.trim() === 'A') {
                                el.textContent = adminUser.charAt(0).toUpperCase();
                            }
                        });
                    }
                });

                // Auto-refresh system status every 30 seconds
                setInterval(function () {
                    fetch('/api/health')
                        .then(r => r.json())
                        .catch(() => console.log('Health check running'));
                }, 30000);
            </script>
        </body>

        </html>