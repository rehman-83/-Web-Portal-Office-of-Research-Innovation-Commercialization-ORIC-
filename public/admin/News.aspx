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
            <title>Manage News - ORIC Admin</title>
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

                .drop-zone {
                    border: 2px dashed #cbd5e1;
                    border-radius: 8px;
                    padding: 40px;
                    text-align: center;
                    cursor: pointer;
                    transition: all 0.3s;
                }

                .drop-zone.drag-over {
                    background: #f0f9ff;
                    border-color: #1a3a5c;
                }
            </style>
        </head>

        <body class="bg-gray-50">
            <div class="flex h-screen">
                <!-- Sidebar -->
                <aside class="w-64 sidebar hidden md:flex flex-col">
                    <div class="p-6 border-b">
                        <div class="flex items-center gap-3 mb-2">
                            <div
                                class="w-10 h-10 bg-gradient-to-r from-blue-600 to-blue-700 rounded-lg flex items-center justify-center">
                                <i class="fas fa-bolt text-white"></i>
                            </div>
                            <h1 class="text-xl font-bold text-gray-800">ORIC Admin</h1>
                        </div>
                        <p class="text-xs text-gray-500">Content Management</p>
                    </div>

                    <nav class="flex-1 p-4 space-y-2 overflow-y-auto">
                        <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase">Content</div>
                        <a href="Dashboard.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-chart-line"></i> <span>Dashboard</span>
                        </a>
                        <a href="Galleries.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-images"></i> <span>Galleries</span>
                        </a>
                        <a href="Newsletters.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-newspaper"></i> <span>Newsletters</span>
                        </a>
                        <a href="Publications.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-book"></i> <span>Publications</span>
                        </a>
                        <a href="News.aspx"
                            class="nav-item active flex items-center gap-3 px-4 py-3 rounded-lg text-white">
                            <i class="fas fa-rss"></i> <span>News</span>
                        </a>
                        <a href="Downloads.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-download"></i> <span>Downloads</span>
                        </a>
                        <a href="Announcements.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-bullhorn"></i> <span>Announcements</span>
                        </a>
                    </nav>

                    <div class="p-4 border-t">
                        <div class="flex items-center justify-between bg-white p-3 rounded-lg">
                            <div class="flex items-center gap-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-r from-blue-600 to-blue-700 rounded-full flex items-center justify-center text-white text-xs font-bold">
                                    A</div>
                                <div>
                                    <p class="text-sm font-semibold text-gray-800">
                                        <%= Session["AdminUser"] %>
                                    </p>
                                    <p class="text-xs text-gray-500">Administrator</p>
                                </div>
                            </div>
                            <a href="Logout.aspx" class="text-gray-500 hover:text-red-600">
                                <i class="fas fa-sign-out-alt"></i>
                            </a>
                        </div>
                    </div>
                </aside>

                <!-- Main Content -->
                <main class="flex-1 flex flex-col overflow-hidden">
                    <!-- Header -->
                    <header class="gradient-header text-white shadow-lg">
                        <div class="px-6 py-4 flex items-center justify-between">
                            <div>
                                <h1 class="text-2xl font-bold">Manage News</h1>
                                <p class="text-blue-100 text-sm">Create and manage news items</p>
                            </div>
                            <button onclick="openUploadModal()"
                                class="bg-white text-blue-600 px-4 py-2 rounded-lg font-semibold hover:shadow-lg transition">
                                <i class="fas fa-plus"></i> Add News
                            </button>
                        </div>
                    </header>

                    <!-- Content -->
                    <div class="flex-1 overflow-auto p-6">
                        <div class="bg-white rounded-lg shadow-lg">
                            <div class="p-6">
                                <div class="flex items-center justify-between mb-4">
                                    <h2 class="text-lg font-bold text-gray-800">News Items <span
                                            class="text-sm text-gray-500" id="totalCount">(Loading...)</span></h2>
                                    <input type="text" id="searchInput" placeholder="Search news..."
                                        class="px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600 w-64"
                                        onkeyup="filterNews()" />
                                </div>

                                <div class="overflow-x-auto">
                                    <table class="w-full">
                                        <thead class="bg-gray-100 border-b-2 border-gray-200">
                                            <tr>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Title</th>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Date</th>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Status</th>
                                                <th class="px-4 py-3 text-center font-semibold text-gray-800">Actions
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="newsList">
                                            <tr>
                                                <td colspan="4" class="px-4 py-8 text-center text-gray-500">
                                                    <i class="fas fa-spinner fa-spin text-2xl mb-2"></i>
                                                    <p>Loading news...</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

            <!-- Upload Modal -->
            <div id="uploadModal"
                class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center z-50 p-4">
                <div class="bg-white rounded-lg max-w-md w-full p-6 max-h-96 overflow-y-auto">
                    <h2 class="text-xl font-bold text-gray-800 mb-4">Add News Item</h2>

                    <!-- Form -->
                    <div class="space-y-3">
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-1">News Title</label>
                            <input type="text" id="newsTitle"
                                class="w-full px-3 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600"
                                placeholder="Enter news title" />
                        </div>
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-1">Summary</label>
                            <textarea id="newsSummary"
                                class="w-full px-3 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600"
                                placeholder="Enter summary" rows="2"></textarea>
                        </div>
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-1">News Date</label>
                            <input type="date" id="newsDate"
                                class="w-full px-3 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600" />
                        </div>
                        <label class="flex items-center gap-2">
                            <input type="checkbox" id="publishNews" checked />
                            <span class="text-sm text-gray-700">Publish immediately</span>
                        </label>
                    </div>

                    <!-- Buttons -->
                    <div class="flex gap-2 mt-6">
                        <button type="button" id="uploadBtn" onclick="addNews()"
                            class="flex-1 bg-blue-600 text-white py-2 rounded-lg font-semibold hover:bg-blue-700">
                            <i class="fas fa-save"></i> Save
                        </button>
                        <button type="button" onclick="closeUploadModal()"
                            class="flex-1 bg-gray-300 text-gray-800 py-2 rounded-lg font-semibold hover:bg-gray-400">
                            Cancel
                        </button>
                    </div>
                </div>
            </div>

            <script>
                function openUploadModal() {
                    document.getElementById('uploadModal').classList.remove('hidden');
                    document.getElementById('newsDate').valueAsDate = new Date();
                }

                function closeUploadModal() {
                    document.getElementById('uploadModal').classList.add('hidden');
                    document.getElementById('newsTitle').value = '';
                    document.getElementById('newsSummary').value = '';
                    document.getElementById('newsDate').value = '';
                    document.getElementById('publishNews').checked = true;
                }

                async function addNews() {
                    const title = document.getElementById('newsTitle').value.trim();
                    const summary = document.getElementById('newsSummary').value.trim();
                    const publishDate = document.getElementById('newsDate').value;

                    if (!title || !publishDate) {
                        alert('Please fill in all required fields');
                        return;
                    }

                    try {
                        const response = await fetch('http://localhost:5233/api/news', {
                            method: 'POST',
                            headers: { 'Content-Type': 'application/json' },
                            body: JSON.stringify({
                                title: title,
                                summary: summary,
                                content: '',
                                imageUrl: '',
                                isPublished: document.getElementById('publishNews').checked,
                                publishDate: new Date(publishDate).toISOString()
                            })
                        });

                        if (response.ok) {
                            alert('News item created successfully!');
                            closeUploadModal();
                            loadNews();
                        } else {
                            alert('Error: ' + response.status);
                        }
                    } catch (error) {
                        alert('Save failed: ' + error.message);
                    }
                }

                async function loadNews() {
                    try {
                        const response = await fetch('http://localhost:5233/api/news');
                        const newsItems = await response.json();
                        const tbody = document.getElementById('newsList');

                        document.getElementById('totalCount').textContent = `(${newsItems.length} Total)`;

                        if (newsItems.length === 0) {
                            tbody.innerHTML = '<tr><td colspan="4" class="px-4 py-8 text-center text-gray-500">No news items found</td></tr>';
                            return;
                        }

                        tbody.innerHTML = newsItems.map(item => {
                            const date = new Date(item.publishDate).toLocaleDateString();
                            return `
                        <tr class="border-b border-gray-200 hover:bg-gray-50 news-row" data-title="${item.title.toLowerCase()}">
                            <td class="px-4 py-3 text-gray-800 font-medium">${item.title}</td>
                            <td class="px-4 py-3 text-gray-600">${date}</td>
                            <td class="px-4 py-3">
                                <span class="px-3 py-1 rounded-full text-xs font-semibold ${item.isPublished ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}">
                                    ${item.isPublished ? 'Published' : 'Draft'}
                                </span>
                            </td>
                            <td class="px-4 py-3 text-center">
                                <button onclick="deleteNews(${item.id})" class="text-red-600 hover:text-red-800">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                    `;
                        }).join('');
                    } catch (error) {
                        console.error('Error loading news:', error);
                        document.getElementById('newsList').innerHTML = '<tr><td colspan="4" class="px-4 py-8 text-center text-red-500">Error loading news</td></tr>';
                    }
                }

                function filterNews() {
                    const query = document.getElementById('searchInput').value.toLowerCase();
                    document.querySelectorAll('.news-row').forEach(row => {
                        row.style.display = row.dataset.title.includes(query) ? '' : 'none';
                    });
                }

                async function deleteNews(id) {
                    if (!confirm('Delete this news item?')) return;

                    try {
                        const response = await fetch(`http://localhost:5233/api/news/${id}`, { method: 'DELETE' });
                        if (response.ok) {
                            alert('News item deleted successfully');
                            loadNews();
                        } else {
                            alert('Error: ' + response.status);
                        }
                    } catch (error) {
                        alert('Delete failed: ' + error.message);
                    }
                }

                loadNews();
            </script>
        </body>

        </html>