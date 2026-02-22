<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Services - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<style>
  /* -- Horizontal main tab bar -- */
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
    position: relative;
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

  /* -- PhD sub-nav pills -- */
  .phd-nav-btn {
    transition: all 0.25s ease;
    background-color: white;
    color: #4a5568;
    border: 1.5px solid #dce8f8;
  }
  .phd-nav-btn:hover {
    background-color: #3674B5;
    color: white;
    border-color: #3674B5;
  }
  .phd-nav-btn.active-phd-nav {
    background-color: #3674B5;
    color: white;
    border-color: #3674B5;
    box-shadow: 0 4px 10px rgba(54,116,181,.3);
  }

  /* -- Animations -- */
  .tab-content-panel { animation: fadeIn 0.4s ease-in; }
  .phd-section       { animation: fadeIn 0.35s ease-in; }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(12px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  /* -- Images -- */
  .service-img {
    max-width: 100%;
    height: auto;
    border-radius: 0.5rem;
  }

  /* -- Scroll hint arrow visible only on small screens -- */
  .tab-scroll-hint {
    display: none;
  }
  @media (max-width: 768px) {
    .tab-scroll-hint { display: flex; }
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Services for Students</h1>
      <p class="text-gray-600">Comprehensive support for postgraduate research and academic excellence</p>
    </div>

    <!-- -- Horizontal Tab Navigation -- -->
    <div class="mb-6 relative">
      <!-- Scroll hint for mobile -->
      <div class="tab-scroll-hint absolute right-0 top-0 bottom-0 items-center pr-2 pointer-events-none bg-gradient-to-l from-white via-white/80 to-transparent w-10 z-10">
        <i class="fas fa-chevron-right text-gray-400 text-xs"></i>
      </div>
      <nav class="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
        <div class="flex overflow-x-auto" id="mainTabNav">
          <button type="button" data-target="fa"
            class="tab-btn active flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-hand-holding-usd"></i><span>Financial Assistance</span>
          </button>
          <button type="button" data-target="phd"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-graduation-cap"></i><span>PhD Scholarships</span>
          </button>
          <button type="button" data-target="sops"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-clipboard-list"></i><span>SOPs for Research</span>
          </button>
          <button type="button" data-target="bridge"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-coins"></i><span>Bridge Financing</span>
          </button>
          <button type="button" data-target="partial"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-hands-helping"></i><span>Partial Support</span>
          </button>
        </div>
      </nav>
    </div>

    <!-- -- Content Area (full width) -- -->
    <div class="bg-white rounded-2xl shadow-xl p-5 md:p-8 min-h-[500px]">

          <!-- Financial Assistance Tab -->
          <div id="fa" class="tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-hand-holding-usd mr-2"></i>Financial Assistance for Sample Analysis
            </h3>

            <div class="my-6">
              <img src="../assets/img/research/Financial-Assistance-for-Sample-Analysis.jpg" alt="Sample Analysis"
                class="service-img float-right ml-4 mb-4 w-full md:w-96 shadow-lg" />

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-4 rounded-lg mb-4 border-l-4 border-blue-500">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-2">
                  <i class="fas fa-microscope mr-2"></i>Access to Scientific Instrumentation Program
                </h4>
                <p class="text-gray-700 leading-relaxed text-justify">
                  The Higher Education Commission (HEC) and Pakistan Council for Scientific and Industrial Research
                  (PCSIR)
                  Ministry of Science and Technology has launched the prestigious "Access To Scientific Instrumentation
                  Program" to provide financial assistance to postgraduate students for sample analysis on highly
                  sophisticated instruments across the country.
                </p>
              </div>

              <div class="clear-both"></div>

              <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3 mt-6">
                <i class="fas fa-bullseye mr-2"></i>Objectives:
              </h4>
              <ul class="list-disc list-inside space-y-2 text-gray-700 mb-4 ml-4">
                <li>Providing financial support to scholars for their sample analysis through the latest scientific
                  equipment</li>
                <li>Providing financial support to institutions for providing services / opening their research
                  facilities for the use of scholars from other HEIs</li>
                <li>Providing access to such facilities to promote research collaboration</li>
              </ul>

              <div class="grid md:grid-cols-2 gap-4 my-6">
                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg shadow">
                  <p class="font-semibold text-green-800"><i class="fas fa-university mr-2"></i>HEC Funding</p>
                  <p class="text-2xl font-bold text-green-600">Up to Rs. 200,000/-</p>
                </div>
                <div class="bg-blue-50 border-l-4 border-blue-500 p-4 rounded-lg shadow">
                  <p class="font-semibold text-blue-800"><i class="fas fa-flask mr-2"></i>PCSIR Funding</p>
                  <p class="text-2xl font-bold text-blue-600">Up to Rs. 500,000/-</p>
                </div>
              </div>

              <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3 mt-6">
                <i class="fas fa-check-circle mr-2"></i>Eligibility Criteria:
              </h4>
              <ul class="list-disc list-inside space-y-2 text-gray-700 mb-4 ml-4 text-justify">
                <li>MS/MPhil/PhD students, enrolled in public sector universities of Pakistan are entitled to apply</li>
                <li>Student's Research synopsis/proposal should have been approved by the competent forum (Ethical
                  Review Board / Advance Studies & Research Board / Directorate of Research etc.) in university</li>
                <li>Research supervisor of applicant should be HEC-approved</li>
                <li>The applicant must apply at least 6 weeks prior to samples' analysis</li>
                <li>Students can apply for such lab tests, for which they do not have facility at their own university
                </li>
                <li>The applicant has to declare that he/she has not been funded for desired tests from any other
                  funding agency</li>
                <li>Tests could only be performed from labs at public sector universities or public sector organizations
                </li>
                <li>Separate application(s) must be filed if tests are to be performed from more than one lab</li>
                <li>Maximum funding available for sample analysis to each applicant is Rs. 200,000/year (July 1 - June
                  30)</li>
                <li>Supervisor has to endorse that the research synopsis/proposal is approved</li>
              </ul>

              <div class="bg-yellow-50 border-l-4 border-yellow-500 p-4 rounded-lg my-4">
                <h5 class="font-semibold text-yellow-800 mb-2">
                  <i class="fas fa-exclamation-triangle mr-2"></i>Special Instructions:
                </h5>
                <p class="text-gray-700 italic">
                  After filling the online form, its print is to be got endorsed from ORIC prior to submission to
                  HEC/PCSIR
                </p>
              </div>

              <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3 mt-6">
                <i class="fas fa-link mr-2"></i>Important Links:
              </h4>
              <div class="space-y-3">
                <div class="bg-gray-50 p-4 rounded-lg border border-gray-200">
                  <p class="font-semibold text-gray-800 mb-2">HEC Portal:</p>
                  <a href="https://www.hec.gov.pk/english/services/students/Access%20to%20scientific%20instruments%20program/Pages/Access%20to%20Scientific%20Instrumentation%20program.aspx"
                    target="_blank" rel="noopener noreferrer"
                    class="text-blue-600 hover:text-blue-800 underline inline-flex items-center">
                    <i class="fas fa-external-link-alt mr-2"></i>Access to Scientific Instrumentation Program
                  </a>
                </div>

                <div class="bg-gray-50 p-4 rounded-lg border border-gray-200">
                  <p class="font-semibold text-gray-800 mb-2">PCSIR Contact:</p>
                  <p class="text-gray-700 space-y-1">
                    <span class="block"><i class="fas fa-globe mr-2 text-blue-600"></i><a
                        href="https://www.pcsir.gov.pk" target="_blank"
                        class="text-blue-600 hover:underline">www.pcsir.gov.pk</a></span>
                    <span class="block"><i
                        class="fas fa-envelope mr-2 text-blue-600"></i>pcsirmemberscience@gmail.com</span>
                    <span class="block"><i class="fas fa-envelope mr-2 text-blue-600"></i>pcsirdrsi@gmail.com</span>
                  </p>
                  <a href="../assets/files/research/1643882745_RequisitionFormDRSI.pdf" target="_blank"
                    rel="noopener noreferrer"
                    class="inline-block mt-3 bg-gradient-to-r from-blue-600 to-blue-700 text-white px-4 py-2 rounded-lg hover:shadow-lg transition">
                    <i class="fas fa-download mr-2"></i>Download PCSIR Registration Form
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- PhD Indigenous Scholarships Tab -->
          <div id="phd" class="tab-content-panel hidden">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-graduation-cap mr-2"></i>PhD Indigenous Scholarships
            </h3>

            <div class="my-6">
              <!-- <img src="../assets/img/research/indig-intro.jpg" alt="PhD Scholarships"
                class="service-img w-full mb-6 shadow-lg rounded-lg" /> -->

              <!-- Sub-navigation for PhD sections -->
              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-4 rounded-lg mb-6 border border-blue-200">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-list-ul mr-2"></i>Quick Navigation:
                </h4>
                <div class="grid grid-cols-2 md:grid-cols-5 gap-2">
                  <button type="button" onclick="showPhdSection('intro',this)"
                    class="phd-nav-btn active-phd-nav px-3 py-2 text-sm rounded-lg border transition">Introduction</button>
                  <button type="button" onclick="showPhdSection('policies',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Policies</button>
                  <button type="button" onclick="showPhdSection('eligibility',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Eligibility</button>
                  <button type="button" onclick="showPhdSection('scholars',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">For
                    Scholars</button>
                  <button type="button" onclick="showPhdSection('supervisors',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">For
                    Supervisors</button>
                  <button type="button" onclick="showPhdSection('sop-university',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Change
                    University</button>
                  <button type="button" onclick="showPhdSection('sop-supervisor',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Change
                    Supervisor</button>
                  <button type="button" onclick="showPhdSection('students',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Students
                    List</button>
                  <button type="button" onclick="showPhdSection('downloads',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Downloads</button>
                  <button type="button" onclick="showPhdSection('call',this)"
                    class="phd-nav-btn px-3 py-2 text-sm rounded-lg border transition">Call</button>
                </div>
              </div>

              <!-- Introduction Section -->
              <div id="phd-intro" class="phd-section">
                <div
                  class="bg-gradient-to-r from-indigo-50 to-purple-50 p-6 rounded-lg mb-6 border-l-4 border-indigo-500 shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                    <i class="fas fa-info-circle mr-2"></i>Introduction
                  </h4>
                  <p class="text-gray-700 leading-relaxed text-justify mb-4">
                    HEC has kept great emphasis on indigenous scholarship schemes because locally trained researchers
                    work on local problems of great national significance. Their research, therefore, is expected to
                    have direct relevance to the growth and socio-economic development of Pakistan.
                  </p>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    With the launching of the 5000 Indigenous Scholarship scheme, research culture in public/private
                    sector Universities has been developed in accordance with International norms/standards. This
                    project is focused at diversified disciplines belonging to all fields of Science & Technology as
                    well as Social Sciences, Humanities and Life Sciences. The specific objective of the 5000
                    Indigenous Scholarship Scheme is to create a critical mass of highly qualified human resources in
                    all fields of studies taught at the advanced level in local universities. In addition, this scheme
                    also provides funds to the Universities for upgrading their research facilities particularly small
                    laboratory equipment, chemicals, IT equipment etc. which not only facilitates research of the HEC
                    scholar but also serves as an asset for the department to establish up to date research
                    laboratories.
                  </p>
                </div>
              </div>

              <!-- Call Section -->
              <div id="phd-call" class="phd-section hidden">
                <div class="bg-yellow-50 border-l-4 border-yellow-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                    <i class="fas fa-bullhorn mr-2"></i>Call for Applications
                  </h4>
                  <p class="text-gray-700 text-center text-lg">Coming Soon...</p>
                </div>
              </div>

              <!-- Policies and Procedure Section -->
              <div id="phd-policies" class="phd-section hidden">
                <div class="bg-white border-l-4 border-blue-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-file-contract mr-2"></i>Policies and Procedure
                  </h4>
                  <ol class="list-decimal list-inside space-y-3 text-gray-700 ml-4 text-justify">
                    <li>HEC announces the call for Indigenous Ph.D. Fellowship Program through advertisement (through
                      print and electronic media)</li>
                    <li>The interested and eligible students apply online independently</li>
                    <li>HEC announces the result of scholarship winners and list of scholarship awardees displays on HEC
                      website</li>
                    <li>HEC issues debit advices to UAF students and sends their cheques of first installment to UAF
                    </li>
                    <li>The Treasurer Office, UAF sends information to ORIC with dates, duration and amount of cheques
                    </li>
                    <li>The student submits the debit advice to ORIC for the release of his/her installment alongwith
                      complete set of educational certificates</li>
                    <li>The ORIC notifies the installment of student after checking the status of installment received
                    </li>
                    <li>On the completion of one year, students submit their progress and funds utilization reports
                      through their supervisors to ORIC which are forwarded to HEC</li>
                    <li>The HEC evaluates their reports and releases their next installment which is processed
                      accordingly at ORIC</li>
                    <li>On successful defending their synopsis and thesis, the supervisors of the students apply for
                      honorarium which are forwarded to HEC after monitoring the reports and notifications at ORIC</li>
                    <li>On completion of PhD, completion report with thesis is forwarded to HEC</li>
                    <li>If student faces any problem to complete his/her Ph.D. on time, then he/she applies for
                      extension which is processed after checking the status of research</li>
                  </ol>
                </div>
              </div>

              <!-- Eligibility Criteria Section -->
              <div id="phd-eligibility" class="phd-section hidden">
                <div class="bg-white border-l-4 border-green-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-check-double mr-2"></i>Eligibility Criteria
                  </h4>
                  <ul class="space-y-3 text-gray-700">
                    <li class="flex items-start">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3 mt-0.5">a</span>
                      <span class="text-justify">Pakistani/AJK National</span>
                    </li>
                    <li class="flex items-start">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3 mt-0.5">b</span>
                      <span class="text-justify">For MS/MPhil, the candidates must have minimum of 16 years of education
                        with no 3rd division or Grade D in degree/certificate in the entire academic career</span>
                    </li>
                    <li class="flex items-start">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3 mt-0.5">c</span>
                      <span class="text-justify">Candidates applying for direct PhD scholarships must have minimum CGPA
                        3.0 (out of 4.0 in the semester system) or first division (in the annual system) in
                        MS/MPhil/Equivalent degree is required along with the condition mentioned above in clause
                        (b)</span>
                    </li>
                    <li class="flex items-start">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3 mt-0.5">d</span>
                      <span class="text-justify">Maximum age at the closing date of application: 40 years for full-time
                        regular faculty members of public sector university/DAIs and regular employee of the public
                        sector/R&D organizations; 35 years for all others</span>
                    </li>
                    <li class="flex items-start">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3 mt-0.5">e</span>
                      <span class="text-justify">The candidates who are already availing any other HEC/Government
                        scholarship are NOT eligible to apply</span>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- Guidelines for Scholars Section -->
              <div id="phd-scholars" class="phd-section hidden">
                <div class="bg-white border-l-4 border-purple-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-user-graduate mr-2"></i>Guidelines for Scholars
                  </h4>
                  <ul class="space-y-3 text-gray-700 text-sm text-justify">
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholars are bound to complete Ph.D. studies within a specific period of time. To ensure
                        the timely completion of MS/MPhil/Ph.D. studies, the scholars are required to take at least 09
                        credit workload per semester in any case.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>It is strictly advised to send the Academic Progress Report & Funds Utilization Report (two
                        months before the end of already released funds on HEC prescribed format available at the
                        website) in time so that next due funds may be released accordingly.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The MS/MPhil enrolled scholars are required to enroll in the Ph.D. program without any gap, and
                        Ph.D. funds will only be released after the provision of the Ph.D. admission letter.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>It is the responsibility of scholars to meet the deadlines informed through HEC correspondence
                        to avoid complications in their scholarship cases.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The usual mode of communication for scholars at HEC is the website and emails. Therefore, the
                        scholars are required to check their emails regularly.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholars are required to be full-time regular scholars during the entire period of studies.
                        It is the responsibility of employed scholars to provide a valid study leave document for the
                        release of funds.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>Selected candidates will be required to complete the entire requirements of the MS/MPhil
                        Program, and the university shall award the student an MS/MPhil degree before he/she enters into
                        the Ph.D. program.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>It is not allowed to take semester breaks during the entire period of study; however, scholars
                        can be granted breaks on medical grounds with the approval of HEC on the provision of medical
                        certificates and reports.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>It is the responsibility of the scholar to keep liaison with the HEC Indigenous Project
                        Management Unit, and the scholar must keep updating PMU about any noticeable event in any case.
                      </p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholars are responsible in case there is any change of postal address, email, and
                        phone/cell numbers, to have uninterrupted communication.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>HEC does not allow distance learning programs for Indigenous scholars. Please make sure that
                        you are enrolled in a face-to-face campus-based learning degree to avoid complications in your
                        scholarship case.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The Ph.D. scholar is instructed to get enrolled under the supervision of an HEC-approved
                        supervisor who must be supervising the prescribed limit of scholars defined by the HEC Quality
                        Assurance division. Please be clear HEC will not release the funds of the scholar if the
                        supervisor is not HEC-approved or updating their profile at the HEC website.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholar is required to ensure that he/she has acknowledged the role of HEC in his final
                        Ph.D. thesis.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholar is required to forward the profile format available on the HEC website for HEC
                        records. Further, it should highlight the remarkable achievements/distinctions.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The last 6 months' funds will be released on the successful submission/completion of the Ph.D.
                        thesis for external evaluation to university/DAIs.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholars are expected to cooperate as and when required after Ph.D. completion as well.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>The scholars are required to serve a mandatory period in Pakistan after the successful
                        completion of his/her Ph.D. studies in any case.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>To facilitate HEC scholars, most probable scholar queries have already been addressed, and
                        replies are available on the HEC website. Make sure to spend some time checking the HEC
                        Indigenous website before making any query.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>In case of default or not meeting the criteria of HEC, the scholar would be liable to refund
                        the entire released amount with a 25% penalty. In addition, HEC also reserves the right to
                        initiate any disciplinary action which may lead to filing a civil suit in the court of law.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p>Those scholars who have completed their Ph.D. must inform the HEC in time and provide the Ph.D.
                        completion Performa along with requisite documents (available on the website), required by this
                        office on Ph.D. completion.</p>
                    </li>
                    <li class="flex items-start">
                      <i class="fas fa-circle text-blue-500 mr-3 mt-1.5 text-xs"></i>
                      <p><strong>Note:</strong> Please be informed that all time-to-time policy guidelines issued by HEC
                        would be applicable to all Indigenous scholars, and they would be required to abide by all that
                        without exception.</p>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- Guidelines for Supervisors Section -->
              <div id="phd-supervisors" class="phd-section hidden">
                <div class="bg-white border-l-4 border-orange-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-chalkboard-teacher mr-2"></i>Guidelines for Supervisors
                  </h4>
                  <div class="space-y-4 text-gray-700 text-sm text-justify">
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisors of the scholars are being paid by HEC and they are duty bound to keep following
                        the scholars and extend their full cooperation in this regard.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is responsible to make it sure that the scholar is attending
                        University/laboratory regularly and is full time regular student. In case of any noticeable
                        delay, they must inform HEC Indigenous PMU.</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is responsible if scholars left Ph.D. study incomplete and joined the job.
                        Supervisor must inform Indigenous PMU.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is required to inform HEC, in case scholar’s proposed study plan is changed and
                        may cause delay in Ph.D. completion period.</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is required to make sure in-time completion of Ph.D., and for that they can make
                        study plan of their HEC funded scholars with some landmarks keeping HEC scholarship period in
                        mind. (05 years: 02 years for MS and 03 years for Ph.D.).</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is also responsible to make sure that scholar is not doing any job as scholar is
                        under agreement to not to do so (Agreement Specimen for kind information).</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>HEC do not allow distance learning program for Indigenous scholars, please make sure that the
                        scholars enrolled in face-to-face campus-based learning degree to avoid complication in
                        scholarship case.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>Scholars are not allowed to change scholarship programs (from Indigenous to foreign) without
                        approval of HEC, supervisors are required to ensure this.</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor profile at HEC website is pre-requisite for release of scholar’s and
                        supervisor’s funds, supervisor is required to ensure that same is updated to ensure the timely
                        release of funds.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>Supervisor must not supervise research scholars beyond prescribed limit of HEC.</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>Supervisor is required to ensure that scholar has acknowledged the role of HEC in his final
                        Ph.D. thesis.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>Supervisor is also expected to extend his cooperation with scholar in submission of Academic
                        Progress Report and Funds Utilization Report to HEC.</p>
                    </div>
                    <div class="flex items-start bg-orange-50 p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisor is expected to extend full cooperation in facilitating the scholars in
                        completion of Ph.D. study keeping aside the personal biasness and grudges.</p>
                    </div>
                    <div class="flex items-start bg-white p-3 rounded">
                      <i class="fas fa-check-circle text-orange-500 mr-3 mt-1.5"></i>
                      <p>The supervisors are also expected to guide the scholars in personality grooming (patience,
                        self-confidence, a responsible citizen).</p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- SOP for Change of University Section -->
              <div id="phd-sop-university" class="phd-section hidden">
                <div class="bg-white border-l-4 border-teal-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-university mr-2"></i>SOP's for Change of University
                  </h4>

                  <div class="mb-6">
                    <h5 class="font-semibold text-gray-800 mb-3 flex items-center">
                      <span class="bg-red-100 text-red-600 px-3 py-1 rounded-full mr-2">From</span>
                      Documents required from Old University (University to be left):
                    </h5>
                    <ul class="space-y-2 ml-6">
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-red-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">No objection certificate for change of University</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-red-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Up to date Utilization Report</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-red-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Total number of credit hours studied</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-red-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Progress report</span>
                      </li>
                    </ul>
                  </div>

                  <div>
                    <h5 class="font-semibold text-gray-800 mb-3 flex items-center">
                      <span class="bg-green-100 text-green-600 px-3 py-1 rounded-full mr-2">To</span>
                      Documents required from New University (University to be joined):
                    </h5>
                    <ul class="space-y-2 ml-6">
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Total number of Credit hours acceptance at University</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Consent of HEC approved Supervisor (The student supervisor ratio
                          must be according to HEC Quality Assurance criteria)</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Supervisor Profile as per HEC format</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Department Profile as per HEC format</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">The department should have at least 3 PhD Faculty members out of
                          which 02 must be HEC approved Supervisors</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Total number of PhD students has to be rational compared to the
                          total number of available PhDs in the Department</span>
                      </li>
                      <li class="flex items-start">
                        <i class="fas fa-file-alt text-green-500 mr-3 mt-1"></i>
                        <span class="text-gray-700">Date of joining the classes</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>

              <!-- SOP for Change of Supervisor Section -->
              <div id="phd-sop-supervisor" class="phd-section hidden">
                <div class="bg-white border-l-4 border-pink-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-user-tie mr-2"></i>SOP's for Change of Supervisor
                  </h4>
                  <ul class="space-y-3 text-gray-700">
                    <li class="flex items-start bg-pink-50 p-3 rounded">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-pink-100 rounded-full flex items-center justify-center text-pink-600 font-bold mr-3 mt-0.5">1</span>
                      <span>NOC from old (Existing) Supervisor</span>
                    </li>
                    <li class="flex items-start bg-white p-3 rounded border border-gray-200">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-pink-100 rounded-full flex items-center justify-center text-pink-600 font-bold mr-3 mt-0.5">2</span>
                      <span>Consent of new supervisor along with Supervisor profile</span>
                    </li>
                    <li class="flex items-start bg-pink-50 p-3 rounded">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-pink-100 rounded-full flex items-center justify-center text-pink-600 font-bold mr-3 mt-0.5">3</span>
                      <div>
                        <p class="font-semibold mb-1">Present limits for Supervisor:</p>
                        <ul class="ml-4 mt-2 space-y-1 text-sm">
                          <li>• Maximum five students (HEC+ Non HEC) per Supervisor</li>
                          <li>• Maximum of eight students (HEC+ Non HEC) per Supervisor under special circumstances (for
                            a person with a good track record of research and high impact factor) with the approval of
                            HEC</li>
                        </ul>
                      </div>
                    </li>
                    <li class="flex items-start bg-white p-3 rounded border border-gray-200">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-pink-100 rounded-full flex items-center justify-center text-pink-600 font-bold mr-3 mt-0.5">4</span>
                      <span>Visiting faculty member is not allowed to supervise Indigenous HEC scholars</span>
                    </li>
                    <li class="flex items-start bg-pink-50 p-3 rounded">
                      <span
                        class="flex-shrink-0 w-6 h-6 bg-pink-100 rounded-full flex items-center justify-center text-pink-600 font-bold mr-3 mt-0.5">5</span>
                      <span>Approval of Board of Advance Studies & Research/concerned authority regarding
                        change/allocation of Supervisor</span>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- Students Availing Scholarship Section -->
              <div id="phd-students" class="phd-section hidden">
                <div class="bg-white border-l-4 border-indigo-500 p-6 rounded-lg shadow-md">
                  <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                    <i class="fas fa-users mr-2"></i>Students Availing Scholarship
                  </h4>

                  <!-- Search Box -->
                  <div class="mb-4">
                    <input type="text" id="studentSearch" placeholder="Search by name, department, or supervisor..."
                      class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                      onkeyup="filterStudents()">
                  </div>

                  <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border border-gray-300" id="studentsTable">
                      <thead class="bg-gradient-to-r from-blue-500 to-indigo-600 text-white">
                        <tr>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Sr. No.</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">PIN No.</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Regd. No.</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Student Name</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Supervisor Name</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Department</th>
                          <th class="px-4 py-3 text-left text-sm font-semibold">Faculty</th>
                        </tr>
                      </thead>
                      <tbody class="divide-y divide-gray-200">
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">1</td>
                          <td class="px-4 py-3 text-sm">112-36255-2EG1-250</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2287</td>
                          <td class="px-4 py-3 text-sm">Mr. Ali Raza</td>
                          <td class="px-4 py-3 text-sm">Dr. Anjum Munir</td>
                          <td class="px-4 py-3 text-sm">Farm Machinery & Power</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering & Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">2</td>
                          <td class="px-4 py-3 text-sm">112-36255-2EG1-251</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2288</td>
                          <td class="px-4 py-3 text-sm">Ms. Ayesha Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. Sarah Ahmed</td>
                          <td class="px-4 py-3 text-sm">Biotechnology</td>
                          <td class="px-4 py-3 text-sm">Life Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">3</td>
                          <td class="px-4 py-3 text-sm">112-36255-2EG1-252</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2289</td>
                          <td class="px-4 py-3 text-sm">Mr. Usman Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. Kamran Javed</td>
                          <td class="px-4 py-3 text-sm">Plant Pathology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">4</td>
                          <td class="px-4 py-3 text-sm">112-36255-2EG1-253</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2290</td>
                          <td class="px-4 py-3 text-sm">Ms. Fatima Noor</td>
                          <td class="px-4 py-3 text-sm">Dr. Ahmed Raza</td>
                          <td class="px-4 py-3 text-sm">Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Natural Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">5</td>
                          <td class="px-4 py-3 text-sm">112-36255-2EG1-254</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2291</td>
                          <td class="px-4 py-3 text-sm">Mr. Hassan Tariq</td>
                          <td class="px-4 py-3 text-sm">Dr. Nadia Malik</td>
                          <td class="px-4 py-3 text-sm">Food Science</td>
                          <td class="px-4 py-3 text-sm">Food Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">6</td>
                          <td class="px-4 py-3 text-sm">106-2204-Av6-040</td>
                          <td class="px-4 py-3 text-sm">95-ag-1384</td>
                          <td class="px-4 py-3 text-sm">Mr. Irfan Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Rashid Ahmad Khan</td>
                          <td class="px-4 py-3 text-sm">Forestry and Range Management</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">7</td>
                          <td class="px-4 py-3 text-sm">117-2797-Av7-186 (50018471)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1911</td>
                          <td class="px-4 py-3 text-sm">Mr. Farasat Wali Shah</td>
                          <td class="px-4 py-3 text-sm">Dr. Ahsan Qadir</td>
                          <td class="px-4 py-3 text-sm">Forestry and Range Management</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">8</td>
                          <td class="px-4 py-3 text-sm">213-64402-2EG2-038 (50024074)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-3075</td>
                          <td class="px-4 py-3 text-sm">Mr. Mudassar Anwar Butt</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Arshad</td>
                          <td class="px-4 py-3 text-sm">Irrigation &amp; Drainage</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">9</td>
                          <td class="px-4 py-3 text-sm">213-59068-2EG2-025 (50024047)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-2229</td>
                          <td class="px-4 py-3 text-sm">Mr. Junaid Nawaz Chaudhary</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Allah Bakhsh</td>
                          <td class="px-4 py-3 text-sm">Irrigation &amp; Drainage</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">10</td>
                          <td class="px-4 py-3 text-sm">213-63520-2EG2-121</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1250</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Abubakar Aslam</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Arshad</td>
                          <td class="px-4 py-3 text-sm">Irrigation &amp; Drainage</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">11</td>
                          <td class="px-4 py-3 text-sm">315-1631-2EG3-023 (50034298)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-2757</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Aslam</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Arshad</td>
                          <td class="px-4 py-3 text-sm">Irrigation &amp; drainage</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">12</td>
                          <td class="px-4 py-3 text-sm">315-13601-2EG3-207(50034439)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-3199</td>
                          <td class="px-4 py-3 text-sm">Mr. Istakhar Jahangir</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Arshad</td>
                          <td class="px-4 py-3 text-sm">Irrigation &amp; drainage</td>
                          <td class="px-4 py-3 text-sm">Agri. Engineering &amp; Technology</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">13</td>
                          <td class="px-4 py-3 text-sm">112-32654-2Av1-040</td>
                          <td class="px-4 py-3 text-sm">2012-ag-900</td>
                          <td class="px-4 py-3 text-sm">Mr. Absaar Tariq</td>
                          <td class="px-4 py-3 text-sm">Dr. Shahzad M. A. Basra</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">14</td>
                          <td class="px-4 py-3 text-sm">213-56673-2AV2-166 (50023755)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2268</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Shahid</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Farrukh Saleem</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">15</td>
                          <td class="px-4 py-3 text-sm">213-59071-2AV2-017 (50023764)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-1957</td>
                          <td class="px-4 py-3 text-sm">Mr. Iftikhar Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. Shakeel Ahmad Anjum</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">16</td>
                          <td class="px-4 py-3 text-sm">063-123053-Av3-069</td>
                          <td class="px-4 py-3 text-sm">2000-ag-1353</td>
                          <td class="px-4 py-3 text-sm">Imran Qadir</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ayub</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">17</td>
                          <td class="px-4 py-3 text-sm">074-2285-Av4-049</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1530</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Aamir</td>
                          <td class="px-4 py-3 text-sm">Dr. Nadeem Akbar</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">18</td>
                          <td class="px-4 py-3 text-sm">074-0502-Av4-053</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1900</td>
                          <td class="px-4 py-3 text-sm"> Mr. Muhammad kashif Hanif</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Athar Nadeem</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">19</td>
                          <td class="px-4 py-3 text-sm">074-1208-Av4-006</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1586</td>
                          <td class="px-4 py-3 text-sm">Muhammad Zeeshan Nadeem</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Ayub</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">20</td>
                          <td class="px-4 py-3 text-sm">074-0412-Av4-159</td>
                          <td class="px-4 py-3 text-sm">94-ag-1184</td>
                          <td class="px-4 py-3 text-sm">Mr. Safdar Hussain</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Farrukh Saleem</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">21</td>
                          <td class="px-4 py-3 text-sm">074-2939-Av4-099</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1568</td>
                          <td class="px-4 py-3 text-sm">Mr. M. Asif Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. Syed Aftab Wajid</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">22</td>
                          <td class="px-4 py-3 text-sm">074-1212-Av4-125</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1613</td>
                          <td class="px-4 py-3 text-sm">Naeem Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Nadeem Akbar</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">23</td>
                          <td class="px-4 py-3 text-sm">106-2049-Av6-067</td>
                          <td class="px-4 py-3 text-sm">91-ag-1093</td>
                          <td class="px-4 py-3 text-sm">Mr. Amjed Ali </td>
                          <td class="px-4 py-3 text-sm">Dr. Ashfaq Ahmad </td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">24</td>
                          <td class="px-4 py-3 text-sm">106-2335-Av6-057</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2436</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Talha</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Tahir</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">25</td>
                          <td class="px-4 py-3 text-sm">106-1218-Av6-130</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1452</td>
                          <td class="px-4 py-3 text-sm">Mr. Tariq Aziz</td>
                          <td class="px-4 py-3 text-sm">Dr. Fahad Rasul</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">26</td>
                          <td class="px-4 py-3 text-sm">063-197-Av3-008</td>
                          <td class="px-4 py-3 text-sm">99-ag-1054</td>
                          <td class="px-4 py-3 text-sm">Muhammad Akram </td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Asghar Malik</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">27</td>
                          <td class="px-4 py-3 text-sm">315-4179-2AV3-018 (50033768)</td>
                          <td class="px-4 py-3 text-sm">99-ag-1319</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Akhlaq Mudassir</td>
                          <td class="px-4 py-3 text-sm">Dr. Fahd Rasul</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">28</td>
                          <td class="px-4 py-3 text-sm">315-8275-2AV3-047 (50033792)</td>
                          <td class="px-4 py-3 text-sm">2010-ag-2767</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Faizan Anjum Rafiq</td>
                          <td class="px-4 py-3 text-sm">Dr. Tasneem Khaliq</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">29</td>
                          <td class="px-4 py-3 text-sm">315-4752-2AV3-021 (50033770)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2521</td>
                          <td class="px-4 py-3 text-sm">Mr. Ali Raza</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq Wahid</td>
                          <td class="px-4 py-3 text-sm">Agronomy</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">30</td>
                          <td class="px-4 py-3 text-sm">112-23222-2Av1-017 (50021442)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2195</td>
                          <td class="px-4 py-3 text-sm">Mr. Ali Ahsan Bajwa</td>
                          <td class="px-4 py-3 text-sm">Dr. Ehsan Ullah</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">31</td>
                          <td class="px-4 py-3 text-sm">112-30569-2Av1-124 (50021593)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1586</td>
                          <td class="px-4 py-3 text-sm">Mr. Aamir Sajjad</td>
                          <td class="px-4 py-3 text-sm">Dr. Ehsan Ullah</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">32</td>
                          <td class="px-4 py-3 text-sm">112-22217-2AV1-228 (50022626)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1772</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asim Rashid</td>
                          <td class="px-4 py-3 text-sm">Dr. Nadeem Akbar</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">33</td>
                          <td class="px-4 py-3 text-sm">213-53412-2AV2-032</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1702</td>
                          <td class="px-4 py-3 text-sm">Mr. Ahmad Bilal</td>
                          <td class="px-4 py-3 text-sm">Dr. Ashfaq Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">34</td>
                          <td class="px-4 py-3 text-sm">213-59088-2AV2-011 (50025808)</td>
                          <td class="px-4 py-3 text-sm">2006-ag1573</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Waqas Aslam Cheema</td>
                          <td class="px-4 py-3 text-sm">Dr. Riaz Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">35</td>
                          <td class="px-4 py-3 text-sm">213-60194-2AV2-005 (50025778)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2004</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Saqib</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Khaliq</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">36</td>
                          <td class="px-4 py-3 text-sm">213-68357-2AV2-046</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2092</td>
                          <td class="px-4 py-3 text-sm">Mr. Tassadduq Rasool</td>
                          <td class="px-4 py-3 text-sm">Dr. Riaz Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">37</td>
                          <td class="px-4 py-3 text-sm">213-60108-2AV2-079 (50025689)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2277</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Fahad</td>
                          <td class="px-4 py-3 text-sm">Dr. Syed Aftab Wajid</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">38</td>
                          <td class="px-4 py-3 text-sm">213-65862-2AV2-134</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2224</td>
                          <td class="px-4 py-3 text-sm">Mr. Sami Ullah</td>
                          <td class="px-4 py-3 text-sm">Dr. Ehsan Ullah/ Dr. Shakeel Ahmad Anjum</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">39</td>
                          <td class="px-4 py-3 text-sm">213-67526-2AV2-135</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2572</td>
                          <td class="px-4 py-3 text-sm">Mr. Ghulam Shabbir</td>
                          <td class="px-4 py-3 text-sm">Dr. Tasneem Khaliq </td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">40</td>
                          <td class="px-4 py-3 text-sm">213-66028-2AV2-147</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2489</td>
                          <td class="px-4 py-3 text-sm">Mr. Ali Zohaib</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Jabbar</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">41</td>
                          <td class="px-4 py-3 text-sm">213-57358-2AV2-073</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1954</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Amir Bakhtavar</td>
                          <td class="px-4 py-3 text-sm">Dr. Irfan Afzal</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">42</td>
                          <td class="px-4 py-3 text-sm">213-65866-2AV2-149</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2208</td>
                          <td class="px-4 py-3 text-sm">Mr. M. Hafiz Maqbool Ahmed</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq Wahid</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">43</td>
                          <td class="px-4 py-3 text-sm">213-61276-2AV2-075</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1715</td>
                          <td class="px-4 py-3 text-sm">Mr. Tanweer Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Asif Tanveer</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">44</td>
                          <td class="px-4 py-3 text-sm">213-59448-2Av2-043 (50027467)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2784</td>
                          <td class="px-4 py-3 text-sm">Mr. Noor Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Rana Nadeem Abbas</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">45</td>
                          <td class="px-4 py-3 text-sm">213-61728-2AV2-086</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2561</td>
                          <td class="px-4 py-3 text-sm">Miss Tahira Tabassum</td>
                          <td class="px-4 py-3 text-sm">Dr. Riaz Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">46</td>
                          <td class="px-4 py-3 text-sm">213-60980-2AV2-163</td>
                          <td class="px-4 py-3 text-sm">2010-ag-646</td>
                          <td class="px-4 py-3 text-sm">Miss Saba Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Farooq</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">47</td>
                          <td class="px-4 py-3 text-sm">213-62900-2Av2-049 (50029828)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1879</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Irfan</td>
                          <td class="px-4 py-3 text-sm">Dr. Rashid Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">48</td>
                          <td class="px-4 py-3 text-sm">106-1644-Av6-070</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1650</td>
                          <td class="px-4 py-3 text-sm">Mr. Hafiz Muhammad Rashad Javed</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Shahid Ibni Zamir </td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">49</td>
                          <td class="px-4 py-3 text-sm">106-1594-Av6-032</td>
                          <td class="px-4 py-3 text-sm">89-ag-1183</td>
                          <td class="px-4 py-3 text-sm">Mr. Khalid Mahmood</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Khaliq</td>
                          <td class="px-4 py-3 text-sm">Agronomy </td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">50</td>
                          <td class="px-4 py-3 text-sm">112-25143-2Av1-179 (50022378)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1463</td>
                          <td class="px-4 py-3 text-sm">Ms. Hoor Shaina</td>
                          <td class="px-4 py-3 text-sm">Dr. Zain ul Abdin</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">51</td>
                          <td class="px-4 py-3 text-sm">112-23790-2AV1-134 (50022622)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-10</td>
                          <td class="px-4 py-3 text-sm">Mr. Ahmad Kamran Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Hamid Bashir </td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">52</td>
                          <td class="px-4 py-3 text-sm">213-60366-2AV2-084 (50025720)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-614</td>
                          <td class="px-4 py-3 text-sm">Mr. Shah Zaman</td>
                          <td class="px-4 py-3 text-sm">Dr. Mansoor ul Hassan</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">53</td>
                          <td class="px-4 py-3 text-sm">213-67460-2AV2-110 (50025823)</td>
                          <td class="px-4 py-3 text-sm">2013-ag-1347</td>
                          <td class="px-4 py-3 text-sm">Mr. Tauqir Anwar Gondal</td>
                          <td class="px-4 py-3 text-sm">Dr. Mansoor-ul-Hassan</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">54</td>
                          <td class="px-4 py-3 text-sm">063-161075-Av3-058</td>
                          <td class="px-4 py-3 text-sm">92-ag-1217</td>
                          <td class="px-4 py-3 text-sm">Muhammad Ramzan Asi</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Hamid Bashir </td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">55</td>
                          <td class="px-4 py-3 text-sm">074-0811-Av4-035</td>
                          <td class="px-4 py-3 text-sm">2006-ag-573</td>
                          <td class="px-4 py-3 text-sm">Mr. M. Akbar Zafar Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. Farooq Ahmad</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">56</td>
                          <td class="px-4 py-3 text-sm">074-3478-Av4-081</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2376</td>
                          <td class="px-4 py-3 text-sm">Khizar Hayat</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">57</td>
                          <td class="px-4 py-3 text-sm">074-1230-Av4-007</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2366</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Tayyab Naseem</td>
                          <td class="px-4 py-3 text-sm">Dr. Khauram Zia</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">58</td>
                          <td class="px-4 py-3 text-sm">106-1823-Av6-012</td>
                          <td class="px-4 py-3 text-sm">96-ag-632</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Kashif Nadeem</td>
                          <td class="px-4 py-3 text-sm">Dr. Sohail Ahmed</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">59</td>
                          <td class="px-4 py-3 text-sm">106-1998-Av6-019</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2392</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asad Ullah</td>
                          <td class="px-4 py-3 text-sm">Dr. Anjum Suhail</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">60</td>
                          <td class="px-4 py-3 text-sm">106-2004-Av6-112</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1773</td>
                          <td class="px-4 py-3 text-sm">Mr. Shahzad Saleem</td>
                          <td class="px-4 py-3 text-sm">Dr. Mansoor ul Hassan</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">61</td>
                          <td class="px-4 py-3 text-sm">117-8299-Av7-198 (50018854)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1973</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Ibrahim Shahid</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Arshad</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">62</td>
                          <td class="px-4 py-3 text-sm">117-4592-Av7-187 (50018595)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1288</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Wasim Abbas</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ahsan Khan</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">63</td>
                          <td class="px-4 py-3 text-sm">117-6345-Av7-080 (50018715)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1095</td>
                          <td class="px-4 py-3 text-sm">Mr. Saeed Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq</td>
                          <td class="px-4 py-3 text-sm">Entomology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">64</td>
                          <td class="px-4 py-3 text-sm">112-26031-2Av1-291 (50022866)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1247</td>
                          <td class="px-4 py-3 text-sm">Mr. Rana Tajammal Husnain</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Amjad</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">65</td>
                          <td class="px-4 py-3 text-sm">112-21896-2Av1-211 (50022929)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-509</td>
                          <td class="px-4 py-3 text-sm">Mr. Monis Hussain Shah</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Usman</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">66</td>
                          <td class="px-4 py-3 text-sm">112-34393-2AV1-284 (50022687)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1454</td>
                          <td class="px-4 py-3 text-sm">Mr. Qamar Shahzad Anjum</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Amjad</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">67</td>
                          <td class="px-4 py-3 text-sm">213-59306-2AV2-076</td>
                          <td class="px-4 py-3 text-sm">2009-ag-587</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Waseem Haider</td>
                          <td class="px-4 py-3 text-sm">Dr. C.M. Ayub</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">68</td>
                          <td class="px-4 py-3 text-sm">074-2404-Av4-027</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1593</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Saleem</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Aslam Khan</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">69</td>
                          <td class="px-4 py-3 text-sm">074-1210-Av4-040</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1594</td>
                          <td class="px-4 py-3 text-sm">Mr. Shahid Mahmood</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Jafar Jaskani</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">70</td>
                          <td class="px-4 py-3 text-sm">074-3697-Av4-156</td>
                          <td class="px-4 py-3 text-sm">2007-ag-12</td>
                          <td class="px-4 py-3 text-sm">Mr. Waqar Abdus Samad</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Usman</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">71</td>
                          <td class="px-4 py-3 text-sm">074-2862-Av4-121</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1857</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Usman</td>
                          <td class="px-4 py-3 text-sm">Dr. Fatima Usman</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">72</td>
                          <td class="px-4 py-3 text-sm">106-2001-Av6-014</td>
                          <td class="px-4 py-3 text-sm">2000-ag-504</td>
                          <td class="px-4 py-3 text-sm">Miss Umbreen Shahzad</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Jafar Jaskani</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">73</td>
                          <td class="px-4 py-3 text-sm">106-1487-Av6-120</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1811</td>
                          <td class="px-4 py-3 text-sm">Miss Tahira Abbas</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammd Aslam Pervez</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">74</td>
                          <td class="px-4 py-3 text-sm">117-8903-Av7-110 (50018121)</td>
                          <td class="px-4 py-3 text-sm">2010-ag-639</td>
                          <td class="px-4 py-3 text-sm">Mr. Salman Mushtaq</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Amjad</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">75</td>
                          <td class="px-4 py-3 text-sm">117-7869-Av7-100 (50018215)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1233</td>
                          <td class="px-4 py-3 text-sm">Mr. Akhtar Javed</td>
                          <td class="px-4 py-3 text-sm">Dr. C.M. Ayub</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">76</td>
                          <td class="px-4 py-3 text-sm">117-3816-Av7-193 (50018537)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1893</td>
                          <td class="px-4 py-3 text-sm">Mr. Rehan Riaz</td>
                          <td class="px-4 py-3 text-sm">Dr. Ahmad Sattar Khan</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">77</td>
                          <td class="px-4 py-3 text-sm">117-1922-Av7-206 (50018436)</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1970</td>
                          <td class="px-4 py-3 text-sm">Mr. Hasan Sardar</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Asif Ali</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">78</td>
                          <td class="px-4 py-3 text-sm">117-4441-Av7-172 (50018584)</td>
                          <td class="px-4 py-3 text-sm">2010-ag-995</td>
                          <td class="px-4 py-3 text-sm">Mr. Najam Uddin</td>
                          <td class="px-4 py-3 text-sm">Dr. Rana. M. Aslam Khan</td>
                          <td class="px-4 py-3 text-sm">Horticultural Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">79</td>
                          <td class="px-4 py-3 text-sm">112-27215-2Av1-036 (50021034)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-504</td>
                          <td class="px-4 py-3 text-sm">Hafiz Ghulam Muhu-Din Ahmed</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Abdus Salam Khan </td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">80</td>
                          <td class="px-4 py-3 text-sm">112-36754-2Av1-044 (50021093)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1103</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Arfan</td>
                          <td class="px-4 py-3 text-sm">Dr. Amir Shakeel </td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">81</td>
                          <td class="px-4 py-3 text-sm">112-25505-2Av1-199 (50022862)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1938</td>
                          <td class="px-4 py-3 text-sm">Miss Madiha Saba</td>
                          <td class="px-4 py-3 text-sm">Dr. Farooq Ahmad Khan</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">82</td>
                          <td class="px-4 py-3 text-sm">112-36499-2Av1-352 (50022437)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-38</td>
                          <td class="px-4 py-3 text-sm">Mr. Umar Farhan</td>
                          <td class="px-4 py-3 text-sm">Dr. Azeem Iqbal Khan </td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">83</td>
                          <td class="px-4 py-3 text-sm">213-64316-2AV2-009 (50025812)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1805</td>
                          <td class="px-4 py-3 text-sm">Miss Sonia Munir</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdus Salam Khan</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">84</td>
                          <td class="px-4 py-3 text-sm">213-55553-2AV2-021 (50025643)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2591</td>
                          <td class="px-4 py-3 text-sm">Miss Abia Younas</td>
                          <td class="px-4 py-3 text-sm">Dr. Ihsan Khaliq</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">85</td>
                          <td class="px-4 py-3 text-sm">213-57306-2AV2-004</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2230</td>
                          <td class="px-4 py-3 text-sm">Miss Iqra Ghafoor</td>
                          <td class="px-4 py-3 text-sm">Dr. Hafeez Ahmad Sadaqat</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">86</td>
                          <td class="px-4 py-3 text-sm">213-66438-2AV2-077 (50023739)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2192</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Abu Bakar Saddique</td>
                          <td class="px-4 py-3 text-sm">Dr. Zulfiqar Ali</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">87</td>
                          <td class="px-4 py-3 text-sm">213-61578-2AV2-115</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2222</td>
                          <td class="px-4 py-3 text-sm">Miss Saira Saleem</td>
                          <td class="px-4 py-3 text-sm">Dr. Ihsan Khaliq</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">88</td>
                          <td class="px-4 py-3 text-sm">213-62902-2Av2-158</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2726</td>
                          <td class="px-4 py-3 text-sm">Mr Asim Ali Cheema</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ahsan</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">89</td>
                          <td class="px-4 py-3 text-sm">213-66800-2Av2-067</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2272</td>
                          <td class="px-4 py-3 text-sm">Mr. Ikhlaq Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Tanwir Ahmad Malik</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">90</td>
                          <td class="px-4 py-3 text-sm">213-59789-2AV2-159</td>
                          <td class="px-4 py-3 text-sm">2013-ag-537</td>
                          <td class="px-4 py-3 text-sm">Miss Maria Ayoub</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Kashif</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">91</td>
                          <td class="px-4 py-3 text-sm">213-64358-2Av2-178 (50025828)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1732</td>
                          <td class="px-4 py-3 text-sm">Miss Shamsa Kanwal</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Hammad Nadeem Tahir</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">92</td>
                          <td class="px-4 py-3 text-sm">074-1937-Av4-186</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1715</td>
                          <td class="px-4 py-3 text-sm">Hafiz M. Wasif Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Saleem</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">93</td>
                          <td class="px-4 py-3 text-sm">117-5050-Av7-194 (50018629)</td>
                          <td class="px-4 py-3 text-sm">2010-ag-1439</td>
                          <td class="px-4 py-3 text-sm">Mr. Shoaib Ali Sunny</td>
                          <td class="px-4 py-3 text-sm">Dr. Ihsan Khaliq</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">94</td>
                          <td class="px-4 py-3 text-sm">117-9298-Av7-199</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1532</td>
                          <td class="px-4 py-3 text-sm">Ms. Anila Mohsin</td>
                          <td class="px-4 py-3 text-sm">Dr. Hafeez Ahmad Sadaqat</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">95</td>
                          <td class="px-4 py-3 text-sm">315-8845-2AV3-051 (50033795)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2376</td>
                          <td class="px-4 py-3 text-sm">Ms. Nafeesa Aslam</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Asif Ali</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">96</td>
                          <td class="px-4 py-3 text-sm">315-1684-2AV3-007 (50033758)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2492</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Awais Farooq</td>
                          <td class="px-4 py-3 text-sm">Dr. Amir Shakeel</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">97</td>
                          <td class="px-4 py-3 text-sm">315-21900-2AV3-122 (50033853)</td>
                          <td class="px-4 py-3 text-sm">2010-ag-3010</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Arslan Akhtar</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Aslam</td>
                          <td class="px-4 py-3 text-sm">Plant Breeding &amp; Genetics</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">98</td>
                          <td class="px-4 py-3 text-sm">112-33871-2Av1-223 (50021333)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-2032</td>
                          <td class="px-4 py-3 text-sm">Mr. Anwar ul Haq</td>
                          <td class="px-4 py-3 text-sm">Dr. Nazir Javed</td>
                          <td class="px-4 py-3 text-sm">Plant Pathology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">99</td>
                          <td class="px-4 py-3 text-sm">112-27836-2Av1-006 (50021530)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2435</td>
                          <td class="px-4 py-3 text-sm">Miss Amna Fayyaz</td>
                          <td class="px-4 py-3 text-sm">Dr. Shahbaz Talib Sahi</td>
                          <td class="px-4 py-3 text-sm">Plant Pathology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">100</td>
                          <td class="px-4 py-3 text-sm">112-30923-2Av1-039 (50021677)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2202</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Zeeshan Mansha</td>
                          <td class="px-4 py-3 text-sm">Dr. Shahbaz Talib Sahi</td>
                          <td class="px-4 py-3 text-sm">Plant Pathology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">101</td>
                          <td class="px-4 py-3 text-sm">213-53927-2AV2-151 (50025640)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2940</td>
                          <td class="px-4 py-3 text-sm">Miss Anam Moosa</td>
                          <td class="px-4 py-3 text-sm">Dr. Shahbaz Talib Sahi</td>
                          <td class="px-4 py-3 text-sm">Plant Pathology</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">102</td>
                          <td class="px-4 py-3 text-sm">112-25046-2Av1-144 (50021107)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1704</td>
                          <td class="px-4 py-3 text-sm">Ms. Ana Aslam </td>
                          <td class="px-4 py-3 text-sm">Dr. Zahir Ahmad Zahir</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">103</td>
                          <td class="px-4 py-3 text-sm">112-21564-2Av1-008 (50021414)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2140</td>
                          <td class="px-4 py-3 text-sm">Mr. Haroon Shahzad</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammd Iqbal</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">104</td>
                          <td class="px-4 py-3 text-sm">213-66776-2AV2-008 (50025822)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1491</td>
                          <td class="px-4 py-3 text-sm">Mr. Waqas Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Javed Akhtar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">105</td>
                          <td class="px-4 py-3 text-sm">213-60396-2AV2-014 (50025795)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-2329</td>
                          <td class="px-4 py-3 text-sm">Miss Sobia Noor</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Yaseen</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">106</td>
                          <td class="px-4 py-3 text-sm">213-600926-2AV2-028 (50025742)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-971</td>
                          <td class="px-4 py-3 text-sm">Miss Sarvet Jehan</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Iqbal</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">107</td>
                          <td class="px-4 py-3 text-sm">213-58536-2AV2-068</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1410</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Awais Khalid</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Yaseen</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">108</td>
                          <td class="px-4 py-3 text-sm">213-60146-2AV2-091 (50025721)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1114</td>
                          <td class="px-4 py-3 text-sm">Mr. Imran Rashid</td>
                          <td class="px-4 py-3 text-sm">Dr. Ghulam Murtaza</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">109</td>
                          <td class="px-4 py-3 text-sm">213-63050-2AV2-100 (50025804)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2102</td>
                          <td class="px-4 py-3 text-sm">Miss Hina Javed</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Javed Akhtar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">110</td>
                          <td class="px-4 py-3 text-sm">213-65550-2AV2-098</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2383</td>
                          <td class="px-4 py-3 text-sm">Miss Zuhra Mazhar</td>
                          <td class="px-4 py-3 text-sm">Dr. Javaid Akhtar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">111</td>
                          <td class="px-4 py-3 text-sm">213-63298-2AV2-101</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2045</td>
                          <td class="px-4 py-3 text-sm">Miss Humera Aziz</td>
                          <td class="px-4 py-3 text-sm">Dr. Ghulam Murtaza</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">112</td>
                          <td class="px-4 py-3 text-sm">213-67022-2PS2-097</td>
                          <td class="px-4 py-3 text-sm">2012-ag-632</td>
                          <td class="px-4 py-3 text-sm">Miss Shamaila Noureen</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Khalid</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">113</td>
                          <td class="px-4 py-3 text-sm">213-57673-2SS2-091 (50024812)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1433</td>
                          <td class="px-4 py-3 text-sm">Mr. Waqas Aslam</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Khalid</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">114</td>
                          <td class="px-4 py-3 text-sm">213-65038-2AV2-102</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2091</td>
                          <td class="px-4 py-3 text-sm">Miss Shazia Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Javaid Akhtar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">115</td>
                          <td class="px-4 py-3 text-sm">063-000010-Av3-051</td>
                          <td class="px-4 py-3 text-sm">86-ag-1065</td>
                          <td class="px-4 py-3 text-sm">Imtiaz Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Anwar-ul-Hassan</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">116</td>
                          <td class="px-4 py-3 text-sm">063-171352-Av3-022</td>
                          <td class="px-4 py-3 text-sm">2001-ag-848</td>
                          <td class="px-4 py-3 text-sm">Abdul Rasheed</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Ghafoor</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">117</td>
                          <td class="px-4 py-3 text-sm">074-0524-Av4-055</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1710</td>
                          <td class="px-4 py-3 text-sm">Mr. Khurram Shahzad</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Iqbal</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">118</td>
                          <td class="px-4 py-3 text-sm">074-3119-Av4-033</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1827</td>
                          <td class="px-4 py-3 text-sm">Rashid Latif</td>
                          <td class="px-4 py-3 text-sm">Dr. Anwar us Hassan</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">119</td>
                          <td class="px-4 py-3 text-sm">074-2106-Av4-147</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1612</td>
                          <td class="px-4 py-3 text-sm">Miss Bushra Talat</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Khalid</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">120</td>
                          <td class="px-4 py-3 text-sm">074-0353-Av4-135</td>
                          <td class="px-4 py-3 text-sm">2001-ag-2572</td>
                          <td class="px-4 py-3 text-sm">Mr. M. Abdul Qayyum</td>
                          <td class="px-4 py-3 text-sm">Dr. Javaid Akhtar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">121</td>
                          <td class="px-4 py-3 text-sm">117-6618-Av7-084 (50018735)</td>
                          <td class="px-4 py-3 text-sm">2003-ag-2350</td>
                          <td class="px-4 py-3 text-sm">Miss Sajida Azhar</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Anwar ul Haq</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">122</td>
                          <td class="px-4 py-3 text-sm">315-7426-2AV3-038 (50033785)</td>
                          <td class="px-4 py-3 text-sm">99-ag-1199</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Arfan-ul-Haq</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Yaseen</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">123</td>
                          <td class="px-4 py-3 text-sm">315-15606-2AV3-084 (50033821)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-3050</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Shabaan</td>
                          <td class="px-4 py-3 text-sm">Dr. Hafiz Naeem Asghar</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">124</td>
                          <td class="px-4 py-3 text-sm">315-246-2AV3-001 (50033517)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2215</td>
                          <td class="px-4 py-3 text-sm">Mr. Atif Javed</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Iqbal</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">125</td>
                          <td class="px-4 py-3 text-sm">315-11728-2AV3-065 (50033806)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-3001</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Ashar Ayub</td>
                          <td class="px-4 py-3 text-sm">Dr. Hamaad Raza Ahmad</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">126</td>
                          <td class="px-4 py-3 text-sm">315-7441-2AV3-039 (50033786)</td>
                          <td class="px-4 py-3 text-sm">2001-ag-941</td>
                          <td class="px-4 py-3 text-sm">Ms. Ifra Saleem</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Aamer Maqsood</td>
                          <td class="px-4 py-3 text-sm">Soil &amp; Environmental Sciences</td>
                          <td class="px-4 py-3 text-sm">Agriculture</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">127</td>
                          <td class="px-4 py-3 text-sm">213-68140-2AV2-128 (50025745)</td>
                          <td class="px-4 py-3 text-sm">2014-ag-2228</td>
                          <td class="px-4 py-3 text-sm">Mr. Shahzad Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Shaukat Ali Bhatti</td>
                          <td class="px-4 py-3 text-sm">Animal &amp; Dairy Sciences</td>
                          <td class="px-4 py-3 text-sm">Animal husbandry</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">128</td>
                          <td class="px-4 py-3 text-sm">213-57486-2AV2-154</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2376</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Zeeshan Javed</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Sharif</td>
                          <td class="px-4 py-3 text-sm">Animal &amp; Dairy Sciences</td>
                          <td class="px-4 py-3 text-sm">Animal husbandry</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">129</td>
                          <td class="px-4 py-3 text-sm">074-2283-Av4-072</td>
                          <td class="px-4 py-3 text-sm">97-ag-1459</td>
                          <td class="px-4 py-3 text-sm">Muhammad Shakeel Amjad</td>
                          <td class="px-4 py-3 text-sm">Dr. Mahr-un-Nisa</td>
                          <td class="px-4 py-3 text-sm">Animal &amp; Dairy Sciences</td>
                          <td class="px-4 py-3 text-sm">Animal husbandry</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">130</td>
                          <td class="px-4 py-3 text-sm">074-3327-Av4-061</td>
                          <td class="px-4 py-3 text-sm">2002-ag-711</td>
                          <td class="px-4 py-3 text-sm">Altaf Hussain</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Qamar Bilal</td>
                          <td class="px-4 py-3 text-sm">Animal &amp; Dairy Sciences</td>
                          <td class="px-4 py-3 text-sm">Animal husbandry</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">131</td>
                          <td class="px-4 py-3 text-sm">074-1740-Av4-094</td>
                          <td class="px-4 py-3 text-sm">2002-ag-695</td>
                          <td class="px-4 py-3 text-sm">Mr. Shahid Nazir</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Sarwar</td>
                          <td class="px-4 py-3 text-sm">Animal &amp; Dairy Sciences</td>
                          <td class="px-4 py-3 text-sm">Animal husbandry</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">132</td>
                          <td class="px-4 py-3 text-sm">112-29007-2Bm1-004 (50021711)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-1716</td>
                          <td class="px-4 py-3 text-sm">Ms. Mobin Aslam</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Sarwar Khan</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">133</td>
                          <td class="px-4 py-3 text-sm">213-66918-2AV2-037 (50025738)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1384</td>
                          <td class="px-4 py-3 text-sm">Miss Sabin Aslam</td>
                          <td class="px-4 py-3 text-sm">Dr. Sultan Habib Ullah Khan</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">134</td>
                          <td class="px-4 py-3 text-sm">213-60701-2AV2-092 (50025793)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-516</td>
                          <td class="px-4 py-3 text-sm">Miss Sara Shakir</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Shah Nawaz ur Rehman</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">135</td>
                          <td class="px-4 py-3 text-sm">213-65988-2AV2-122 (50023759)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2180</td>
                          <td class="px-4 py-3 text-sm">Miss Sehrish Ijaz</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Mubin</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">136</td>
                          <td class="px-4 py-3 text-sm">213-62082-2BM2-016 (50025327)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-1063</td>
                          <td class="px-4 py-3 text-sm">Miss Sultana Anwar</td>
                          <td class="px-4 py-3 text-sm">Dr. Ghulam Mustafa</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">137</td>
                          <td class="px-4 py-3 text-sm">213-61500-2AV2-137 (50025708)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1539</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Majid</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Sarwar Khan </td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">138</td>
                          <td class="px-4 py-3 text-sm">213-57792-2BM2-191 (50023673)</td>
                          <td class="px-4 py-3 text-sm">2013-ag-04</td>
                          <td class="px-4 py-3 text-sm">Hafiz Muhammad Khalid</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Shah Nawaz-ul-Rehman</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">139</td>
                          <td class="px-4 py-3 text-sm">117-3158-Bm7-074 (50018498)</td>
                          <td class="px-4 py-3 text-sm">2001-ag-1048</td>
                          <td class="px-4 py-3 text-sm">Mr. Ghulam Murtaza</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Mubin</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">140</td>
                          <td class="px-4 py-3 text-sm">117-3566-Bm7-081 (50018524)</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1945</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Tahir Naveed</td>
                          <td class="px-4 py-3 text-sm">Dr. Iqrar Ahmad Rana </td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">141</td>
                          <td class="px-4 py-3 text-sm">117-1044-Bm7-168 (50019009)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1189</td>
                          <td class="px-4 py-3 text-sm">Mr. Usman Saeed</td>
                          <td class="px-4 py-3 text-sm">Dr. Iqrar Ahmad Rana </td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">142</td>
                          <td class="px-4 py-3 text-sm">213-66222-2BM2-205 (50025417)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1729</td>
                          <td class="px-4 py-3 text-sm">Ms. Saher Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Ghulam Mustafa</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                          <td class="px-4 py-3 text-sm">CABB</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">143</td>
                          <td class="px-4 py-3 text-sm">315-17958-2BS3-184</td>
                          <td class="px-4 py-3 text-sm">2011-ag-4050</td>
                          <td class="px-4 py-3 text-sm">Ms. Noor Younis</td>
                          <td class="px-4 py-3 text-sm">Dr. Asma Lohdhi</td>
                          <td class="px-4 py-3 text-sm">Home Sciences</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">144</td>
                          <td class="px-4 py-3 text-sm">112-21441-2Av1-045 (50021016)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1109</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Jawad Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Masood Sadiq Butt</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">145</td>
                          <td class="px-4 py-3 text-sm">112-24768-2Av1-253 (50021099)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1654</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Sham Younas</td>
                          <td class="px-4 py-3 text-sm">Dr. Masood Sadiq Butt</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">146</td>
                          <td class="px-4 py-3 text-sm">112-33110-2Av1-041 (50021347)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-1942</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Sajid Manzoor</td>
                          <td class="px-4 py-3 text-sm">Dr. Imran Pasha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">147</td>
                          <td class="px-4 py-3 text-sm">112-33291-2Av1-055 (50021697)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-1293</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asif</td>
                          <td class="px-4 py-3 text-sm">Dr. Nuzhat Huma</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">148</td>
                          <td class="px-4 py-3 text-sm">112-29985-2Av1-066 (50021392)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-1842</td>
                          <td class="px-4 py-3 text-sm">Mr. Abdullah Salik</td>
                          <td class="px-4 py-3 text-sm">Dr. Imran Pasha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">149</td>
                          <td class="px-4 py-3 text-sm">112-24600-2Av1-027 (50022382)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2448</td>
                          <td class="px-4 py-3 text-sm">Miss Nazia Khalid</td>
                          <td class="px-4 py-3 text-sm">Prof.Dr. Tahir Zahoor</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">150</td>
                          <td class="px-4 py-3 text-sm">213-66134-2AV2-027 (50025740)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-2109</td>
                          <td class="px-4 py-3 text-sm">Miss Saima Naz</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Asim Shabbir</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">151</td>
                          <td class="px-4 py-3 text-sm">213-53267-2AV2-055</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2263</td>
                          <td class="px-4 py-3 text-sm">Mr. Aamir Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Tahir Zahoor</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">152</td>
                          <td class="px-4 py-3 text-sm">213-62684-2AV2-065</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2033</td>
                          <td class="px-4 py-3 text-sm">Miss Mahwish Tanveer</td>
                          <td class="px-4 py-3 text-sm">Dr. Aamir Shehzad</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">153</td>
                          <td class="px-4 py-3 text-sm">213-57001-2AV2-138 (50025731)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-1547</td>
                          <td class="px-4 py-3 text-sm">Miss Naila Siraj</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Asim Shabbir</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">154</td>
                          <td class="px-4 py-3 text-sm">213-58722-2AV2-074 (50025652)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2266</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asim Irshad</td>
                          <td class="px-4 py-3 text-sm">Dr. Ali Asghar</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">155</td>
                          <td class="px-4 py-3 text-sm">213-66736-2AV2-146 (50025772)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1080</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Nadeem</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Atif Randhawa</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">156</td>
                          <td class="px-4 py-3 text-sm">213-61916-2AV2-148 (50025706)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1073</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Farhan Jahangir Chughtai</td>
                          <td class="px-4 py-3 text-sm">Dr. Imran Pasha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">157</td>
                          <td class="px-4 py-3 text-sm">213-63088-2AV2-150</td>
                          <td class="px-4 py-3 text-sm">2014-ag-8045</td>
                          <td class="px-4 py-3 text-sm">Mr. Imran Muzaffar</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Atif Randhawa</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">158</td>
                          <td class="px-4 py-3 text-sm">213-66732-2AV2-082</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1950</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Sohail</td>
                          <td class="px-4 py-3 text-sm">Dr. Allah Rakha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">159</td>
                          <td class="px-4 py-3 text-sm">213-58842-2AV2-132</td>
                          <td class="px-4 py-3 text-sm">2013-ag-773</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhamamd Azhar Iqbal</td>
                          <td class="px-4 py-3 text-sm">Dr. Aysha Sameen</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">160</td>
                          <td class="px-4 py-3 text-sm">213-66608-2AV2-097</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2386</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Arsalan Mahmood</td>
                          <td class="px-4 py-3 text-sm">Dr. Allah Rakha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">161</td>
                          <td class="px-4 py-3 text-sm">213-64274-2AV2-111 (50025789)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2529</td>
                          <td class="px-4 py-3 text-sm">Mr. Muneeb Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Issa Khan</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">162</td>
                          <td class="px-4 py-3 text-sm">074-2041-Av4-169 (50008887)</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1814</td>
                          <td class="px-4 py-3 text-sm">Miss Rabia Naz</td>
                          <td class="px-4 py-3 text-sm">Dr Faqir M. Anjum / DG NIFSAT</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">163</td>
                          <td class="px-4 py-3 text-sm">074-2867-Av4-130</td>
                          <td class="px-4 py-3 text-sm">97-ag-1355</td>
                          <td class="px-4 py-3 text-sm">Ms. Aneela Hameed</td>
                          <td class="px-4 py-3 text-sm">Dr. Faqir Muhammad Anjum</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">164</td>
                          <td class="px-4 py-3 text-sm">085-40184-Av5-059</td>
                          <td class="px-4 py-3 text-sm">97-ag-1370</td>
                          <td class="px-4 py-3 text-sm">Miss Rabia Shabir Ahmad</td>
                          <td class="px-4 py-3 text-sm">Dr. Maqsood Sadiq Butt</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">165</td>
                          <td class="px-4 py-3 text-sm">106-1884-Av6-052</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1556</td>
                          <td class="px-4 py-3 text-sm">Miss Ambreen Naz</td>
                          <td class="px-4 py-3 text-sm">Dr. Masood Sadiq Butt</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">166</td>
                          <td class="px-4 py-3 text-sm">106-1954-Av6-119</td>
                          <td class="px-4 py-3 text-sm">2003-ag-1921</td>
                          <td class="px-4 py-3 text-sm">Ms. Mahwish Aziz </td>
                          <td class="px-4 py-3 text-sm">Dr. Imran Pasha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">167</td>
                          <td class="px-4 py-3 text-sm">213-56785-2Av2-172 (50025783)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1057</td>
                          <td class="px-4 py-3 text-sm">Miss Summer Rashid</td>
                          <td class="px-4 py-3 text-sm">Dr. Allah Rakha</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">168</td>
                          <td class="px-4 py-3 text-sm">315-15854-2AV3-086 (50033823)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-2482</td>
                          <td class="px-4 py-3 text-sm">Ms. Sadia Aslam</td>
                          <td class="px-4 py-3 text-sm">Dr. Rizwan Shukat</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">169</td>
                          <td class="px-4 py-3 text-sm">315-20594-2AV3-119 (50033850)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-820</td>
                          <td class="px-4 py-3 text-sm">Ms. Sajeela Akram</td>
                          <td class="px-4 py-3 text-sm">Dr. Akmal Nazir</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">170</td>
                          <td class="px-4 py-3 text-sm">315-17358-2AV3-094 (50033830)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-1783</td>
                          <td class="px-4 py-3 text-sm">Hafiz Ubaid ur Rahman</td>
                          <td class="px-4 py-3 text-sm">Dr. Amna Sahar</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">171</td>
                          <td class="px-4 py-3 text-sm">315-6948-2AV3-033 (50033780)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-783</td>
                          <td class="px-4 py-3 text-sm">Mr. Wahab Ali Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. Masood Sadiq Butt</td>
                          <td class="px-4 py-3 text-sm">National Institute of Food Science &amp; Technology</td>
                          <td class="px-4 py-3 text-sm">Food Nutrition and Home Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">172</td>
                          <td class="px-4 py-3 text-sm">112-22368-2Ps1-272 (50022280)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-587</td>
                          <td class="px-4 py-3 text-sm">Ms. Aisha Tahir </td>
                          <td class="px-4 py-3 text-sm">Dr. Amer Jamil</td>
                          <td class="px-4 py-3 text-sm">Biochemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">173</td>
                          <td class="px-4 py-3 text-sm">112-25747-2Bm1-519 (50022555)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-42</td>
                          <td class="px-4 py-3 text-sm">Ms. Zinayyera Subhani</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Shahid</td>
                          <td class="px-4 py-3 text-sm">Biochemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">174</td>
                          <td class="px-4 py-3 text-sm">106-1478-Bm6-061</td>
                          <td class="px-4 py-3 text-sm">2001-ag-414</td>
                          <td class="px-4 py-3 text-sm">Miss Hina Shahzadi</td>
                          <td class="px-4 py-3 text-sm">Dr. Munir Ahmad Sheikh</td>
                          <td class="px-4 py-3 text-sm">Biochemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">175</td>
                          <td class="px-4 py-3 text-sm">112-22606-2Bm1-273 (50022785)</td>
                          <td class="px-4 py-3 text-sm">97-ag-1675</td>
                          <td class="px-4 py-3 text-sm">Mr. Ijaz Ahmad Bhagat</td>
                          <td class="px-4 py-3 text-sm">Dr. Mumtaz Hussain</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">176</td>
                          <td class="px-4 py-3 text-sm">213-66038-2BM2-055 (50025428)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-596</td>
                          <td class="px-4 py-3 text-sm">Miss Sumreen Anjum</td>
                          <td class="px-4 py-3 text-sm">Dr. Mumtaz Hussain</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">177</td>
                          <td class="px-4 py-3 text-sm">074-0161-Bm4-197</td>
                          <td class="px-4 py-3 text-sm">2007-ag-157</td>
                          <td class="px-4 py-3 text-sm">Mr. Wasim Abbas</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashraf</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">178</td>
                          <td class="px-4 py-3 text-sm">074-1759-Bm4-109</td>
                          <td class="px-4 py-3 text-sm">2004-ag-17</td>
                          <td class="px-4 py-3 text-sm">Miss Sibgha Noreen</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashraf</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">179</td>
                          <td class="px-4 py-3 text-sm">106-1706-Bm6-110</td>
                          <td class="px-4 py-3 text-sm">2005-ag-447</td>
                          <td class="px-4 py-3 text-sm">Miss Noreen Akhter </td>
                          <td class="px-4 py-3 text-sm">Dr. Mansoor Hameed</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">180</td>
                          <td class="px-4 py-3 text-sm">106-1586-Bm6-082</td>
                          <td class="px-4 py-3 text-sm">2005-ag-462</td>
                          <td class="px-4 py-3 text-sm">Miss Hira Attaullah</td>
                          <td class="px-4 py-3 text-sm">Dr. Farrukh Javed/ Chairman</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">181</td>
                          <td class="px-4 py-3 text-sm">106-1891-Bm6-073</td>
                          <td class="px-4 py-3 text-sm">2002-ag-1057</td>
                          <td class="px-4 py-3 text-sm">Ms. Aisha Ilyas</td>
                          <td class="px-4 py-3 text-sm">Dr. Mumtaz Hussain </td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">182</td>
                          <td class="px-4 py-3 text-sm">106-2078-Bm6-120</td>
                          <td class="px-4 py-3 text-sm">2004-ag-20</td>
                          <td class="px-4 py-3 text-sm">Ms. Shamyla Nawazish</td>
                          <td class="px-4 py-3 text-sm">Dr. Mumtaz Hussain </td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">183</td>
                          <td class="px-4 py-3 text-sm">106-1634-BM6-102 (50016273)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-456</td>
                          <td class="px-4 py-3 text-sm">Miss Hina Kanwal</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashraf</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">184</td>
                          <td class="px-4 py-3 text-sm">117-6286-Bm7-117 (50018710)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-485</td>
                          <td class="px-4 py-3 text-sm">Miss Zohra Kabir</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Wahid</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">185</td>
                          <td class="px-4 py-3 text-sm">117-12620-Bm7-197 (50019153)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-604</td>
                          <td class="px-4 py-3 text-sm">Miss Asma Hanif</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Wahid</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">186</td>
                          <td class="px-4 py-3 text-sm">117-12377-BM7-196 (50019141)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-625</td>
                          <td class="px-4 py-3 text-sm">Ms. Sadia Noureen Zafar</td>
                          <td class="px-4 py-3 text-sm">Dr. Farrukh Javed</td>
                          <td class="px-4 py-3 text-sm">Botany</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">187</td>
                          <td class="px-4 py-3 text-sm">213-64472-2BM2-020 (50025414)</td>
                          <td class="px-4 py-3 text-sm">2013-ag-61</td>
                          <td class="px-4 py-3 text-sm">Miss Sahar Mumtaz</td>
                          <td class="px-4 py-3 text-sm">Dr. Mansoor Hameed</td>
                          <td class="px-4 py-3 text-sm">Botany </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">188</td>
                          <td class="px-4 py-3 text-sm">213-66094-2Bm2-178 (50025370)</td>
                          <td class="px-4 py-3 text-sm">2014-ag-823</td>
                          <td class="px-4 py-3 text-sm">Miss Kanval Shaukat</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Wahid</td>
                          <td class="px-4 py-3 text-sm">Botany </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">189</td>
                          <td class="px-4 py-3 text-sm">063-171323-Bm3-061</td>
                          <td class="px-4 py-3 text-sm">2003-ag-284</td>
                          <td class="px-4 py-3 text-sm">Yusra safa</td>
                          <td class="px-4 py-3 text-sm">Dr. Haq Nawaz Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">190</td>
                          <td class="px-4 py-3 text-sm">063-171098-Ps3-079</td>
                          <td class="px-4 py-3 text-sm">2003-ag-284</td>
                          <td class="px-4 py-3 text-sm">Misbah Sultan</td>
                          <td class="px-4 py-3 text-sm">Dr. Haq Nawaz Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">191</td>
                          <td class="px-4 py-3 text-sm">112-35054-2PS1-089 (50021365)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-172</td>
                          <td class="px-4 py-3 text-sm">Ms. Aqsa Habib</td>
                          <td class="px-4 py-3 text-sm">Dr. Haq Nawaz Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">192</td>
                          <td class="px-4 py-3 text-sm">112-25283-2Ps1-103 (50021406)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-1532</td>
                          <td class="px-4 py-3 text-sm">Ms. Rizwan Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Bushra Sultana</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">193</td>
                          <td class="px-4 py-3 text-sm">112-32935-2Ps1-087 (50021468)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-817</td>
                          <td class="px-4 py-3 text-sm">Mr. Zohaib Zafar</td>
                          <td class="px-4 py-3 text-sm">Dr. Bushra Sultana</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">194</td>
                          <td class="px-4 py-3 text-sm">112-23075-2Ps1-016 (50021672)</td>
                          <td class="px-4 py-3 text-sm">2012-ag-1527</td>
                          <td class="px-4 py-3 text-sm">Ms. Ayesha Riaz</td>
                          <td class="px-4 py-3 text-sm">Dr. Haq Nawaz Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">195</td>
                          <td class="px-4 py-3 text-sm">112-35289-2Ps1-041 (50021807)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-703</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asif Tahir</td>
                          <td class="px-4 py-3 text-sm">Dr. Haq Nawaz Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">196</td>
                          <td class="px-4 py-3 text-sm">112-29476-2Ps1-481 (50021997)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-615</td>
                          <td class="px-4 py-3 text-sm">Mr. Qaisar Manzoor</td>
                          <td class="px-4 py-3 text-sm">Dr. Raja Adil Sarfraz</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">197</td>
                          <td class="px-4 py-3 text-sm">112-22085-2PS1-667 (50022446)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-734</td>
                          <td class="px-4 py-3 text-sm">Mr. Abdul Khaliq</td>
                          <td class="px-4 py-3 text-sm">Dr. Shaukat Ali</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">198</td>
                          <td class="px-4 py-3 text-sm">213-56141-2PS2-007 (50024262)</td>
                          <td class="px-4 py-3 text-sm">2013-ag-991</td>
                          <td class="px-4 py-3 text-sm">Miss Tehreem Naz</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Abid Rashid</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">199</td>
                          <td class="px-4 py-3 text-sm">213-53340-2Ps2-042 (50024267)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-613</td>
                          <td class="px-4 py-3 text-sm">Miss Sadia Noor</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Abid Rashid</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">200</td>
                          <td class="px-4 py-3 text-sm">213-64254-2PS2-043 (50027476)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-651</td>
                          <td class="px-4 py-3 text-sm">Miss Misbah</td>
                          <td class="px-4 py-3 text-sm"> Prof. Dr. Ijaz Ahmad Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">201</td>
                          <td class="px-4 py-3 text-sm">085-13101-Ps5-226 (50014028)</td>
                          <td class="px-4 py-3 text-sm">2009-ag-1484</td>
                          <td class="px-4 py-3 text-sm">Ms. Asma Tabasum</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Zahid</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">202</td>
                          <td class="px-4 py-3 text-sm">085-12794-Ps5-169</td>
                          <td class="px-4 py-3 text-sm">2004-ag-390</td>
                          <td class="px-4 py-3 text-sm">Mr. Umer Farooq </td>
                          <td class="px-4 py-3 text-sm">Dr. Ijaz Ahmad Bhatti</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">203</td>
                          <td class="px-4 py-3 text-sm">117-6622-Ps7-081 (50018737)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-414</td>
                          <td class="px-4 py-3 text-sm">Miss Aisha Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr Raja Adil Surfraz</td>
                          <td class="px-4 py-3 text-sm">Chemistry </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">204</td>
                          <td class="px-4 py-3 text-sm">213-52966-2PS2-153 (50024364)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-165</td>
                          <td class="px-4 py-3 text-sm">Ms. Humaima Saeed</td>
                          <td class="px-4 py-3 text-sm">Dr. Yasir Jamil</td>
                          <td class="px-4 py-3 text-sm">Physics</td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">205</td>
                          <td class="px-4 py-3 text-sm">112-22629-2Bm1-003 (50021399)</td>
                          <td class="px-4 py-3 text-sm">2011-ag-647</td>
                          <td class="px-4 py-3 text-sm">Ms. Rubina Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. Abdul Mateen</td>
                          <td class="px-4 py-3 text-sm">Zoology, Wildlife &amp; Fisheries </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">206</td>
                          <td class="px-4 py-3 text-sm">112-24492-2Bm1-389 (50021709)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-184</td>
                          <td class="px-4 py-3 text-sm">Ms. Nadia Nazish</td>
                          <td class="px-4 py-3 text-sm">Dr. Khalid Abbas</td>
                          <td class="px-4 py-3 text-sm">Zoology, Wildlife &amp; Fisheries </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">207</td>
                          <td class="px-4 py-3 text-sm">106-1564-Bm6-129 (50016376)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-334</td>
                          <td class="px-4 py-3 text-sm">Ms. Sajida Mushtaq</td>
                          <td class="px-4 py-3 text-sm">Dr. Shehnaz A. Rana </td>
                          <td class="px-4 py-3 text-sm">Zoology, Wildlife &amp; Fisheries </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">208</td>
                          <td class="px-4 py-3 text-sm">063-171608-Bm3-033</td>
                          <td class="px-4 py-3 text-sm">2003-ag-455</td>
                          <td class="px-4 py-3 text-sm">Hamda Azmat</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Javed</td>
                          <td class="px-4 py-3 text-sm">Zoology, Wildlife &amp; Fisheries </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">209</td>
                          <td class="px-4 py-3 text-sm">063-171664-Bm3-042</td>
                          <td class="px-4 py-3 text-sm">2003-ag-61</td>
                          <td class="px-4 py-3 text-sm">Ghazala Jabeen</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Javed</td>
                          <td class="px-4 py-3 text-sm">Zoology, Wildlife &amp; Fisheries </td>
                          <td class="px-4 py-3 text-sm">Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">210</td>
                          <td class="px-4 py-3 text-sm">315-1587-2SS3-012 (50034793)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1733</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Ali Imran</td>
                          <td class="px-4 py-3 text-sm">Dr. Asghar Ali</td>
                          <td class="px-4 py-3 text-sm">Agricultural &amp; Resource Economics </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">211</td>
                          <td class="px-4 py-3 text-sm">112-27408-2SS1-257 (50021036)</td>
                          <td class="px-4 py-3 text-sm">2005-ag-2116</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Faisal Ali</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq</td>
                          <td class="px-4 py-3 text-sm">Agricultural &amp; Resource Economics </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">212</td>
                          <td class="px-4 py-3 text-sm">213-59318-2SS2-088</td>
                          <td class="px-4 py-3 text-sm">2009-ag-2318</td>
                          <td class="px-4 py-3 text-sm">Miss Arifa Zaib</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Khalid Bashir</td>
                          <td class="px-4 py-3 text-sm">Agricultural &amp; Resource Economics </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">213</td>
                          <td class="px-4 py-3 text-sm">213-67150-2SS2-160 (50024763)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1999</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Asad ur Rehman Naseer</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq</td>
                          <td class="px-4 py-3 text-sm">Agricultural &amp; Resource Economics </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">214</td>
                          <td class="px-4 py-3 text-sm">213-62726-2SS2-193 (50024520)</td>
                          <td class="px-4 py-3 text-sm">2014-ag-2677</td>
                          <td class="px-4 py-3 text-sm">Miss Mahreen Alam</td>
                          <td class="px-4 py-3 text-sm">Dr. Muhammad Ashfaq</td>
                          <td class="px-4 py-3 text-sm">Agricultural &amp; Resource Economics </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">215</td>
                          <td class="px-4 py-3 text-sm">112-24139-2Av1-001 (50021445)</td>
                          <td class="px-4 py-3 text-sm">2013-ag-65</td>
                          <td class="px-4 py-3 text-sm">Ms. Fazia Munazir</td>
                          <td class="px-4 py-3 text-sm">Dr. Tanvir Ali</td>
                          <td class="px-4 py-3 text-sm">Agricultural Extension &amp; Rural Development</td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">216</td>
                          <td class="px-4 py-3 text-sm">112-23252-2Av1-125 (50022880)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-39</td>
                          <td class="px-4 py-3 text-sm">Mr. Aamir Raza</td>
                          <td class="px-4 py-3 text-sm">Dr. Munir Ahmad</td>
                          <td class="px-4 py-3 text-sm">Agricultural Extension &amp; Rural Development</td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">217</td>
                          <td class="px-4 py-3 text-sm">315-8654-2SS3-074 (50034843)</td>
                          <td class="px-4 py-3 text-sm">2008-ag-904</td>
                          <td class="px-4 py-3 text-sm">Mr. Haroon Yousaf</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Iqbal Zafar</td>
                          <td class="px-4 py-3 text-sm">Rural Sociology </td>
                          <td class="px-4 py-3 text-sm">Social Sciences</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">218</td>
                          <td class="px-4 py-3 text-sm">112-30908-2BM1-021 (50021529)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1072</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Adnan Ashraf</td>
                          <td class="px-4 py-3 text-sm">Dr. Imran Arshad</td>
                          <td class="px-4 py-3 text-sm">Microbiology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">219</td>
                          <td class="px-4 py-3 text-sm">106-1830-Bm6-103</td>
                          <td class="px-4 py-3 text-sm">92-ag-933</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Yousaf Khan</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Shahid Mahmood </td>
                          <td class="px-4 py-3 text-sm">Microbiology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">220</td>
                          <td class="px-4 py-3 text-sm">112-31696-2AV1-209 (50022558)</td>
                          <td class="px-4 py-3 text-sm">2004-ag-1680</td>
                          <td class="px-4 py-3 text-sm">Mr. Muhammad Sohaib Aslam</td>
                          <td class="px-4 py-3 text-sm">Prof. Dr. Muhammad Tariq Javed</td>
                          <td class="px-4 py-3 text-sm">Pathology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">221</td>
                          <td class="px-4 py-3 text-sm">063-122210-Av3-018</td>
                          <td class="px-4 py-3 text-sm">2000-ag-695</td>
                          <td class="px-4 py-3 text-sm">Zahoor ul Hassan</td>
                          <td class="px-4 py-3 text-sm">Dr. M. Zargham Khan</td>
                          <td class="px-4 py-3 text-sm">Pathology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">222</td>
                          <td class="px-4 py-3 text-sm">112-32443-2Av1-047 (50021705)</td>
                          <td class="px-4 py-3 text-sm">2007-ag-1556</td>
                          <td class="px-4 py-3 text-sm">Ms. Humaira Muzaffar</td>
                          <td class="px-4 py-3 text-sm">Dr. Tanweer Khaliq</td>
                          <td class="px-4 py-3 text-sm">Pharmacy, Physiology &amp; Pharmacology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">223</td>
                          <td class="px-4 py-3 text-sm">213-58222-2BM2-162 (50025211)</td>
                          <td class="px-4 py-3 text-sm">2014-ag-1757</td>
                          <td class="px-4 py-3 text-sm">Miss Zulfia Hussain</td>
                          <td class="px-4 py-3 text-sm">Dr. Junaid Ali Khan</td>
                          <td class="px-4 py-3 text-sm">Pharmacy, Physiology &amp; Pharmacology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>
                        <tr class="hover:bg-blue-50 transition">
                          <td class="px-4 py-3 text-sm">224</td>
                          <td class="px-4 py-3 text-sm">112-34911-2Av1-119 (50021011)</td>
                          <td class="px-4 py-3 text-sm">2006-ag-1137</td>
                          <td class="px-4 py-3 text-sm">Mr. Qudrat Ullah</td>
                          <td class="px-4 py-3 text-sm">Dr. Huma Jamil </td>
                          <td class="px-4 py-3 text-sm">Theriogenology</td>
                          <td class="px-4 py-3 text-sm">Veterinary Science</td>
                        </tr>




                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

              <!-- Downloads Section -->
              <div id="phd-downloads" class="phd-section hidden">
                <div
                  class="bg-gradient-to-r from-blue-50 to-indigo-50  border border-blue-200 text-black p-6 rounded-lg shadow-lg">
                  <h4 class="text-2xl font-semibold mb-4">
                    <i class="fas fa-download mr-2"></i>Downloads
                  </h4>
                  <p class="mb-6">Download essential forms and documents for PhD Indigenous Scholarship program:</p>

                  <div class="grid md:grid-cols-2 gap-4">
                    <a href="../assets/files/research/Phd/Departmental_proforma.docx"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Departmental Proforma</span>
                    </a>

                    <a href="../assets/files/research/Phd/Expenditure_statement.docx"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Expenditure Statement</span>
                    </a>


                    <a href="../assets/files/research/Phd/Financial_calculations.docx"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Financial Calculations</span>
                    </a>

                    <a href="../assets/files/research/Phd/INFORMATION_REQUIRED_ON_COMPLETION_ON_PHD.doc"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Info Required on PhD Completion</span>
                    </a>

                    <a href="../assets/files/research/Phd/PCD_ProformaNew.pdf" target="_blank"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-pdf text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">PCD Proforma New</span>
                    </a>

                    <a href="../assets/files/research/Phd/Performa_for_Extension_in_PhD_Duration_New.doc"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Extension in PhD Duration</span>
                    </a>

                    <a href="../assets/files/research/Phd/Progress_report.docx"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Progress Report</span>
                    </a>

                    <a href="../assets/files/research/Phd/Purchase_of_Laptop_for_HEC_Scholars.docx"
                      class="flex items-center bg-blue-500 text-white p-4 rounded-lg hover:shadow-xl transition group">
                      <i class="fas fa-file-word text-3xl mr-4 group-hover:scale-110 transition"></i>
                      <span class="font-medium">Purchase of Laptop for HEC Scholars</span>
                    </a>
                  </div>
                </div>
              </div>

            </div>
          </div>

          <!-- SOPs for Research Execution Tab -->
          <div id="sops" class="tab-content-panel hidden">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-clipboard-list mr-2"></i>SOPs for Smooth Execution of Research Projects
            </h3>

            <div class="mb-6">
              <div class="bg-gradient-to-r from-green-50 to-teal-50 p-4 rounded-lg mb-6 border-l-4 border-green-500">
                <p class="text-gray-700 leading-relaxed">
                  <strong>Notification No.16-200/ORIC, Dated: 04-01-2021</strong><br />
                  The Vice Chancellor has approved comprehensive SOPs for research projects to ensure smooth execution
                  and compliance with all regulations.
                </p>
              </div>

              <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                <i class="fas fa-list-ol mr-2"></i>Key Guidelines:
              </h4>

              <div class="space-y-4">
                <div class="bg-white border-l-4 border-blue-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">1. Project Submission</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    All projects except PSDP and ADP must be submitted through ORIC. One copy should be sent to
                    ORIC in advance for processing while one through Chairman/Deans/Directors.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-purple-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">2. Project Tracking System</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    ORIC maintains a website with project tracking system where latest status is available.
                    Researchers can get first-hand information about their projects.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-green-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">3. Financial Management</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Process of account opening will be completed at the earliest by Treasurer's Office.
                    PI/TL/PM shall be intimated about receipt of funds within minimum possible time.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-yellow-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">4. Procurement Process</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Items up to Rs. 500,000 can be purchased directly from authorized stores.
                    All PPRA and financial rules will be followed in letter and spirit.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-red-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">5. Staff Recruitment</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Selection Committee will recommend two candidates (Principal and Alternate).
                    Proper advertisement process through ORIC with clear salary indication required.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-indigo-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">6. Reporting Requirements</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Technical reports submitted directly to ORIC. Final reports require Vice Chancellor approval.
                    Quarterly/six-monthly expenditure reconciliation mandatory.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-pink-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">7. Assets Management</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Permanent assets purchased from project funds shall be book-transferred to the department/institute.
                    Information shared with ORIC and Treasurer for record.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-teal-500 p-4 rounded shadow-sm">
                  <h5 class="font-semibold text-gray-800 mb-2">8. Commercialization</h5>
                  <p class="text-gray-700 text-sm text-justify">
                    Prior permission from ORIC required to disclose innovative process/product.
                    Expert committee evaluation needed before commercialization.
                  </p>
                </div>
              </div>

              <div class="bg-gray-100 p-5 rounded-lg mt-6 border border-gray-300">
                <p class="text-gray-700 text-sm">
                  <i class="fas fa-download mr-2 text-blue-600"></i>
                  For complete detailed SOPs document, please contact ORIC or download from the university portal.
                </p>
              </div>
            </div>
          </div>

          <!-- Bridge Financing Tab -->
          <div id="bridge" class="tab-content-panel hidden">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-bridge mr-2"></i>Bridge Financing for Research Projects
            </h3>

            <div class="mb-6">
              <div
                class="bg-gradient-to-r from-orange-50 to-red-50 p-6 rounded-lg mb-6 border-l-4 border-orange-500 shadow-md">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-hands-helping mr-2"></i>What is Bridge Financing?
                </h4>
                <p class="text-gray-700 leading-relaxed text-justify">
                  To facilitate researchers and mitigate the uncertainty in the rate of foreign currency, ORIC will
                  allocate a sizeable budget for financial support in case the purchase of equipment is disturbed due
                  to price hike. Necessary compensation may be provided as financial support to ensure research
                  activities continue without interruption.
                </p>
              </div>

              <div class="grid md:grid-cols-2 gap-6 my-6">
                <div class="bg-white p-6 rounded-lg shadow-lg border-t-4 border-blue-500">
                  <div class="text-center mb-4">
                    <i class="fas fa-shield-alt text-5xl text-blue-500"></i>
                  </div>
                  <h5 class="font-semibold text-[#1a4d7c] text-center mb-3">Purpose</h5>
                  <ul class="text-gray-700 space-y-2 text-sm">
                    <li><i class="fas fa-check-circle text-green-500 mr-2"></i>Cover price fluctuations</li>
                    <li><i class="fas fa-check-circle text-green-500 mr-2"></i>Mitigate currency exchange risks</li>
                    <li><i class="fas fa-check-circle text-green-500 mr-2"></i>Ensure equipment procurement</li>
                    <li><i class="fas fa-check-circle text-green-500 mr-2"></i>Support ongoing research</li>
                  </ul>
                </div>

                <div class="bg-white p-6 rounded-lg shadow-lg border-t-4 border-purple-500">
                  <div class="text-center mb-4">
                    <i class="fas fa-users text-5xl text-purple-500"></i>
                  </div>
                  <h5 class="font-semibold text-[#1a4d7c] text-center mb-3">Evaluation Committee</h5>
                  <ul class="text-gray-700 space-y-2 text-sm">
                    <li><i class="fas fa-user-tie text-blue-500 mr-2"></i>Director ORIC</li>
                    <li><i class="fas fa-user-tie text-blue-500 mr-2"></i>Director P&D</li>
                    <li><i class="fas fa-user-tie text-blue-500 mr-2"></i>Director DPIC</li>
                    <li><i class="fas fa-user-tie text-blue-500 mr-2"></i>Treasurer UAF</li>
                  </ul>
                </div>
              </div>

              <div class="bg-blue-50 border-2 border-blue-300 p-5 rounded-lg">
                <h5 class="font-semibold text-blue-800 mb-3">
                  <i class="fas fa-file-alt mr-2"></i>Application Process:
                </h5>
                <ol class="list-decimal list-inside space-y-2 text-gray-700 ml-4">
                  <li>Submit request to ORIC with detailed justification</li>
                  <li>Provide evidence of price increase or currency fluctuation</li>
                  <li>Include original budget and revised cost estimates</li>
                  <li>Evaluation committee reviews the request</li>
                  <li>Recommendation forwarded to Vice Chancellor for final approval</li>
                  <li>Upon approval, bridge financing is provided</li>
                </ol>
              </div>

              <div class="bg-yellow-50 border-l-4 border-yellow-500 p-4 rounded-lg mt-6">
                <p class="text-gray-700">
                  <i class="fas fa-info-circle text-yellow-600 mr-2"></i>
                  <strong>Note:</strong> Researchers may avail this facility in case of uncertain situations.
                  The facility is designed to ensure research continuity and project success.
                </p>
              </div>
            </div>
          </div>

          <!-- Partial Support Tab -->
          <div id="partial" class="tab-content-panel hidden">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-hands-helping mr-2"></i>Partial Research Support To Postgraduate Students
            </h3>

            <div class="mb-6">
              <img src="../assets/img/RnD/SOP.Funding/SOP%20Funding.jpg" alt="Partial Support"
                class="service-img w-full mb-6 shadow-lg rounded-lg" />

              <div
                class="bg-gradient-to-r from-teal-50 to-cyan-50 p-6 rounded-lg mb-6 border-l-4 border-teal-500 shadow-md">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">Introduction</h4>
                <p class="text-gray-700 leading-relaxed text-justify">
                  The Vice Chancellor, University of Agriculture, Faisalabad (UAF) has authorized Office of Research
                  Innovation and Commercialization (ORIC) to extend Partial Research Support to Postgraduate students
                  on case to case basis through a committee after passing through a rigorous evaluation process followed
                  by presentation by the applicant.
                </p>
              </div>

              <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3 mt-6">
                <i class="fas fa-clipboard-check mr-2"></i>Standard Operating Procedures:
              </h4>

              <div class="space-y-4">
                <div class="bg-white border-l-4 border-green-500 p-4 rounded-lg shadow-sm">
                  <div class="flex items-start">
                    <span
                      class="flex-shrink-0 w-8 h-8 bg-green-100 rounded-full flex items-center justify-center text-green-600 font-bold mr-3">1</span>
                    <div>
                      <h5 class="font-semibold text-gray-800 mb-1">Application Timeline</h5>
                      <p class="text-gray-700 text-sm text-justify">
                        M.Phil and MS/M.Sc.(Hons.) students should apply in the 3rd Semester. PhD scholars should
                        apply during the planning of thesis research on the prescribed proforma designed by ORIC.
                      </p>
                    </div>
                  </div>
                </div>

                <div class="bg-white border-l-4 border-blue-500 p-4 rounded-lg shadow-sm">
                  <div class="flex items-start">
                    <span
                      class="flex-shrink-0 w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center text-blue-600 font-bold mr-3">2</span>
                    <div>
                      <h5 class="font-semibold text-gray-800 mb-1">Priority</h5>
                      <p class="text-gray-700 text-sm text-justify">
                        Partial Research Support may be extended to postgraduate students while preference may be
                        given to PhD scholars demonstrating high research impact potential.
                      </p>
                    </div>
                  </div>
                </div>

                <div class="bg-white border-l-4 border-purple-500 p-4 rounded-lg shadow-sm">
                  <div class="flex items-start">
                    <span
                      class="flex-shrink-0 w-8 h-8 bg-purple-100 rounded-full flex items-center justify-center text-purple-600 font-bold mr-3">3</span>
                    <div>
                      <h5 class="font-semibold text-gray-800 mb-1">Supervisor Role</h5>
                      <p class="text-gray-700 text-sm text-justify">
                        The supervisor of the student winning Partial Research Support will not designate him/herself
                        as Principal Investigator of the project to maintain objectivity.
                      </p>
                    </div>
                  </div>
                </div>

                <div class="bg-white border-l-4 border-orange-500 p-4 rounded-lg shadow-sm">
                  <div class="flex items-start">
                    <span
                      class="flex-shrink-0 w-8 h-8 bg-orange-100 rounded-full flex items-center justify-center text-orange-600 font-bold mr-3">4</span>
                    <div>
                      <h5 class="font-semibold text-gray-800 mb-1">Evaluation Process</h5>
                      <p class="text-gray-700 text-sm text-justify">
                        A high profile committee (approved by the Vice Chancellor) comprising representatives from
                        all faculties will evaluate applications through screening process followed by presentations.
                      </p>
                    </div>
                  </div>
                </div>

                <div class="bg-white border-l-4 border-red-500 p-4 rounded-lg shadow-sm">
                  <div class="flex items-start">
                    <span
                      class="flex-shrink-0 w-8 h-8 bg-red-100 rounded-full flex items-center justify-center text-red-600 font-bold mr-3">5</span>
                    <div>
                      <h5 class="font-semibold text-gray-800 mb-1">Funding Scope</h5>
                      <p class="text-gray-700 text-sm text-justify">
                        Funds (Partial Research Support) may only be provided for consumables on rationalized grounds.
                        Detailed budget justification required.
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div
                class="bg-gradient-to-r from-blue-50 to-indigo-50  border border-blue-200 text-black p-6 rounded-lg mt-6 shadow-lg">
                <h5 class="font-semibold text-black mb-3 text-lg">
                  <i class="fas fa-download mr-2"></i>Required Documents:
                </h5>
            
                <ul class="space-y-2 text-black">
                  <li><i class="fas fa-file-alt mr-2"></i>Completed application form (ORIC proforma)</li>
                  <li><i class="fas fa-chart-line mr-2"></i>Current research status and CGPA</li>
                  <li><i class="fas fa-users mr-2"></i>List of all students with supervisors</li>
                  <li><i class="fas fa-lightbulb mr-2"></i>Impact assessment and research outcomes</li>
                  <li><i class="fas fa-signature mr-2"></i>Supervisor's endorsement</li>
                </ul>
                <a href="../assets/files/Proforma/Partial%20Support%20Proforma.docx"
                  class="inline-block mt-4 bg-blue-500 text-white text-black px-6 py-2 rounded-lg font-semibold  transition transform hover:shadow-2xl hover:-translate-y-1 hover:scale-105 group">
                  <i class="fas fa-download mr-2"></i>Download Application Form
                </a>
              </div>
            </div>
          </div>

    </div>
  </div>
</main>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    const buttons = document.querySelectorAll('.tab-btn');
    const contents = document.querySelectorAll('.tab-content-panel');

    function activate(targetId) {
      // Update button states
      buttons.forEach(b => {
        if (b.dataset.target === targetId) {
          b.classList.add('active');
        } else {
          b.classList.remove('active');
        }
      });

      // Update content visibility with smooth fade-in animation
      contents.forEach(c => {
        if (c.id === targetId) {
          c.classList.remove('hidden');
          // Re-trigger CSS animation by cloning trick
          c.style.animation = 'none';
          // eslint-disable-next-line no-unused-expressions
          c.offsetHeight; // force reflow
          c.style.animation = '';
          // Smooth scroll to top of content on mobile
          if (window.innerWidth < 1024) {
            c.scrollIntoView({ behavior: 'smooth', block: 'start' });
          }
        } else {
          c.classList.add('hidden');
        }
      });
    }

    // Attach click handlers
    buttons.forEach(btn => {
      btn.addEventListener('click', () => activate(btn.dataset.target));
    });

    // Default active tab on load
    activate('fa');
  });

  // PhD Sub-navigation functions
  function showPhdSection(sectionId, triggerEl) {
    // Hide all PhD sections
    const phdSections = document.querySelectorAll('.phd-section');
    phdSections.forEach(section => {
      section.classList.add('hidden');
    });

    // Show selected section
    const selectedSection = document.getElementById('phd-' + sectionId);
    if (selectedSection) {
      // Re-trigger animation
      selectedSection.style.animation = 'none';
      selectedSection.offsetHeight; // force reflow
      selectedSection.style.animation = '';
      selectedSection.classList.remove('hidden');

      // Scroll to section on mobile
      if (window.innerWidth < 1024) {
        selectedSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    }

    // Update navigation button states
    const phdNavBtns = document.querySelectorAll('.phd-nav-btn');
    phdNavBtns.forEach(btn => {
      btn.classList.remove('active-phd-nav');
    });

    // Highlight active button (use passed element, fall back to window.event)
    const btn = triggerEl || (window.event && window.event.target);
    if (btn) btn.classList.add('active-phd-nav');
  }

  // Student table filter function
  function filterStudents() {
    const input = document.getElementById('studentSearch');
    const filter = input.value.toUpperCase();
    const table = document.getElementById('studentsTable');
    const tr = table.getElementsByTagName('tr');

    for (let i = 1; i < tr.length; i++) {
      let found = false;
      const td = tr[i].getElementsByTagName('td');

      for (let j = 0; j < td.length; j++) {
        if (td[j]) {
          const txtValue = td[j].textContent || td[j].innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            found = true;
            break;
          }
        }
      }

      tr[i].style.display = found ? '' : 'none';
    }
  }
</script>

</asp:Content>
