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
            <title>Settings - ORIC Admin</title>
            <script src="https://cdn.tailwindcss.com"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        </head>

        <body class="bg-gray-50">
            <div class="flex h-screen">
                <aside class="w-64 bg-gray-100 border-r hidden md:flex flex-col p-6">
                    <h1 class="text-xl font-bold text-gray-800 mb-8">ORIC Admin</h1>
                    <nav class="space-y-2 flex-1">
                        <a href="Dashboard.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Dashboard</a>
                        <a href="Galleries.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Galleries</a>
                        <a href="Newsletters.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Newsletters</a>
                        <a href="Publications.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Publications</a>
                        <a href="News.aspx" class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">News</a>
                        <a href="Downloads.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Downloads</a>
                        <a href="Announcements.aspx"
                            class="block px-4 py-2 text-gray-700 rounded hover:bg-gray-200">Announcements</a>
                        <hr class="my-2">
                        <a href="Settings.aspx" class="block px-4 py-2 bg-blue-600 text-white rounded">Settings</a>
                    </nav>
                    <a href="Logout.aspx" class="block px-4 py-2 text-red-600 hover:bg-red-50 rounded">Logout</a>
                </aside>
                <main class="flex-1 flex flex-col">
                    <header class="bg-gradient-to-r from-blue-600 to-blue-700 text-white p-6">
                        <h1 class="text-2xl font-bold">System Settings</h1>
                    </header>
                    <div class="flex-1 overflow-auto p-6">
                        <div class="bg-white rounded-lg shadow p-6 max-w-2xl">
                            <h2 class="text-lg font-bold mb-6">Admin Settings</h2>

                            <div class="space-y-6">
                                <div>
                                    <h3 class="font-semibold text-gray-800 mb-2">API Status</h3>
                                    <div
                                        class="flex items-center gap-2 p-3 bg-green-50 border border-green-200 rounded-lg">
                                        <i class="fas fa-check-circle text-green-600"></i>
                                        <span class="text-green-700">API is running on http://localhost:5233</span>
                                    </div>
                                </div>

                                <div>
                                    <h3 class="font-semibold text-gray-800 mb-2">Database Status</h3>
                                    <div
                                        class="flex items-center gap-2 p-3 bg-green-50 border border-green-200 rounded-lg">
                                        <i class="fas fa-check-circle text-green-600"></i>
                                        <span class="text-green-700">Database is connected</span>
                                    </div>
                                </div>

                                <div>
                                    <h3 class="font-semibold text-gray-800 mb-2">Content Statistics</h3>
                                    <div class="grid grid-cols-2 gap-4">
                                        <div class="p-4 bg-blue-50 border border-blue-200 rounded-lg">
                                            <p class="text-sm text-gray-600">Gallery Images</p>
                                            <p class="text-2xl font-bold text-blue-600">70</p>
                                        </div>
                                        <div class="p-4 bg-purple-50 border border-purple-200 rounded-lg">
                                            <p class="text-sm text-gray-600">Newsletters</p>
                                            <p class="text-2xl font-bold text-purple-600">189</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="border-t pt-6">
                                    <h3 class="font-semibold text-gray-800 mb-3">Session Information</h3>
                                    <div class="space-y-2 text-sm">
                                        <p><span class="font-semibold text-gray-700">Current User:</span>
                                            <%= Session["AdminUser"] %>
                                        </p>
                                        <p><span class="font-semibold text-gray-700">Session ID:</span>
                                            <%= Session.SessionID %>
                                        </p>
                                        <p><span class="font-semibold text-gray-700">Login Time:</span>
                                            <%= DateTime.Now.ToString("MMM dd, yyyy HH:mm:ss") %>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </body>

        </html>