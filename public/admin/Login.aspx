<%@ Page Language="C#" AutoEventWireup="true" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ORIC Admin - Login</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .gradient-bg {
                background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
            }

            .btn-primary {
                background: linear-gradient(135deg, #1a3a5c 0%, #1e5799 100%);
                transition: all 0.3s ease;
            }

            .btn-primary:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 25px rgba(26, 58, 92, 0.3);
            }
        </style>
    </head>

    <body class="gradient-bg min-h-screen flex items-center justify-center py-12 px-4">
        <div class="w-full max-w-md">
            <!-- Logo Section -->
            <div class="text-center mb-8">
                <div class="inline-flex items-center justify-center w-16 h-16 bg-white rounded-xl mb-4">
                    <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M13 10V3L4 14h7v7l9-11h-7z" />
                    </svg>
                </div>
                <h1 class="text-3xl font-bold text-white mb-2">ORIC Admin</h1>
                <p class="text-blue-100">Sign in to your account</p>
            </div>

            <!-- Login Form -->
            <form id="loginForm" class="bg-white rounded-2xl shadow-2xl p-8">
                <div id="errorMessage"
                    class="mb-4 p-4 bg-red-100 border border-red-400 text-red-700 rounded-lg text-sm hidden">
                    <strong>Error:</strong> <span id="errorText"></span>
                </div>

                <div class="mb-6">
                    <label for="username" class="block text-sm font-semibold text-gray-700 mb-2">Username</label>
                    <input type="text" id="username" name="username"
                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600 transition"
                        placeholder="Enter your username" required />
                </div>

                <div class="mb-6">
                    <label for="password" class="block text-sm font-semibold text-gray-700 mb-2">Password</label>
                    <input type="password" id="password" name="password"
                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-lg focus:outline-none focus:border-blue-600 transition"
                        placeholder="Enter your password" required />
                </div>

                <button type="button" onclick="handleLogin(event)"
                    class="btn-primary w-full py-3 px-4 bg-gradient-to-r from-blue-600 to-blue-700 text-white font-semibold rounded-lg hover:shadow-lg transition duration-300 mb-4">
                    Sign In
                </button>

                <p class="text-center text-sm text-gray-600">
                    Demo Credentials:<br />
                    <span class="font-mono text-xs bg-gray-100 px-2 py-1 rounded">admin / Admin@123</span>
                </p>
            </form>

            <!-- Footer -->
            <div class="text-center mt-8">
                <p class="text-blue-100 text-sm">
                    &copy; 2026 ORIC System. All rights reserved.
                </p>
            </div>
        </div>

        <script>
            async function handleLogin(event) {
                event.preventDefault();

                const username = document.getElementById('username').value.trim();
                const password = document.getElementById('password').value.trim();
                const errorDiv = document.getElementById('errorMessage');
                const errorText = document.getElementById('errorText');

                if (!username || !password) {
                    errorText.textContent = 'Please enter username and password';
                    errorDiv.classList.remove('hidden');
                    return;
                }

                try {
                    const response = await fetch('http://localhost:5233/api/auth/login', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify({
                            username: username,
                            password: password
                        })
                    });

                    if (!response.ok) {
                        const text = await response.text();
                        errorText.textContent = 'Invalid username or password';
                        errorDiv.classList.remove('hidden');
                        return;
                    }

                    const result = await response.json();

                    // Store JWT token in localStorage
                    localStorage.setItem('authToken', result.token);
                    localStorage.setItem('adminUser', result.username);

                    // Also set session via server (optional, for backward compatibility)
                    document.cookie = `AdminToken=${result.token}; path=/`;

                    // Redirect to dashboard
                    window.location.href = 'Dashboard.aspx';
                } catch (error) {
                    errorText.textContent = 'Login failed: ' + error.message;
                    errorDiv.classList.remove('hidden');
                }
            }

            // Allow Enter key to submit
            document.getElementById('loginForm').addEventListener('keypress', (e) => {
                if (e.key === 'Enter') {
                    handleLogin(e);
                }
            });
        </script>
    </body>

    </html>