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
            <title>Manage Announcements - ORIC Admin</title>
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
                        <a href="News.aspx" class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-rss"></i> <span>News</span>
                        </a>
                        <a href="Downloads.aspx"
                            class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-download"></i> <span>Downloads</span>
                        </a>
                        <a href="Announcements.aspx"
                            class="nav-item active flex items-center gap-3 px-4 py-3 rounded-lg text-white">
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
                                <h1 class="text-2xl font-bold">Manage Announcements</h1>
                                <p class="text-blue-100 text-sm">Create and manage site announcements</p>
                            </div>
                            <button onclick="openCreateModal()"
                                class="bg-white text-blue-600 px-4 py-2 rounded-lg font-semibold hover:shadow-lg transition">
                                <i class="fas fa-plus"></i> New Announcement
                            </button>
                        </div>
                    </header>

                    <!-- Content -->
                    <div class="flex-1 overflow-auto p-6">
                        <div class="bg-white rounded-lg shadow-lg">
                            <div class="p-6">
                                <h2 class="text-lg font-bold text-gray-800 mb-4">Announcements</h2>

                                <div id="announcementsContainer"
                                    class="space-y-3">
                                    <div class="text-center py-8 text-gray-500">
                                        <i class="fas fa-spinner fa-spin text-2xl mb-2"></i>
                                        <p>Loading announcements...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

            <!-- Create/Edit Modal -->
            <div id="formModal"
                class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center z-50 p-4">
                <div class="bg-white rounded-lg max-w-2xl w-full p-6 max-h-[90vh] overflow-y-auto">
                    <h2 id="modalTitle" class="text-xl font-bold text-gray-800 mb-4">New Announcement</h2>

                    <form id="announcementForm" onsubmit="submitForm(event)">
                        <div class="space-y-4">
                            <!-- Title -->
                            <div>
                                <label class="block text-sm font-semibold text-gray-700 mb-2">Title *</label>
                                <input type="text" id="formTitle" placeholder="Announcement title"
                                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                                    required />
                            </div>

                            <!-- Content -->
                            <div>
                                <label class="block text-sm font-semibold text-gray-700 mb-2">Content *</label>
                                <textarea id="formContent" placeholder="Announcement text"
                                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 h-24"
                                    required></textarea>
                            </div>

                            <!-- Link URL (optional) -->
                            <div>
                                <label class="block text-sm font-semibold text-gray-700 mb-2">Link URL (Optional)</label>
                                <input type="url" id="formLinkUrl" placeholder="https://example.com"
                                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" />
                            </div>

                            <!-- Publish Toggle -->
                            <div>
                                <label class="flex items-center gap-3">
                                    <input type="checkbox" id="formIsPublished" class="w-5 h-5 text-blue-600 rounded" />
                                    <span class="text-sm font-semibold text-gray-700">Publish immediately</span>
                                </label>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="flex gap-2 mt-6">
                            <button type="submit"
                                class="flex-1 bg-blue-600 text-white py-2 rounded-lg font-semibold hover:bg-blue-700">
                                <i class="fas fa-save"></i> <span id="submitBtnText">Create</span>
                            </button>
                            <button type="button" onclick="closeFormModal()"
                                class="flex-1 bg-gray-300 text-gray-800 py-2 rounded-lg font-semibold hover:bg-gray-400">
                                Cancel
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <script>
                let currentEditId = null;

                // Determine API base URL dynamically
                const API_BASE = localStorage.getItem('oric_api_base_url') || window.location.origin || 'http://localhost:5233';

                function getAuthHeaders() {
                    const token = localStorage.getItem('authToken');
                    return token ? { 'Authorization': `Bearer ${token}` } : {};
                }

                // Load announcements
                async function loadAnnouncements() {
                    try {
                        const response = await fetch(`${API_BASE}/api/announcements/admin`, {
                            headers: getAuthHeaders()
                        });
                        const announcements = await response.json();
                        const container = document.getElementById('announcementsContainer');

                        if (announcements.length === 0) {
                            container.innerHTML = '<div class="text-center py-8 text-gray-500">No announcements yet. Create your first one!</div>';
                            return;
                        }

                        container.innerHTML = announcements.map(item => `
                    <div class="bg-gray-50 border border-gray-200 rounded-lg p-4">
                        <div class="flex justify-between items-start mb-3">
                            <div class="flex-1">
                                <h3 class="font-semibold text-gray-800">${item.title}</h3>
                                <p class="text-sm text-gray-600 mt-1">${item.content}</p>
                                ${item.linkUrl ? `<a href="${item.linkUrl}" target="_blank" class="text-sm text-blue-600 hover:underline mt-2 inline-block">${item.linkUrl}</a>` : ''}
                                <p class="text-xs text-gray-500 mt-2">Created: ${new Date(item.createdAt).toLocaleDateString()}</p>
                            </div>
                            <span class="px-3 py-1 text-xs rounded font-semibold ${item.isPublished ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}">
                                ${item.isPublished ? 'Published' : 'Draft'}
                            </span>
                        </div>
                        <div class="flex gap-2">
                            <button class="flex-1 text-sm bg-blue-100 text-blue-600 py-2 rounded hover:bg-blue-200" onclick="editAnnouncement(${item.id})">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="flex-1 text-sm ${item.isPublished ? 'bg-yellow-100 text-yellow-600 hover:bg-yellow-200' : 'bg-green-100 text-green-600 hover:bg-green-200'} py-2 rounded" onclick="togglePublish(${item.id}, ${!item.isPublished})">
                                <i class="fas ${item.isPublished ? 'fa-eye-slash' : 'fa-eye'}"></i> ${item.isPublished ? 'Unpublish' : 'Publish'}
                            </button>
                            <button class="flex-1 text-sm bg-red-100 text-red-600 py-2 rounded hover:bg-red-200" onclick="deleteAnnouncement(${item.id})">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                        </div>
                    </div>
                `).join('');
                    } catch (error) {
                        console.error('Error loading announcements:', error);
                        document.getElementById('announcementsContainer').innerHTML = '<div class="text-center py-8 text-red-500">Error loading announcements</div>';
                    }
                }

                function openCreateModal() {
                    currentEditId = null;
                    document.getElementById('modalTitle').textContent = 'New Announcement';
                    document.getElementById('submitBtnText').textContent = 'Create';
                    document.getElementById('announcementForm').reset();
                    document.getElementById('formModal').classList.remove('hidden');
                }

                function openEditModal(announcement) {
                    currentEditId = announcement.id;
                    document.getElementById('modalTitle').textContent = 'Edit Announcement';
                    document.getElementById('submitBtnText').textContent = 'Update';
                    document.getElementById('formTitle').value = announcement.title;
                    document.getElementById('formContent').value = announcement.content || '';
                    document.getElementById('formLinkUrl').value = announcement.linkUrl || '';
                    document.getElementById('formIsPublished').checked = announcement.isPublished;
                    document.getElementById('formModal').classList.remove('hidden');
                }

                function closeFormModal() {
                    document.getElementById('formModal').classList.add('hidden');
                    currentEditId = null;
                }

                async function submitForm(event) {
                    event.preventDefault();

                    const formData = {
                        title: document.getElementById('formTitle').value,
                        content: document.getElementById('formContent').value,
                        linkUrl: document.getElementById('formLinkUrl').value || null,
                        isPublished: document.getElementById('formIsPublished').checked,
                        publishDate: new Date().toISOString()
                    };

                    try {
                        let response;
                        if (currentEditId) {
                            response = await fetch(`${API_BASE}/api/announcements/${currentEditId}`, {
                                method: 'PUT',
                                headers: { ...getAuthHeaders(), 'Content-Type': 'application/json' },
                                body: JSON.stringify(formData)
                            });
                        } else {
                            response = await fetch(`${API_BASE}/api/announcements`, {
                                method: 'POST',
                                headers: { ...getAuthHeaders(), 'Content-Type': 'application/json' },
                                body: JSON.stringify(formData)
                            });
                        }

                        if (response.ok) {
                            alert(currentEditId ? 'Announcement updated!' : 'Announcement created!');
                            closeFormModal();
                            loadAnnouncements();
                        } else {
                            const error = await response.json();
                            alert('Error: ' + (error.message || 'Unknown error'));
                        }
                    } catch (error) {
                        alert('Error: ' + error.message);
                    }
                }

                async function editAnnouncement(id) {
                    try {
                        const response = await fetch(`${API_BASE}/api/announcements/${id}`);
                        const announcement = await response.json();
                        openEditModal(announcement);
                    } catch (error) {
                        alert('Error loading announcement: ' + error.message);
                    }
                }

                async function togglePublish(id, shouldPublish) {
                    try {
                        const endpoint = shouldPublish ? 'publish' : 'unpublish';
                        const response = await fetch(`${API_BASE}/api/announcements/${id}/${endpoint}`, {
                            method: 'PATCH',
                            headers: getAuthHeaders()
                        });
                        if (response.ok) {
                            loadAnnouncements();
                        } else {
                            alert('Error updating announcement');
                        }
                    } catch (error) {
                        alert('Error: ' + error.message);
                    }
                }

                async function deleteAnnouncement(id) {
                    if (!confirm('Delete this announcement?')) return;

                    try {
                        const response = await fetch(`${API_BASE}/api/announcements/${id}`, {
                            method: 'DELETE',
                            headers: getAuthHeaders()
                        });
                        if (response.ok) {
                            alert('Announcement deleted');
                            loadAnnouncements();
                        } else {
                            alert('Error deleting announcement');
                        }
                    } catch (error) {
                        alert('Delete failed: ' + error.message);
                    }
                }

                // Load on page load
                loadAnnouncements();
            </script>
        </body>

        </html>
