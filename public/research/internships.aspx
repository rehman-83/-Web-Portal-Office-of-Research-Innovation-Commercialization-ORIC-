<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Services - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<style>
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translateX(-30px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }

    .fade-in-up {
        animation: fadeInUp 0.8s ease-out forwards;
        opacity: 0;
    }

    .slide-in-right {
        animation: slideInRight 0.8s ease-out forwards;
        opacity: 0;
    }

    .delay-100 { animation-delay: 0.1s; }
    .delay-200 { animation-delay: 0.2s; }
    .delay-300 { animation-delay: 0.3s; }
    .delay-400 { animation-delay: 0.4s; }
    .delay-500 { animation-delay: 0.5s; }

    .section-card {
        transition: all 0.3s ease;
    }

    .section-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 35px rgba(54, 116, 181, 0.2);
    }

    .sop-step {
        position: relative;
        padding-left: 2.5rem;
        margin-bottom: 1.5rem;
    }

    .sop-step::before {
        content: '';
        position: absolute;
        left: 0.5rem;
        top: 2rem;
        bottom: -1.5rem;
        width: 2px;
        background: linear-gradient(to bottom, #3674B5, #A1E3F9);
    }

    .sop-step:last-child::before {
        display: none;
    }

    .step-number {
        position: absolute;
        left: 0;
        top: 0;
        width: 2rem;
        height: 2rem;
        background: linear-gradient(135deg, #3674B5, #578FCA);
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: bold;
        box-shadow: 0 4px 10px rgba(54, 116, 181, 0.3);
    }
</style>

<main class="bg-gray-50">
    <!-- Page Header -->
    <div class="bg-gradient-to-r from-[#487daf] via-[#3674B5] to-[#578FCA] py-12 md:py-16">
        <div class="container mx-auto px-4">
            <div class="text-center fade-in-up">
                <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-white mb-4">
                    Internships
                </h1>
                <div class="w-24 h-1 bg-white mx-auto rounded-full mb-4"></div>
                <p class="text-white/90 text-lg md:text-xl max-w-3xl mx-auto">
                    Bridging Academic Excellence with Professional Experience
                </p>
            </div>
        </div>
    </div>

    <div class="container mx-auto px-4 py-8 md:py-12">
        <!-- Introduction Section -->
        <section class="mb-12 fade-in-up delay-100">
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 section-card">
                <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] px-6 py-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-info-circle text-white text-2xl"></i>
                        <h2 class="text-white font-semibold text-xl md:text-2xl">Introduction</h2>
                    </div>
                </div>
                
                <div class="p-6 md:p-8">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8 items-center">
                        <div class="order-2 lg:order-1">
                            <p class="text-gray-700 leading-relaxed text-base md:text-lg mb-4">
                                The internship is an opportunity designed for the students to share their visions, to walk around the links between students' academic preparation and their field work. Internships also support participants in developing and carrying out the major research project which will serve to culminate their internship experience.
                            </p>
                            <p class="text-gray-700 leading-relaxed text-base md:text-lg mb-4">
                                The ORIC acts as Focal Point for dealing with students and the institute/organization and will be responsible for ensuring effective use of the internees' services.
                            </p>
                            <p class="text-gray-700 leading-relaxed text-base md:text-lg mb-4">
                                The Government of the Punjab has launched a special program <strong class="text-[#3674B5]">"Punjab Youth Internship Program"</strong> in which professional degree/diploma holders are engaged in the relevant activities through ORIC.
                            </p>
                            <p class="text-gray-700 leading-relaxed text-base md:text-lg">
                                International students from <strong class="text-[#3674B5]">Australia, Germany, Sweden and Malaysia</strong> do their internships at UAF and ORIC facilitates them and ensure their effective engagement in the relevant disciplines.
                            </p>
                        </div>
                        <div class="order-1 lg:order-2">
                            <img 
                                src="../assets/img/outreach/Internships.jpeg" 
                                alt="Student Internship Program" 
                                class="w-full h-auto rounded-lg shadow-lg hover:shadow-2xl transition-shadow duration-300">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Call for Internship Section -->
        <section class="mb-12 slide-in-right delay-200">
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 section-card">
                <div class="bg-gradient-to-r from-[#578FCA] to-[#A1E3F9] px-6 py-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-bullhorn text-white text-2xl"></i>
                        <h2 class="text-white font-semibold text-xl md:text-2xl">Call for Internship</h2>
                    </div>
                </div>
                
                <div class="p-6 md:p-12 text-center">
                    <div class="inline-block bg-gradient-to-r from-[#3674B5] to-[#578FCA] text-white px-8 py-4 rounded-full shadow-lg mb-4">
                        <i class="fas fa-clock text-3xl mb-2"></i>
                        <p class="text-xl md:text-2xl font-bold">Coming Soon...</p>
                    </div>
                    <p class="text-gray-600 text-base md:text-lg mt-4">
                        Stay tuned for upcoming internship opportunities
                    </p>
                </div>
            </div>
            
        </section>

        <!-- SOP Section -->
        <section class="mb-0 fade-in-up delay-300">
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 section-card">
                <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] px-6 py-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-list-ol text-white text-2xl"></i>
                        <h2 class="text-white font-semibold text-xl md:text-2xl">SOP Regarding Placement of Student for Internship</h2>
                    </div>
                </div>
                  
                        <div class="p-1 md:p-3">
                            <div class="sop-step">
                                <div class="step-number">1</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        Before commencement of the semester, Govt. Research & Extension Institutes/Private Sector are requested for the placement of students in their institutes/firms.
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">2</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed mb-3">
                                        Consent of the students is also kept in consideration before the placement.
                                    </p>
                                    <p class="text-gray-700 leading-relaxed">
                                        After seeking the demand of the host Institute and keeping in view the preference of the student, information on the prescribed proforma is compiled:
                                    </p>
                                    <ul class="list-disc list-inside mt-3 space-y-1 text-gray-700">
                                        <li>Name of student, Father name</li>
                                        <li>Registration No./Department</li>
                                        <li>Email address</li>
                                        <li>Cell No. or contact No.</li>
                                        <li>Domicile District</li>
                                        <li>Preferred place for internship</li>
                                        <li>Dist./Tehsil for placement</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">3</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        Department/Institute/Faculty wise monitoring-cum coordination teams are constituted to follow up the progress of the internees and resolve the issues (if any).
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">4</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        A prescribed evaluation sheet is sent to Host Institute to evaluate the performance of the internee.
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">5</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        A work done / task completion report is prepared by the internee and is counter signed by the Internship Station Supervisor (ISS) & Head of the Host Institute for onward submission to UAF.
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">6</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        After successful completion of the internship, dully signed report is submitted by the internee at UAF in the relevant department / Institute & is evaluated at department / faculty/ Institute level with presentation and oral exam. The duration and distribution of the marks is appended.
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">7</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        After presenting the task completion report publicly (in seminar), the result of the student is sent to Controller of Examinations, following the grading system of UAF for notification. Grade is reflected in the transcript of student.
                                    </p>
                                </div>
                            </div>

                            <div class="sop-step">
                                <div class="step-number">8</div>
                                <div class="bg-gray-50 p-4 rounded-lg">
                                    <p class="text-gray-700 leading-relaxed">
                                        In case of international student, the internees are provided lodging / boarding on free of cost basis while living expenses are borne by the internees. Security and other facilities are also provided to the internees.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- International Internships Section -->
        <section class="mb-12 slide-in-right delay-400">
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-200 section-card">
                <div class="bg-gradient-to-r from-[#578FCA] to-[#A1E3F9] px-6 py-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-globe text-white text-2xl"></i>
                        <h2 class="text-white font-semibold text-xl md:text-2xl">International Internships</h2>
                    </div>
                </div>
                
                <div class="p-6 md:p-8">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8 items-center">
                        <div>
                            <img 
                                src="../assets/img/outreach/inter-Internships.png" 
                                alt="International Internships" 
                                class="w-full h-auto rounded-lg shadow-lg hover:shadow-2xl transition-shadow duration-300">
                        </div>
                        <div>
                            <div class="bg-gradient-to-br from-[#3674B5]/10 to-[#A1E3F9]/10 p-6 rounded-xl border-l-4 border-[#3674B5]">
                                <p class="text-gray-700 leading-relaxed text-base md:text-lg">
                                    ORIC is engaged as focal person of international internship with the aim to enhance the competency and skills of the professional degree/diploma holders by placing them in the institutes/departments of their relevant discipline.
                                </p>
                                <p class="text-gray-700 leading-relaxed text-base md:text-lg mt-4">
                                    ORIC has stepped forward for the capacity building of internees in line with the Government efforts.
                                </p>
                            </div>

                            <!-- International Features -->
                            <div class="grid grid-cols-2 gap-4 mt-6">
                                <div class="bg-white p-4 rounded-lg shadow-md border-t-4 border-[#3674B5] text-center hover:shadow-lg transition-shadow">
                                    <i class="fas fa-users text-[#3674B5] text-3xl mb-2"></i>
                                    <p class="text-sm font-semibold text-gray-700">Global Network</p>
                                </div>
                                <div class="bg-white p-4 rounded-lg shadow-md border-t-4 border-[#578FCA] text-center hover:shadow-lg transition-shadow">
                                    <i class="fas fa-graduation-cap text-[#578FCA] text-3xl mb-2"></i>
                                    <p class="text-sm font-semibold text-gray-700">Skill Development</p>
                                </div>
                                <div class="bg-white p-4 rounded-lg shadow-md border-t-4 border-[#A1E3F9] text-center hover:shadow-lg transition-shadow">
                                    <i class="fas fa-certificate text-[#A1E3F9] text-3xl mb-2"></i>
                                    <p class="text-sm font-semibold text-gray-700">Certification</p>
                                </div>
                                <div class="bg-white p-4 rounded-lg shadow-md border-t-4 border-[#1a4d7c] text-center hover:shadow-lg transition-shadow">
                                    <i class="fas fa-handshake text-[#1a4d7c] text-3xl mb-2"></i>
                                    <p class="text-sm font-semibold text-gray-700">Support & Guidance</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Key Highlights -->
        <section class="fade-in-up delay-500 mb-5">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="bg-white rounded-xl p-6 shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2 border-t-4 border-[#3674B5]">
                    <div class="bg-gradient-to-br from-[#3674B5] to-[#578FCA] w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <i class="fas fa-university text-white text-2xl"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#1a4d7c] text-center mb-2">Academic Integration</h3>
                    <p class="text-gray-600 text-center text-sm">Bridging classroom learning with practical experience</p>
                </div>

                <div class="bg-white rounded-xl p-6 shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2 border-t-4 border-[#578FCA]">
                    <div class="bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <i class="fas fa-briefcase text-white text-2xl"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#1a4d7c] text-center mb-2">Professional Growth</h3>
                    <p class="text-gray-600 text-center text-sm">Real-world experience in relevant industries</p>
                </div>

                <div class="bg-white rounded-xl p-6 shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2 border-t-4 border-[#A1E3F9]">
                    <div class="bg-gradient-to-br from-[#A1E3F9] to-[#D1F8EF] w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <i class="fas fa-chart-line text-[#1a4d7c] text-2xl"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#1a4d7c] text-center mb-2">Career Development</h3>
                    <p class="text-gray-600 text-center text-sm">Building pathways to successful careers</p>
                </div>

                <div class="bg-white rounded-xl p-6 shadow-lg hover:shadow-2xl transition-all duration-300 hover:-translate-y-2 border-t-4 border-[#1a4d7c]">
                    <div class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <i class="fas fa-project-diagram text-white text-2xl"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#1a4d7c] text-center mb-2">Research Projects</h3>
                    <p class="text-gray-600 text-center text-sm">Hands-on experience in cutting-edge research</p>
                </div>
            </div>
        </section>
    </div>
</main>


</asp:Content>
