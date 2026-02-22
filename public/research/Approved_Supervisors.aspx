<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Approved PhD Supervisors - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<style>
  /* ── Horizontal main tab bar ── */
  #mainTabNav {
    scroll-behavior: smooth;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
  }
  #mainTabNav::-webkit-scrollbar { display: none; }

  .tab-btn {
    font-size: 0.9rem;
    font-weight: 600;
    transition: all 0.25s ease;
    background-color: transparent;
    color: #64748b;
    border-bottom: 3px solid transparent;
  }
  .tab-btn:hover {
    color: #1a4d7c;
    background-color: #f0f7ff;
  }
  .tab-btn.active {
    color: #1a4d7c;
    border-bottom-color: #3674B5;
    background-color: #f0f7ff;
  }

  /* ── Animations ── */
  .tab-content-panel { animation: fadeIn 0.4s ease-in; }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(12px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .section-content { display: none; }
  .section-content.active { display: block; }

  /* ── Scroll hint arrow visible only on small screens ── */
  .tab-scroll-hint { display: none; }
  @media (max-width: 768px) {
    .tab-scroll-hint { display: flex; }
  }

  /* Smooth scroll behavior */
  html { scroll-behavior: smooth; }

  /* External link icon */
  .external-link {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">HEC Approved Supervisors</h1>
      <p class="text-gray-600">Supporting PhD students with qualified and experienced faculty members</p>
    </div>

    <!-- ── Horizontal Tab Navigation ── -->
    <div class="mb-6 relative">
      <div class="tab-scroll-hint absolute right-0 top-0 bottom-0 items-center pr-2 pointer-events-none bg-gradient-to-l from-white via-white/80 to-transparent w-10 z-10">
        <i class="fas fa-chevron-right text-gray-400 text-xs"></i>
      </div>
      <nav class="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
        <div class="flex overflow-x-auto" id="mainTabNav">
          <button type="button" data-target="introduction"
            class="tab-btn active flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-info-circle"></i><span>Introduction</span>
          </button>
          <button type="button" data-target="instructions"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-list-ol"></i><span>Instructions</span>
          </button>
          <button type="button" data-target="requirements"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-clipboard-check"></i><span>Requirements</span>
          </button>
          <button type="button" data-target="financial"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-hand-holding-usd"></i><span>Financial Support</span>
          </button>
          <button type="button" data-target="responsibilities"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-tasks"></i><span>Responsibilities</span>
          </button>
        </div>
      </nav>
    </div>

    <!-- ── Content Area (full width) ── -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 min-h-[600px]">

          <!-- Introduction Section -->
          <div id="introduction" class="section-content active tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-info-circle mr-2"></i>Introduction
            </h3>

            <div class="prose max-w-none">
              <p class="text-gray-700 leading-relaxed text-justify mb-4">
                The HEC Approved Supervisors program aims to assist PhD students in this regard by pairing them with qualified and experienced faculty members of HEC recognized universities, degree awarding institutions, and R&D organizations. PhD students funded under HEC in-country scholarship programs will work with HEC-approved supervisors for three years.
              </p>

              <p class="text-gray-700 leading-relaxed text-justify mb-4">
                HEC has revamped the entire process to become a 'HEC Approved Supervisor' from manual to online system. All PhD supervisors (Already Approved) are required to register and fill profile again on HEC E-portal.
              </p>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-link mr-2"></i>Important Links
                </h4>
                <div class="space-y-3">
                  <a href="http://www.hec.gov.pk/english/scholarshipsgrants/ASA/Pages/APS-EPORTAL.aspx" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    HEC Approved Supervisor Information Portal
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Instructions Section -->
          <div id="instructions" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-list-ol mr-2"></i>Instructions
            </h3>

            <div class="prose max-w-none">
              <div class="space-y-4">
                <div class="bg-yellow-50 border-l-4 border-yellow-500 p-4 rounded-lg">
                  <h4 class="font-semibold text-gray-800 mb-2">
                    <i class="fas fa-exclamation-triangle mr-2 text-yellow-600"></i>For Supervisors Approved Before Three Years
                  </h4>
                  <p class="text-gray-700 text-justify">
                    The Supervisors who have been approved by HEC before three years at the time of applying at E Portal will be required to apply again followed by postal copy of application form through proper channel. PhD degree HEC attested/Equivalence certificate must be forwarded along with the application form (HEC and Non HEC Scholars both). Their applications printed from E Portal will be re-evaluated after receiving hard copy through proper channel.
                  </p>
                </div>

                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg">
                  <h4 class="font-semibold text-gray-800 mb-2">
                    <i class="fas fa-check-circle mr-2 text-green-600"></i>For Supervisors Approved Within Three Years
                  </h4>
                  <p class="text-gray-700 text-justify">
                    The Supervisors who have been approved within three years of applying at HEC Portal will be required to just register online and create profile again at HEC E portal. They do not require sending the hard copy through proper channel at this stage. Their application will be directly included in Approved Supervisor database.
                  </p>
                </div>

                <div class="bg-blue-50 border-l-4 border-blue-500 p-4 rounded-lg">
                  <h4 class="font-semibold text-gray-800 mb-2">
                    <i class="fas fa-desktop mr-2 text-blue-600"></i>Application Submission (From July 2017 onwards)
                  </h4>
                  <p class="text-gray-700 text-justify mb-3">
                    All applicants either already approved/Approved but deficient documents/new applicants are required to apply via HEC E-portal only. Manual selection/application will not be considered in any case.
                  </p>
                  <a href="http://eportal.hec.gov.pk/asa" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    Apply for HEC Approved Supervisor
                  </a>
                </div>
              </div>

              <div class="mt-6 bg-gray-50 p-5 rounded-lg">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-clipboard-list mr-2"></i>Important Guidelines
                </h4>
                <ul class="space-y-3 text-gray-700">
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>All new/existing PhD supervisors are required to forward the application for 'HEC Approved Supervisor' via HEC e-portal only followed by postal copy through proper channel within 30 days of finally online submission of application. In case of failure, the application will be rejected.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>The Login and password issued previously are not accepted. It is required to create a new User ID and password. User manual is available on navigation corner for stepwise guidance please.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>In case of any issue, kindly send screenshot at our email: <a href="mailto:phdsupervisor@hec.gov.pk" class="text-blue-600 hover:underline">phdsupervisor@hec.gov.pk</a></span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>Please always mention your application ID allotted by HEC Portal in case of any issue via email.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>The education tab at e-portal is linked with Pakistan Qualification Register (PQR). The respective academic degrees need to be registered by relevant university under HEC PQR program so that applicant can enter the data.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>Application has been designed based on eligibility criteria defined/approved to become HEC Approved Supervisor, therefore, if any applicant is not eligible, the application process would not allow to proceed further.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>All Applicants (HEC/Non HEC Scholars) will be required to submit the Copy of HEC Attested PhD degree/HEC PhD Equivalence Certificate along with application form.</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-[#3674B5] mt-1 mr-3"></i>
                    <span>It is expected that entire applicants will provide the online information true without any manipulation, in case of any misrepresentation found, HEC reserve the right to take stern action in this regard.</span>
                  </li>
                </ul>
              </div>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-link mr-2"></i>Useful Links
                </h4>
                <div class="space-y-3">
                  <a href="http://www.hec.gov.pk/english/scholarshipsgrants/ASA/Pages/APS-EPORTAL.aspx" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium block">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    HEC Approved Supervisor Information Portal
                  </a>
                  <br>
                  <a href="http://eportal.hec.gov.pk/asa" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium block">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    Apply Online at HEC E-Portal
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Requirements Section -->
          <div id="requirements" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-clipboard-check mr-2"></i>Requirements
            </h3>

            <div class="prose max-w-none">
              <!-- General Requirements -->
              <div class="mb-8">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4 bg-gradient-to-r from-blue-100 to-indigo-100 p-3 rounded-lg">
                  <i class="fas fa-university mr-2"></i>General Requirements for Supervisors of All Disciplines
                </h4>
                <ul class="space-y-3 text-gray-700">
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-graduation-cap text-[#3674B5] mt-1 mr-3"></i>
                    <span>A PhD degree from an HEC-recognized national university/degree awarding institute (DAI), or reputable international university/institute.</span>
                  </li>
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-briefcase text-[#3674B5] mt-1 mr-3"></i>
                    <span>A position of faculty member or researcher at a public or private university or DAI, or position of researcher or scientist at any R&D organization.</span>
                  </li>
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-stamp text-[#3674B5] mt-1 mr-3"></i>
                    <span>Approval from the head of institution, i.e. Vice Chancellor or Rector (for adjunct faculty only).</span>
                  </li>
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-file-alt text-[#3674B5] mt-1 mr-3"></i>
                    <span>At least two research publications in the past five years with ISI (Institute of Scientific Information, USA) indexed journals with a significant Impact Factor <strong>OR</strong></span>
                  </li>
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-chart-line text-[#3674B5] mt-1 mr-3"></i>
                    <span>A cumulative Impact Factor of minimum 5.00 or more for their entire research publication record <strong>OR</strong></span>
                  </li>
                  <li class="flex items-start bg-gray-50 p-3 rounded-lg">
                    <i class="fas fa-globe text-[#3674B5] mt-1 mr-3"></i>
                    <span>A PhD degree obtained within the last five years from a reputable foreign university along with at least one publication.</span>
                  </li>
                </ul>
              </div>

              <!-- Specific Requirements for Social Sciences -->
              <div class="mb-6">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4 bg-gradient-to-r from-green-100 to-teal-100 p-3 rounded-lg">
                  <i class="fas fa-users mr-2"></i>Specific Requirements for Social Science, Arts and Humanities, and Business Education
                </h4>
                
                <div class="bg-blue-50 border-l-4 border-blue-500 p-4 rounded-lg mb-4">
                  <h5 class="font-semibold text-gray-800 mb-3">
                    <i class="fas fa-passport mr-2 text-blue-600"></i>Candidates Holding Foreign PhD Degrees from Reputable International Universities
                  </h5>
                  <ul class="space-y-2 text-gray-700 ml-4">
                    <li class="flex items-start">
                      <i class="fas fa-angle-right text-blue-500 mt-1 mr-2"></i>
                      <span>Candidates who have completed their PhD in the last five years will be required to have at least one publication.</span>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-angle-right text-blue-500 mt-1 mr-2"></i>
                      <div>
                        <span class="font-medium">Candidates who completed their PhD more than five years ago must have:</span>
                        <ul class="ml-6 mt-2 space-y-1">
                          <li>• Three local publications in the last five years in at least 'Y' category HEC-recognized journals, <strong>OR</strong></li>
                          <li>• Three publications in journals listed in the Social Sciences Citation Index (SSCI), Social Science Research, Arts & Humanities Citation Index (A&HCI) and Arts & Humanities Search.</li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                </div>

                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg">
                  <h5 class="font-semibold text-gray-800 mb-3">
                    <i class="fas fa-flag mr-2 text-green-600"></i>Candidates Holding Local PhDs
                  </h5>
                  <p class="text-gray-700 mb-2">Must have one of the following:</p>
                  <ul class="space-y-2 text-gray-700 ml-4">
                    <li class="flex items-start">
                      <i class="fas fa-angle-right text-green-500 mt-1 mr-2"></i>
                      <span>International teaching/research/fellowship experience at the post-doc level for at least a semester, and three publications in the last five years in at least a 'Y' category HEC-recognized journals, <strong>OR</strong></span>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-angle-right text-green-500 mt-1 mr-2"></i>
                      <span>At least two publications in the 'X' category and one publication the 'Y' category of HEC-recognized journals, <strong>OR</strong></span>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-angle-right text-green-500 mt-1 mr-2"></i>
                      <span>Three publications in journals listed in the Social Sciences Citation Index (SSCI), Social Science Research, Arts & Humanities Citation Index (A&HCI) and Arts & Humanities Search.</span>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-link mr-2"></i>More Information
                </h4>
                <a href="http://www.hec.gov.pk/english/scholarshipsgrants/ASA/Pages/APS-EPORTAL.aspx" 
                   target="_blank" 
                   class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium">
                  <i class="fas fa-external-link-alt text-sm"></i>
                  Visit HEC Approved Supervisor Portal
                </a>
              </div>
            </div>
          </div>

          <!-- Financial Support Section -->
          <div id="financial" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-hand-holding-usd mr-2"></i>Financial Support
            </h3>

            <div class="prose max-w-none">
              <div class="bg-gradient-to-r from-green-50 to-emerald-50 p-6 rounded-lg border-l-4 border-green-500 mb-6">
                <p class="text-gray-700 leading-relaxed text-justify">
                  The Approved Supervisors of the HEC indigenous PhD scholars will be given the following financial support by the HEC:
                </p>
              </div>

              <div class="grid md:grid-cols-3 gap-4 mb-6">
                <div class="bg-blue-50 border-2 border-blue-200 rounded-lg p-5 text-center hover:shadow-lg transition-shadow duration-300">
                  <div class="text-blue-600 text-4xl mb-3">
                    <i class="fas fa-file-signature"></i>
                  </div>
                  <h4 class="font-semibold text-gray-800 mb-2">Synopsis Approval</h4>
                  <p class="text-3xl font-bold text-blue-600 mb-2">Rs. 50,000/-</p>
                  <p class="text-sm text-gray-600">Upon Board of Advanced Studies and Research's approval of PhD Synopsis</p>
                </div>

                <div class="bg-purple-50 border-2 border-purple-200 rounded-lg p-5 text-center hover:shadow-lg transition-shadow duration-300">
                  <div class="text-purple-600 text-4xl mb-3">
                    <i class="fas fa-book"></i>
                  </div>
                  <h4 class="font-semibold text-gray-800 mb-2">Thesis Completion</h4>
                  <p class="text-3xl font-bold text-purple-600 mb-2">Rs. 50,000/-</p>
                  <p class="text-sm text-gray-600">Upon completion of PhD thesis writing and sending for evaluation abroad</p>
                </div>

                <div class="bg-green-50 border-2 border-green-200 rounded-lg p-5 text-center hover:shadow-lg transition-shadow duration-300">
                  <div class="text-green-600 text-4xl mb-3">
                    <i class="fas fa-graduation-cap"></i>
                  </div>
                  <h4 class="font-semibold text-gray-800 mb-2">Degree Award</h4>
                  <p class="text-3xl font-bold text-green-600 mb-2">Rs. 50,000/-</p>
                  <p class="text-sm text-gray-600">Upon completing the PhD/degree notification</p>
                </div>
              </div>

              <div class="bg-gradient-to-r from-yellow-50 to-orange-50 p-5 rounded-lg border-l-4 border-yellow-500">
                <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
                  <i class="fas fa-calculator mr-2 text-yellow-600"></i>Total Financial Support
                </h4>
                <p class="text-4xl font-bold text-orange-600">Rs. 150,000/-</p>
                <p class="text-sm text-gray-600 mt-2">Total support provided throughout the PhD supervision period</p>
              </div>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-link mr-2"></i>More Information
                </h4>
                <a href="http://www.hec.gov.pk/english/scholarshipsgrants/ASA/Pages/APS-EPORTAL.aspx" 
                   target="_blank" 
                   class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium">
                  <i class="fas fa-external-link-alt text-sm"></i>
                  Visit HEC Approved Supervisor Portal
                </a>
              </div>
            </div>
          </div>

          <!-- Responsibilities Section -->
          <div id="responsibilities" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-tasks mr-2"></i>Responsibilities
            </h3>

            <div class="prose max-w-none">
              <div class="bg-gradient-to-r from-red-50 to-orange-50 p-4 rounded-lg border-l-4 border-red-500 mb-6">
                <p class="text-gray-700 leading-relaxed">
                  <i class="fas fa-exclamation-circle mr-2 text-red-600"></i>
                  As an HEC Approved Supervisor, you have important responsibilities to ensure the success and proper guidance of PhD scholars.
                </p>
              </div>

              <div class="space-y-4">
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-user-clock text-[#3674B5] mt-1 mr-3"></i>
                    <span>Regular Attendance Monitoring</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    The supervisor must ensure that the scholar attends university/laboratory regularly, and is maintaining full-time status. They must report any significant inconsistencies to the HEC Indigenous PMU.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-briefcase text-[#3674B5] mt-1 mr-3"></i>
                    <span>Employment Notification</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    The supervisor is responsible for reporting the HEC Indigenous PMU when/if their student leaves the program for an employment opportunity.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-calendar-alt text-[#3674B5] mt-1 mr-3"></i>
                    <span>Study Plan Changes</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    The supervisor must inform the HEC of any changes in a scholar's proposed study plan that may extend his or her time of study.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-clock text-[#3674B5] mt-1 mr-3"></i>
                    <span>Timely Completion</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    The supervisor is responsible for ensuring the timely completion of the scholar's PhD. To this end, they should make a study plan with their students, complete with a timeline of major goals, consistent with the HEC scholarship period (2 years for the MS and 3 years for the PhD).
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-ban text-[#3674B5] mt-1 mr-3"></i>
                    <span>Employment Restriction</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    The supervisor is also responsible for ensuring that the scholar, in keeping with their agreement with the HEC, is not employed while they are studying.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-school text-[#3674B5] mt-1 mr-3"></i>
                    <span>Physical Enrollment</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors of Indigenous scholars must ensure, consistent with HEC regulations, that they are physically enrolled on campus. The HEC does not allow distance learning for Indigenous Scholars.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-exchange-alt text-[#3674B5] mt-1 mr-3"></i>
                    <span>Program Changes</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must ensure that scholars do not change their scholarship program (from Indigenous to foreign) without the approval of the HEC.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-user-circle text-[#3674B5] mt-1 mr-3"></i>
                    <span>Profile Submission</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must submit a profile to be published on the HEC website. This is a pre-requisite for dispersal of funds.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-ruler text-[#3674B5] mt-1 mr-3"></i>
                    <span>Prescribed Boundaries</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must not advise scholars beyond the prescribed boundaries of the HEC.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-heart text-[#3674B5] mt-1 mr-3"></i>
                    <span>Acknowledgment</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must ensure that their advisee recognizes the role of the HEC in their final PhD thesis.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-file-invoice text-[#3674B5] mt-1 mr-3"></i>
                    <span>Report Support</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must support their advisees as they submit their Academic Progress Report and Funds Utilization Report to the HEC.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-hands-helping text-[#3674B5] mt-1 mr-3"></i>
                    <span>Full Cooperation</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors must also extend their full cooperation to their scholars as they complete their PhD.
                  </p>
                </div>

                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow duration-300">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-start">
                    <i class="fas fa-user-graduate text-[#3674B5] mt-1 mr-3"></i>
                    <span>Personal Development</span>
                  </h5>
                  <p class="text-gray-700 text-justify ml-9">
                    Supervisors are also expected to guide their scholars on matters of moral and personal growth (patience, self-confidence, and civic responsibility).
                  </p>
                </div>
              </div>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-link mr-2"></i>Useful Links
                </h4>
                <div class="space-y-3">
                  <a href="http://eportal.hec.gov.pk/asa" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium block">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    Apply for HEC Approved Supervisor
                  </a>
                  <br>
                  <a href="http://www.hec.gov.pk/english/scholarshipsgrants/ASA/Pages/APS-EPORTAL.aspx" 
                     target="_blank" 
                     class="external-link text-blue-600 hover:text-blue-800 hover:underline font-medium block">
                    <i class="fas fa-external-link-alt text-sm"></i>
                    HEC Approved Supervisor Information Portal
                  </a>
                </div>
              </div>
            </div>
          </div>

    </div>
  </div>
</main>

<script>
  function activate(targetId) {
    document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
    document.querySelectorAll('.section-content').forEach(c => c.classList.remove('active'));
    const btn = document.querySelector('[data-target="' + targetId + '"]');
    if (btn) btn.classList.add('active');
    const panel = document.getElementById(targetId);
    if (panel) {
      panel.style.animation = 'none';
      panel.offsetHeight;
      panel.style.animation = '';
      panel.classList.add('active');
    }
  }

  document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.tab-btn').forEach(btn => {
      btn.addEventListener('click', function () {
        activate(this.getAttribute('data-target'));
      });
    });
  });
</script>

</asp:Content>
