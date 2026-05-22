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
            <title>Manage Galleries - ORIC Admin</title>
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

                .progress-bar {
                    width: 0%;
                    height: 4px;
                    background: #1a3a5c;
                    border-radius: 2px;
                    transition: width 0.3s;
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
                            class="nav-item active flex items-center gap-3 px-4 py-3 rounded-lg text-white">
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
                                <h1 class="text-2xl font-bold">Manage Galleries</h1>
                                <p class="text-blue-100 text-sm">Upload and manage gallery images</p>
                            </div>
                            <button onclick="openUploadModal()"
                                class="bg-white text-blue-600 px-4 py-2 rounded-lg font-semibold hover:shadow-lg transition">
                                <i class="fas fa-cloud-upload-alt"></i> Upload Image
                            </button>
                        </div>
                    </header>

                    <!-- Content -->
                    <div class="flex-1 overflow-auto p-6">
                        <div class="bg-white rounded-lg shadow-lg">
                            <div class="p-6">
                                <h2 class="text-lg font-bold text-gray-800 mb-4">Gallery Images</h2>

                                <div id="galleryGrid"
                                    class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
                                    <div class="col-span-full text-center py-8 text-gray-500">
                                        <i class="fas fa-spinner fa-spin text-2xl mb-2"></i>
                                        <p>Loading gallery images...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

            <!-- Upload Modal -->
            <div id="uploadModal"
                class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center z-50 p-4">
                <div class="bg-white rounded-lg max-w-2xl w-full p-6 max-h-[90vh] overflow-y-auto">
                    <h2 class="text-xl font-bold text-gray-800 mb-4">Upload Gallery Images</h2>
                    <p class="text-sm text-gray-600 mb-4">Upload up to 20 images at once. Max 10MB per image.</p>

                    <!-- Drop Zone -->
                    <div class="drop-zone" id="dropZone">
                        <i class="fas fa-cloud-upload-alt text-4xl text-blue-600 mb-2"></i>
                        <p class="text-gray-700 font-semibold">Drag & drop images here</p>
                        <p class="text-gray-500 text-sm">or</p>
                        <button type="button" onclick="document.getElementById('fileInput').click()"
                            class="text-blue-600 hover:text-blue-700 font-semibold">
                            Browse Files
                        </button>
                        <input type="file" id="fileInput" accept="image/*" multiple style="display:none;" />
                        <p class="text-gray-500 text-xs mt-2">Formats: JPG, PNG, GIF, WebP | Max 20 files | Max 10MB
                            each</p>
                    </div>

                    <!-- Selected Files List -->
                    <div id="filesListContainer" class="mt-4 hidden">
                        <h3 class="font-semibold text-gray-700 mb-2">Selected Files (<span id="fileCount">0</span>/20):
                        </h3>
                        <div id="filesList" class="space-y-2 bg-gray-50 p-3 rounded-lg max-h-48 overflow-y-auto">
                        </div>
                        <div class="mt-2 text-xs text-red-600">
                            <span id="validationErrors"></span>
                        </div>
                    </div>

                    <!-- Upload Progress -->
                    <div id="uploadProgress" class="mt-4 hidden">
                        <div class="flex items-center justify-between mb-2">
                            <p class="text-sm font-semibold text-gray-700">Uploading Files...</p>
                            <span id="uploadStats" class="text-xs text-gray-600"></span>
                        </div>
                        <div id="progressBars" class="space-y-2">
                        </div>
                    </div>

                    <!-- Upload Complete Summary -->
                    <div id="uploadSummary" class="mt-4 hidden">
                        <div class="p-4 bg-green-50 border border-green-200 rounded-lg">
                            <h3 class="font-semibold text-green-700 mb-2">Upload Complete!</h3>
                            <div class="text-sm text-gray-700">
                                <p>✓ <span id="successCount">0</span> images uploaded successfully</p>
                                <p id="failedSummary" class="hidden">✗ <span id="failCount">0</span> images failed</p>
                            </div>
                        </div>
                    </div>

                    <!-- Action Buttons -->
                    <div class="flex gap-2 mt-6">
                        <button type="button" id="uploadBtn" onclick="uploadImages()"
                            class="flex-1 bg-blue-600 text-white py-2 rounded-lg font-semibold hover:bg-blue-700 hidden">
                            <i class="fas fa-upload"></i> Upload <span id="uploadBtnCount"></span> Files
                        </button>
                        <button type="button" id="closeBtn" onclick="closeUploadModal()"
                            class="flex-1 bg-gray-300 text-gray-800 py-2 rounded-lg font-semibold hover:bg-gray-400">
                            <span id="closeBtnText">Cancel</span>
                        </button>
                    </div>
                </div>
            </div>

            <script>
                let selectedFiles = [];

                // Determine API base URL dynamically
                const API_BASE = localStorage.getItem('oric_api_base_url') || window.location.origin || 'http://localhost:5233';

                const ALLOWED_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.gif', '.webp'];
                const ALLOWED_MIMETYPES = ['image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/x-png'];
                const MAX_FILE_SIZE = 10 * 1024 * 1024; // 10MB
                const MAX_FILES = 20;

                function getAuthHeaders() {
                    const token = localStorage.getItem('authToken');
                    return token ? { 'Authorization': `Bearer ${token}` } : {};
                }

                // Drag and drop
                const dropZone = document.getElementById('dropZone');
                const fileInput = document.getElementById('fileInput');

                ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
                    dropZone.addEventListener(eventName, preventDefaults, false);
                });

                function preventDefaults(e) {
                    e.preventDefault();
                    e.stopPropagation();
                }

                ['dragenter', 'dragover'].forEach(eventName => {
                    dropZone.addEventListener(eventName, () => dropZone.classList.add('drag-over'), false);
                });

                ['dragleave', 'drop'].forEach(eventName => {
                    dropZone.addEventListener(eventName, () => dropZone.classList.remove('drag-over'), false);
                });

                dropZone.addEventListener('drop', (e) => {
                    const dt = e.dataTransfer;
                    const files = dt.files;
                    handleFiles(files);
                }, false);

                fileInput.addEventListener('change', (e) => {
                    handleFiles(e.target.files);
                });

                function handleFiles(files) {
                    if (files.length === 0) return;

                    // Clear previous selection
                    selectedFiles = [];

                    // Add new files
                    for (let i = 0; i < files.length; i++) {
                        selectedFiles.push({
                            file: files[i],
                            valid: true,
                            errors: []
                        });
                    }

                    displaySelectedFiles();
                }

                function validateFiles() {
                    let hasErrors = false;
                    const errors = [];

                    // Check total count
                    if (selectedFiles.length > MAX_FILES) {
                        hasErrors = true;
                        errors.push(`Too many files! Maximum ${MAX_FILES} allowed, you selected ${selectedFiles.length}`);
                    }

                    // Validate each file
                    selectedFiles.forEach((item, index) => {
                        const file = item.file;
                        item.errors = [];

                        // Check MIME type
                        if (!ALLOWED_MIMETYPES.includes(file.type.toLowerCase())) {
                            item.valid = false;
                            item.errors.push(`Invalid MIME type: ${file.type || 'unknown'}`);
                            hasErrors = true;
                        }

                        // Check extension
                        const ext = '.' + file.name.split('.').pop().toLowerCase();
                        if (!ALLOWED_EXTENSIONS.includes(ext)) {
                            item.valid = false;
                            item.errors.push(`Invalid extension: ${ext}`);
                            hasErrors = true;
                        }

                        // Check file size
                        if (file.size > MAX_FILE_SIZE) {
                            item.valid = false;
                            item.errors.push(`File too large: ${formatBytes(file.size)} (max 10MB)`);
                            hasErrors = true;
                        }

                        // Check file name for suspicious patterns
                        if (file.name.includes('..') || file.name.includes('/') || file.name.includes('\\')) {
                            item.valid = false;
                            item.errors.push('Invalid filename');
                            hasErrors = true;
                        }
                    });

                    return { valid: !hasErrors, errors: errors };
                }

                function displaySelectedFiles() {
                    const container = document.getElementById('filesListContainer');
                    const filesList = document.getElementById('filesList');
                    const errorContainer = document.getElementById('validationErrors');
                    const uploadBtn = document.getElementById('uploadBtn');

                    if (selectedFiles.length === 0) {
                        container.classList.add('hidden');
                        uploadBtn.classList.add('hidden');
                        return;
                    }

                    // Validate files
                    const validation = validateFiles();

                    // Update count display
                    document.getElementById('fileCount').textContent = selectedFiles.length;
                    document.getElementById('uploadBtnCount').textContent = `(${selectedFiles.length})`;

                    // Display validation errors
                    if (validation.errors.length > 0) {
                        errorContainer.innerHTML = validation.errors.map(e => `<div class="text-red-600">⚠ ${e}</div>`).join('');
                    } else {
                        errorContainer.innerHTML = '';
                    }

                    // Display file list
                    filesList.innerHTML = selectedFiles.map((item, idx) => {
                        const statusIcon = item.valid ? '<i class="fas fa-check text-green-600"></i>' : '<i class="fas fa-exclamation-triangle text-red-600"></i>';
                        const errorText = item.errors.length > 0 ? `<div class="text-xs text-red-600 mt-1">${item.errors.join('; ')}</div>` : '';
                        return `
                            <div class="flex items-center justify-between p-2 bg-white rounded border ${item.valid ? 'border-green-200' : 'border-red-200'}">
                                <div class="flex items-center gap-2 flex-1">
                                    ${statusIcon}
                                    <div class="flex-1">
                                        <p class="text-sm font-medium text-gray-700">${item.file.name}</p>
                                        <p class="text-xs text-gray-500">${formatBytes(item.file.size)}</p>
                                        ${errorText}
                                    </div>
                                </div>
                                <button type="button" onclick="removeFile(${idx})" class="text-red-600 hover:text-red-800 text-sm">Remove</button>
                            </div>
                        `;
                    }).join('');

                    container.classList.remove('hidden');

                    // Show upload button only if there are valid files
                    const validFiles = selectedFiles.filter(f => f.valid);
                    if (validFiles.length > 0 && validation.errors.length === 0) {
                        uploadBtn.classList.remove('hidden');
                    } else {
                        uploadBtn.classList.add('hidden');
                    }
                }

                function removeFile(index) {
                    selectedFiles.splice(index, 1);
                    displaySelectedFiles();
                }

                function formatBytes(bytes) {
                    if (bytes === 0) return '0 Bytes';
                    const k = 1024;
                    const sizes = ['Bytes', 'KB', 'MB'];
                    const i = Math.floor(Math.log(bytes) / Math.log(k));
                    return Math.round(bytes / Math.pow(k, i) * 100) / 100 + ' ' + sizes[i];
                }

                async function uploadImages() {
                    if (selectedFiles.length === 0) {
                        alert('Please select files to upload');
                        return;
                    }

                    const validFiles = selectedFiles.filter(f => f.valid);
                    if (validFiles.length === 0) {
                        alert('No valid files to upload');
                        return;
                    }

                    // Hide file list and show progress
                    document.getElementById('filesListContainer').classList.add('hidden');
                    document.getElementById('uploadBtn').classList.add('hidden');
                    document.getElementById('uploadProgress').classList.remove('hidden');

                    // Prepare FormData
                    const formData = new FormData();
                    validFiles.forEach(item => {
                        formData.append('files', item.file);
                    });

                    try {
                        const response = await fetch(`${API_BASE}/api/upload/gallery/batch`, {
                            method: 'POST',
                            headers: getAuthHeaders(),
                            body: formData
                        });

                        // Get response text first to debug
                        const responseText = await response.text();

                        if (!responseText) {
                            alert('Error: Empty response from server. Check if the file upload endpoint exists.');
                            document.getElementById('uploadProgress').classList.add('hidden');
                            displaySelectedFiles();
                            return;
                        }

                        let result;
                        try {
                            result = JSON.parse(responseText);
                        } catch (parseError) {
                            alert('Error: Server returned invalid JSON.\n\nResponse: ' + responseText.substring(0, 500));
                            document.getElementById('uploadProgress').classList.add('hidden');
                            displaySelectedFiles();
                            return;
                        }

                        if (!response.ok) {
                            if (result.errors) {
                                alert('Upload errors:\n' + result.errors.map(e => `${e.file}: ${e.error}`).join('\n'));
                            } else {
                                alert('Upload failed: ' + (result.message || result.error || 'Unknown error'));
                            }
                            document.getElementById('uploadProgress').classList.add('hidden');
                            displaySelectedFiles();
                            return;
                        }

                        // Check if result indicates success
                        if (!result.success && result.uploadedCount === 0) {
                            alert('Upload failed: ' + (result.message || 'No files were uploaded'));
                            document.getElementById('uploadProgress').classList.add('hidden');
                            displaySelectedFiles();
                            return;
                        }

                        // Save uploaded images to database
                        if (result.uploaded && result.uploaded.length > 0) {
                            let savedCount = 0;
                            let failedSaveCount = 0;

                            for (const uploadedFile of result.uploaded) {
                                try {
                                    const dbResponse = await fetch(`${API_BASE}/api/gallery`, {
                                        method: 'POST',
                                        headers: { ...getAuthHeaders(), 'Content-Type': 'application/json' },
                                        body: JSON.stringify({
                                            title: uploadedFile.fileName.replace(/\.[^/.]+$/, ''), // Remove extension for title
                                            summary: '',
                                            content: '',
                                            imageUrl: uploadedFile.url,
                                            fileUrl: null,
                                            isPublished: true,
                                            publishDate: new Date().toISOString()
                                        })
                                    });

                                    if (dbResponse.ok) {
                                        savedCount++;
                                    } else {
                                        failedSaveCount++;
                                        console.error(`Failed to save ${uploadedFile.fileName} to database`);
                                    }
                                } catch (error) {
                                    failedSaveCount++;
                                    console.error(`Error saving ${uploadedFile.fileName}:`, error);
                                }
                            }

                            // Update summary with database save results
                            const successCount = savedCount;
                            const failCount = result.uploadedCount - savedCount;

                            // Show summary
                            document.getElementById('uploadProgress').classList.add('hidden');
                            document.getElementById('uploadSummary').classList.remove('hidden');
                            document.getElementById('successCount').textContent = successCount;

                            if (failCount > 0) {
                                document.getElementById('failedSummary').classList.remove('hidden');
                                document.getElementById('failCount').textContent = failCount;
                            }
                        } else {
                            // Show summary
                            document.getElementById('uploadProgress').classList.add('hidden');
                            document.getElementById('uploadSummary').classList.remove('hidden');
                            document.getElementById('successCount').textContent = result.uploadedCount || 0;

                            if (result.failedCount > 0) {
                                document.getElementById('failedSummary').classList.remove('hidden');
                                document.getElementById('failCount').textContent = result.failedCount;
                            }
                        }

                        document.getElementById('closeBtnText').textContent = 'Done';

                        // Reload galleries after 2 seconds
                        setTimeout(() => {
                            closeUploadModal();
                            loadGalleries();
                        }, 2000);

                    } catch (error) {
                        alert('Network error during upload: ' + error.message + '\n\nMake sure the API server is running at: ' + API_BASE);
                        document.getElementById('uploadProgress').classList.add('hidden');
                        displaySelectedFiles();
                    }
                }

                function openUploadModal() {
                    document.getElementById('uploadModal').classList.remove('hidden');
                    resetUploadForm();
                }

                function closeUploadModal() {
                    document.getElementById('uploadModal').classList.add('hidden');
                    resetUploadForm();
                }

                function resetUploadForm() {
                    selectedFiles = [];
                    document.getElementById('fileInput').value = '';
                    document.getElementById('filesListContainer').classList.add('hidden');
                    document.getElementById('uploadProgress').classList.add('hidden');
                    document.getElementById('uploadSummary').classList.add('hidden');
                    document.getElementById('uploadBtn').classList.add('hidden');
                    document.getElementById('closeBtnText').textContent = 'Cancel';
                }

                // Load galleries
                async function loadGalleries() {
                    try {
                        const response = await fetch(`${API_BASE}/api/gallery`);
                        const galleries = await response.json();
                        const grid = document.getElementById('galleryGrid');

                        if (galleries.length === 0) {
                            grid.innerHTML = '<div class="col-span-full text-center py-8 text-gray-500">No galleries found. Start by uploading an image!</div>';
                            return;
                        }

                        grid.innerHTML = galleries.map((item, idx) => `
                    <div class="bg-white border-2 border-gray-200 rounded-lg overflow-hidden hover:shadow-lg transition">
                        <img src="${item.imageUrl}" alt="${item.title}" class="w-full h-32 object-cover" onerror="this.src='data:image/svg+xml,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27%3E%3C/svg%3E'">
                        <div class="p-3">
                            <h3 class="font-semibold text-gray-800 text-sm mb-2">${item.title}</h3>
                            <span class="inline-block px-2 py-1 text-xs rounded ${item.isPublished ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}">
                                ${item.isPublished ? 'Published' : 'Draft'}
                            </span>
                            <div class="flex gap-2 mt-2">
                                <button class="flex-1 text-xs bg-red-100 text-red-600 py-1 rounded hover:bg-red-200" onclick="deleteGallery(${item.id})">Delete</button>
                            </div>
                        </div>
                    </div>
                `).join('');
                    } catch (error) {
                        console.error('Error loading galleries:', error);
                        document.getElementById('galleryGrid').innerHTML = '<div class="col-span-full text-center py-8 text-red-500">Error loading galleries</div>';
                    }
                }

                async function deleteGallery(id) {
                    if (!confirm('Delete this image?')) return;

                    try {
                        const response = await fetch(`${API_BASE}/api/gallery/${id}`, {
                            method: 'DELETE',
                            headers: getAuthHeaders()
                        });
                        if (response.ok) {
                            alert('Image deleted successfully');
                            loadGalleries();
                        } else {
                            alert('Error deleting image');
                        }
                    } catch (error) {
                        alert('Delete failed: ' + error.message);
                    }
                }

                // Load on page load
                loadGalleries();
            </script>
        </body>

        </html>