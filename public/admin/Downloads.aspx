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
            <title>Manage Downloads - ORIC Admin</title>
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
                    padding: 30px;
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
                        <a href="News.aspx" class="nav-item flex items-center gap-3 px-4 py-3 rounded-lg text-gray-700">
                            <i class="fas fa-rss"></i> <span>News</span>
                        </a>
                        <a href="Downloads.aspx"
                            class="nav-item active flex items-center gap-3 px-4 py-3 rounded-lg text-white">
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
                                <h1 class="text-2xl font-bold">Manage Downloads</h1>
                                <p class="text-blue-100 text-sm">Upload and manage download files</p>
                            </div>
                            <button onclick="openUploadModal()"
                                class="bg-white text-blue-600 px-4 py-2 rounded-lg font-semibold hover:shadow-lg transition">
                                <i class="fas fa-cloud-upload-alt"></i> Upload File
                            </button>
                        </div>
                    </header>

                    <!-- Content -->
                    <div class="flex-1 overflow-auto p-6">
                        <div class="bg-white rounded-lg shadow-lg">
                            <div class="p-6">
                                <div class="flex items-center justify-between mb-4">
                                    <h2 class="text-lg font-bold text-gray-800">Downloads <span
                                            class="text-sm text-gray-500" id="totalCount">(Loading...)</span></h2>
                                    <input type="text" id="searchInput" placeholder="Search downloads..."
                                        class="px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600 w-64"
                                        onkeyup="filterDownloads()" />
                                </div>

                                <div class="overflow-x-auto">
                                    <table class="w-full">
                                        <thead class="bg-gray-100 border-b-2 border-gray-200">
                                            <tr>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Title</th>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Upload Date
                                                </th>
                                                <th class="px-4 py-3 text-left font-semibold text-gray-800">Status</th>
                                                <th class="px-4 py-3 text-center font-semibold text-gray-800">Actions
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="downloadsList">
                                            <tr>
                                                <td colspan="4" class="px-4 py-8 text-center text-gray-500">
                                                    <i class="fas fa-spinner fa-spin text-2xl mb-2"></i>
                                                    <p>Loading downloads...</p>
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
                <div class="bg-white rounded-lg max-w-md w-full p-6">
                    <h2 class="text-xl font-bold text-gray-800 mb-4">Upload Download File</h2>

                    <!-- Drop Zone -->
                    <div class="drop-zone" id="dropZone">
                        <i class="fas fa-file-download text-4xl text-blue-600 mb-2"></i>
                        <p class="text-gray-700 font-semibold">Drag & drop file here</p>
                        <p class="text-gray-500 text-sm">or</p>
                        <button type="button" onclick="document.getElementById('fileInput').click()"
                            class="text-blue-600 hover:text-blue-700 font-semibold">
                            Browse Files
                        </button>
                        <input type="file" id="fileInput" accept=".pdf,.doc,.docx,.xls,.xlsx,.zip,.rar"
                            style="display:none;" />
                        <p class="text-gray-500 text-xs mt-2">Max size: 50MB (PDF, DOC, XLS, ZIP, RAR)</p>
                    </div>

                    <!-- Form -->
                    <div id="formContainer" class="mt-4 space-y-3 hidden">
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-1">File Title</label>
                            <input type="text" id="dlTitle"
                                class="w-full px-3 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600"
                                placeholder="Enter file title" />
                        </div>
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-1">Upload Date</label>
                            <input type="date" id="dlDate"
                                class="w-full px-3 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600" />
                        </div>
                        <label class="flex items-center gap-2">
                            <input type="checkbox" id="publishDl" checked />
                            <span class="text-sm text-gray-700">Publish immediately</span>
                        </label>
                    </div>

                    <!-- Buttons -->
                    <div class="flex gap-2 mt-6">
                        <button type="button" id="uploadBtn" onclick="uploadDownload()"
                            class="flex-1 bg-blue-600 text-white py-2 rounded-lg font-semibold hover:bg-blue-700 hidden">
                            <i class="fas fa-upload"></i> Upload
                        </button>
                        <button type="button" onclick="closeUploadModal()"
                            class="flex-1 bg-gray-300 text-gray-800 py-2 rounded-lg font-semibold hover:bg-gray-400">
                            Cancel
                        </button>
                    </div>
                </div>
            </div>

            <script>
                let selectedFile = null;

                // Drag and drop
                const dropZone = document.getElementById('dropZone');
                const fileInput = document.getElementById('fileInput');

                ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
                    dropZone.addEventListener(eventName, (e) => { e.preventDefault(); e.stopPropagation(); }, false);
                });

                ['dragenter', 'dragover'].forEach(eventName => {
                    dropZone.addEventListener(eventName, () => dropZone.classList.add('drag-over'), false);
                });

                ['dragleave', 'drop'].forEach(eventName => {
                    dropZone.addEventListener(eventName, () => dropZone.classList.remove('drag-over'), false);
                });

                dropZone.addEventListener('drop', (e) => {
                    const files = e.dataTransfer.files;
                    handleFiles(files);
                }, false);

                fileInput.addEventListener('change', (e) => {
                    handleFiles(e.target.files);
                });

                function getAuthHeaders() {
                    const token = localStorage.getItem('authToken');
                    return token ? { 'Authorization': `Bearer ${token}` } : {};
                }

                function handleFiles(files) {
                    if (files.length === 0) return;

                    const file = files[0];
                    const allowedExtensions = ['.pdf', '.doc', '.docx', '.xls', '.xlsx', '.zip', '.rar'];
                    const fileExtension = '.' + file.name.split('.').pop().toLowerCase();

                    if (!allowedExtensions.includes(fileExtension)) {
                        alert('Please select a valid file format (PDF, DOC, DOCX, XLS, XLSX, ZIP, RAR)');
                        return;
                    }

                    if (file.size > 50 * 1024 * 1024) {
                        alert('File size must not exceed 50MB');
                        return;
                    }

                    selectedFile = file;
                    document.getElementById('formContainer').classList.remove('hidden');
                    document.getElementById('uploadBtn').classList.remove('hidden');
                    document.getElementById('dlTitle').value = file.name.replace(/\.[^/.]+$/, '');
                    document.getElementById('dlDate').valueAsDate = new Date();
                }

                async function uploadDownload() {
                    if (!selectedFile) return;

                    const formData = new FormData();
                    formData.append('file', selectedFile);

                    try {
                        // Upload file
                        const uploadResponse = await fetch('http://localhost:5233/api/upload/file/downloads', {
                            method: 'POST',
                            headers: getAuthHeaders(),
                            body: formData
                        });

                        if (!uploadResponse.ok) {
                            const text = await uploadResponse.text();
                            alert('Upload error: ' + uploadResponse.status + ' - ' + text);
                            return;
                        }

                        const uploadResult = await uploadResponse.json();

                        if (uploadResult.success) {
                            // Save to database
                            const dbResponse = await fetch('http://localhost:5233/api/downloads', {
                                method: 'POST',
                                headers: { ...getAuthHeaders(), 'Content-Type': 'application/json' },
                                body: JSON.stringify({
                                    title: document.getElementById('dlTitle').value,
                                    summary: 'Download File',
                                    content: '',
                                    imageUrl: '',
                                    fileUrl: uploadResult.url,
                                    isPublished: document.getElementById('publishDl').checked,
                                    publishDate: new Date(document.getElementById('dlDate').value).toISOString()
                                })
                            });

                            if (dbResponse.ok) {
                                alert('File uploaded successfully!');
                                closeUploadModal();
                                loadDownloads();
                            } else {
                                alert('Error saving to database: ' + dbResponse.status);
                            }
                        } else {
                            alert('Error: ' + uploadResult.error);
                        }
                    } catch (error) {
                        alert('Upload failed: ' + error.message);
                    }
                }

                function openUploadModal() {
                    document.getElementById('uploadModal').classList.remove('hidden');
                }

                function closeUploadModal() {
                    document.getElementById('uploadModal').classList.add('hidden');
                    selectedFile = null;
                    document.getElementById('fileInput').value = '';
                    document.getElementById('formContainer').classList.add('hidden');
                    document.getElementById('uploadBtn').classList.add('hidden');
                }

                async function loadDownloads() {
                    try {
                        const response = await fetch('http://localhost:5233/api/downloads');
                        const downloads = await response.json();
                        const tbody = document.getElementById('downloadsList');

                        document.getElementById('totalCount').textContent = `(${downloads.length} Total)`;

                        if (downloads.length === 0) {
                            tbody.innerHTML = '<tr><td colspan="4" class="px-4 py-8 text-center text-gray-500">No downloads found</td></tr>';
                            return;
                        }

                        tbody.innerHTML = downloads.map(item => {
                            const date = new Date(item.publishDate).toLocaleDateString();
                            return `
                        <tr class="border-b border-gray-200 hover:bg-gray-50 download-row" data-title="${item.title.toLowerCase()}">
                            <td class="px-4 py-3 text-gray-800 font-medium">${item.title}</td>
                            <td class="px-4 py-3 text-gray-600">${date}</td>
                            <td class="px-4 py-3">
                                <span class="px-3 py-1 rounded-full text-xs font-semibold ${item.isPublished ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}">
                                    ${item.isPublished ? 'Published' : 'Draft'}
                                </span>
                            </td>
                            <td class="px-4 py-3 text-center">
                                <a href="${item.fileUrl}" target="_blank" class="text-blue-600 hover:text-blue-800 mr-3">
                                    <i class="fas fa-download"></i>
                                </a>
                                <button onclick="deleteDownload(${item.id})" class="text-red-600 hover:text-red-800">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                    `;
                        }).join('');
                    } catch (error) {
                        console.error('Error loading downloads:', error);
                        document.getElementById('downloadsList').innerHTML = '<tr><td colspan="4" class="px-4 py-8 text-center text-red-500">Error loading downloads</td></tr>';
                    }
                }

                function filterDownloads() {
                    const query = document.getElementById('searchInput').value.toLowerCase();
                    document.querySelectorAll('.download-row').forEach(row => {
                        row.style.display = row.dataset.title.includes(query) ? '' : 'none';
                    });
                }

                async function deleteDownload(id) {
                    if (!confirm('Delete this download?')) return;

                    try {
                        const response = await fetch(`http://localhost:5233/api/downloads/${id}`, { method: 'DELETE' });
                        if (response.ok) {
                            alert('Download deleted successfully');
                            loadDownloads();
                        }
                    } catch (error) {
                        alert('Delete failed: ' + error.message);
                    }
                }

                loadDownloads();
            </script>
        </body>

        </html>