<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Contact Us - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-gradient-to-r from-gray-700 to-gray-900 text-white py-16">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl font-bold mb-4">Contact Us</h1>
            <p class="text-xl">Get in Touch with ORIC</p>
        </div>
    </section>
    
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="grid md:grid-cols-2 gap-12">
                <!-- Contact Form -->
                <div>
                    <h2 class="text-3xl font-bold text-gray-900 mb-6">Send Us a Message</h2>
                    <p class="text-gray-700 mb-8">
                        Have questions about research, funding, or our services? Fill out the form below 
                        and we'll get back to you within 24-48 hours.
                    </p>
                    
                    <form class="space-y-6" method="post" action="Process_Form.aspx">
                        <div>
                            <label for="name" class="block text-sm font-bold text-gray-700 mb-2">
                                Full Name <span class="text-red-600">*</span>
                            </label>
                            <input 
                                type="text" 
                                id="name" 
                                name="name" 
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                placeholder="Enter your full name"
                            />
                        </div>
                        
                        <div>
                            <label for="email" class="block text-sm font-bold text-gray-700 mb-2">
                                Email Address <span class="text-red-600">*</span>
                            </label>
                            <input 
                                type="email" 
                                id="email" 
                                name="email" 
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                placeholder="your.email@example.com"
                            />
                        </div>
                        
                        <div>
                            <label for="phone" class="block text-sm font-bold text-gray-700 mb-2">
                                Phone Number
                            </label>
                            <input 
                                type="tel" 
                                id="phone" 
                                name="phone"
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                placeholder="+92 XXX XXXXXXX"
                            />
                        </div>
                        
                        <div>
                            <label for="subject" class="block text-sm font-bold text-gray-700 mb-2">
                                Subject <span class="text-red-600">*</span>
                            </label>
                            <select 
                                id="subject" 
                                name="subject" 
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                            >
                                <option value="">Select a subject</option>
                                <option value="general">General Inquiry</option>
                                <option value="research">Research Support</option>
                                <option value="grant">Grant Application</option>
                                <option value="collaboration">Industry Collaboration</option>
                                <option value="ethics">Ethics Approval</option>
                                <option value="services">Research Services</option>
                                <option value="training">Training Programs</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                        
                        <div>
                            <label for="message" class="block text-sm font-bold text-gray-700 mb-2">
                                Message <span class="text-red-600">*</span>
                            </label>
                            <textarea 
                                id="message" 
                                name="message" 
                                rows="6" 
                                required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                placeholder="Tell us more about your inquiry..."
                            ></textarea>
                        </div>
                        
                        <div>
                            <button type="submit" class="btn-primary w-full">
                                Send Message
                            </button>
                        </div>
                        
                        <p class="text-sm text-gray-600">
                            <span class="text-red-600">*</span> Required fields
                        </p>
                    </form>
                </div>
                
                <!-- Contact Information -->
                <div>
                    <h2 class="text-3xl font-bold text-gray-900 mb-6">Contact Information</h2>
                    
                    <div class="space-y-6 mb-8">
                        <div class="card">
                            <div class="flex items-start gap-4">
                                <div class="bg-blue-100 p-3 rounded">
                                    <span class="text-2xl">📍</span>
                                </div>
                                <div>
                                    <h3 class="font-bold text-gray-900 mb-2">Office Address</h3>
                                    <p class="text-gray-700">
                                        Office of Research, Innovation & Commercialization<br/>
                                        Main Campus Building, 2nd Floor<br/>
                                        University Road<br/>
                                        City, Province - Postal Code
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card">
                            <div class="flex items-start gap-4">
                                <div class="bg-green-100 p-3 rounded">
                                    <span class="text-2xl">📞</span>
                                </div>
                                <div>
                                    <h3 class="font-bold text-gray-900 mb-2">Phone Numbers</h3>
                                    <p class="text-gray-700">
                                        Main Office: +92 (XX) XXXX-XXXX<br/>
                                        Director: +92 (XX) XXXX-XXXX (Ext. 101)<br/>
                                        TISC: +92 (XX) XXXX-XXXX (Ext. 123)<br/>
                                        Hi-Tech Center: +92 (XX) XXXX-XXXX
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card">
                            <div class="flex items-start gap-4">
                                <div class="bg-purple-100 p-3 rounded">
                                    <span class="text-2xl">📧</span>
                                </div>
                                <div>
                                    <h3 class="font-bold text-gray-900 mb-2">Email Addresses</h3>
                                    <p class="text-gray-700">
                                        General: info@oric.edu<br/>
                                        Director: director@oric.edu<br/>
                                        Research Support: research@oric.edu<br/>
                                        TISC: tisc@oric.edu<br/>
                                        Hi-Tech: hitech@oric.edu
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="card">
                            <div class="flex items-start gap-4">
                                <div class="bg-orange-100 p-3 rounded">
                                    <span class="text-2xl">⏰</span>
                                </div>
                                <div>
                                    <h3 class="font-bold text-gray-900 mb-2">Office Hours</h3>
                                    <p class="text-gray-700">
                                        Monday - Friday: 9:00 AM - 5:00 PM<br/>
                                        Saturday: 9:00 AM - 1:00 PM<br/>
                                        Sunday & Public Holidays: Closed
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Key Personnel -->
                    <h3 class="text-2xl font-bold text-gray-900 mb-4">Key Personnel</h3>
                    <div class="space-y-4">
                        <div class="card bg-gray-50">
                            <h4 class="font-bold text-gray-900">Prof. Dr. [Name]</h4>
                            <p class="text-sm text-gray-600 mb-1">Director, ORIC</p>
                            <p class="text-sm text-gray-700">📧 director@oric.edu</p>
                        </div>
                        
                        <div class="card bg-gray-50">
                            <h4 class="font-bold text-gray-900">Dr. [Name]</h4>
                            <p class="text-sm text-gray-600 mb-1">Deputy Director, Research</p>
                            <p class="text-sm text-gray-700">📧 deputy.research@oric.edu</p>
                        </div>
                        
                        <div class="card bg-gray-50">
                            <h4 class="font-bold text-gray-900">[Name]</h4>
                            <p class="text-sm text-gray-600 mb-1">Manager, TISC</p>
                            <p class="text-sm text-gray-700">📧 tisc@oric.edu</p>
                        </div>
                    </div>
                    
                    <!-- Social Media -->
                    <div class="mt-8">
                        <h3 class="text-xl font-bold text-gray-900 mb-4">Follow Us</h3>
                        <div class="flex gap-4">
                            <a href="#" class="bg-blue-600 text-white p-3 rounded-full hover:bg-blue-700 transition">
                                <span class="text-xl">📘</span>
                            </a>
                            <a href="#" class="bg-blue-400 text-white p-3 rounded-full hover:bg-blue-500 transition">
                                <span class="text-xl">🐦</span>
                            </a>
                            <a href="#" class="bg-blue-700 text-white p-3 rounded-full hover:bg-blue-800 transition">
                                <span class="text-xl">💼</span>
                            </a>
                            <a href="#" class="bg-red-600 text-white p-3 rounded-full hover:bg-red-700 transition">
                                <span class="text-xl">📺</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Map Section -->
            <div class="mt-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">Find Us on Map</h2>
                <div class="bg-gray-200 h-96 rounded-lg flex items-center justify-center">
                    <div class="text-center text-gray-600">
                        <span class="text-6xl mb-4 block">🗺️</span>
                        <p class="text-lg">Map integration goes here</p>
                        <p class="text-sm">Google Maps or other mapping service</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
