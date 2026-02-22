<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    IMERP - Internal Monetary Endowment Research Program - ORIC
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

  .section-content {
    display: none;
  }
  .section-content.active {
    display: block;
  }

  /* ── Scroll hint arrow visible only on small screens ── */
  .tab-scroll-hint { display: none; }
  @media (max-width: 768px) {
    .tab-scroll-hint { display: flex; }
  }

  /* Monitoring Table Styles */
  .monitoring-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 1.5rem;
    background-color: white;
    border: 1px solid #cbd5e0;
  }
  .monitoring-table th,
  .monitoring-table td {
    border: 1px solid #cbd5e0;
    padding: 0.75rem;
    text-align: left;
    font-size: 0.875rem;
  }
  .monitoring-table th {
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    font-weight: 600;
  }
  .monitoring-table tbody tr:hover { background-color: #f7fafc; }

  /* SOP List Styles */
  .sop-list {
    counter-reset: sop-counter;
    list-style: none;
    padding-left: 0;
  }
  .sop-list li {
    counter-increment: sop-counter;
    position: relative;
    padding-left: 2.5rem;
    margin-bottom: 1rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid #e2e8f0;
  }
  .sop-list li:last-child { border-bottom: none; }
  .sop-list li:before {
    content: counter(sop-counter);
    position: absolute;
    left: 0; top: 0;
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    width: 1.75rem; height: 1.75rem;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 0.875rem;
  }
  @media (max-width: 768px) {
    .monitoring-table { font-size: 0.75rem; }
    .monitoring-table th, .monitoring-table td { padding: 0.5rem; }
    .sop-list li { padding-left: 2rem; font-size: 0.875rem; }
    .sop-list li:before { width: 1.5rem; height: 1.5rem; font-size: 0.75rem; }
  }

  html { scroll-behavior: smooth; }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Internal Monitoring & Evaluation of Research Projects</h1>
      <p class="text-gray-600">Ensuring Quality and Accountability in Research Execution</p>
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
          <button type="button" data-target="sops"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-clipboard-list"></i><span>SOPs for Current Projects</span>
          </button>
          <button type="button" data-target="monitoring-report"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-file-alt"></i><span>Monitoring &amp; Evaluation Report</span>
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
              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mb-6">
                <p class="text-gray-700 leading-relaxed text-justify">
                  In order to further streamline the activities as committed in the approved project documents to achieve the ultimate outcomes of this exercise. The <strong>Principal Investigators (PIs)</strong>, <strong>Project Managers (PMs)</strong> and <strong>Team Leaders (TLs)</strong> of the project(s) will have to fill the information prior to visit of the <strong>Monitoring & Evaluation Officer (M&E Officer)</strong> on real time data basis.
                </p>
              </div>

              <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
                <!-- Feature Card 1 -->
                <div class="bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white hover:shadow-xl transition-shadow">
                  <div class="flex items-center justify-between mb-3">
                    <i class="fas fa-chart-line text-4xl opacity-80"></i>
                  </div>
                  <h4 class="text-lg font-semibold mb-2">Real-Time Monitoring</h4>
                  <p class="text-blue-100 text-sm">Track project progress and ensure compliance with approved milestones</p>
                </div>

                <!-- Feature Card 2 -->
                <div class="bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white hover:shadow-xl transition-shadow">
                  <div class="flex items-center justify-between mb-3">
                    <i class="fas fa-tasks text-4xl opacity-80"></i>
                  </div>
                  <h4 class="text-lg font-semibold mb-2">Activity Assessment</h4>
                  <p class="text-green-100 text-sm">Evaluate committed activities and deliverables as per project documents</p>
                </div>

                <!-- Feature Card 3 -->
                <div class="bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-xl shadow-lg text-white hover:shadow-xl transition-shadow">
                  <div class="flex items-center justify-between mb-3">
                    <i class="fas fa-shield-alt text-4xl opacity-80"></i>
                  </div>
                  <h4 class="text-lg font-semibold mb-2">Quality Assurance</h4>
                  <p class="text-purple-100 text-sm">Ensure research quality and proper utilization of project funds</p>
                </div>
              </div>

              <div class="space-y-4">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-bullseye mr-2"></i>Key Objectives
                </h4>

                <div class="bg-white border-l-4 border-[#3674B5] p-5 rounded-lg shadow-sm">
                  <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                    <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>
                    Streamline Research Activities
                  </h5>
                  <p class="text-gray-700 text-justify">
                    Ensure that all research activities align with the approved project documents and committed deliverables, maintaining consistency throughout the project lifecycle.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-green-500 p-5 rounded-lg shadow-sm">
                  <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                    <i class="fas fa-check-circle text-green-500 mr-2"></i>
                    Real-Time Data Collection
                  </h5>
                  <p class="text-gray-700 text-justify">
                    Facilitate accurate and timely reporting by requiring PIs, PMs, and TLs to provide up-to-date information before M&E Officer visits.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-purple-500 p-5 rounded-lg shadow-sm">
                  <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                    <i class="fas fa-check-circle text-purple-500 mr-2"></i>
                    Achieve Ultimate Outcomes
                  </h5>
                  <p class="text-gray-700 text-justify">
                    Monitor progress toward achieving the ultimate outcomes and impact as outlined in the project proposal and approved documents.
                  </p>
                </div>

                <div class="bg-white border-l-4 border-orange-500 p-5 rounded-lg shadow-sm">
                  <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                    <i class="fas fa-check-circle text-orange-500 mr-2"></i>
                    Enhance Accountability
                  </h5>
                  <p class="text-gray-700 text-justify">
                    Promote transparency and accountability in research project execution by conducting regular monitoring and evaluation visits.
                  </p>
                </div>
              </div>

              <div class="bg-yellow-50 border-l-4 border-yellow-500 p-5 rounded-lg mt-6">
                <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
                  <i class="fas fa-exclamation-triangle mr-2 text-yellow-600"></i>
                  Important Notice
                </h4>
                <p class="text-gray-700 text-justify">
                  All Principal Investigators, Project Managers, and Team Leaders must ensure that information provided is accurate and based on real-time data. Any discrepancies or camouflaging of information will be negatively impacted in the evaluation report.
                </p>
              </div>
            </div>
          </div>

          <!-- SOPs Section -->
          <div id="sops" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-clipboard-list mr-2"></i>SOPs for Internal Monitoring & Evaluation
            </h3>

            <div class="prose max-w-none">
              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mb-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-2">
                  <i class="fas fa-university mr-2"></i>Standard Operating Procedures
                </h4>
                <p class="text-gray-700">
                  For Internal Monitoring & Evaluation of Research Projects being executed at University of Agriculture, Faisalabad
                </p>
              </div>

              <div class="bg-white border border-gray-200 rounded-lg p-6 mb-6">
                <h4 class="text-xl font-semibold text-[#1a4d7c] mb-4">
                  <i class="fas fa-bullseye mr-2"></i>Prime Objective
                </h4>
                <p class="text-gray-700 leading-relaxed text-justify">
                  The prime objective of this initiative (Internal Monitoring & Evaluation) is to further streamline the activities as committed in the approved project documents to achieve the ultimate outcomes of this exercise. The Principal Investigators (PIs), Project Managers (PMs) and Team Leaders (TLs) of the project(s) will have to fill the information prior to visit of the Monitoring & Evaluation Officer (M&E Officer) on real time data basis.
                </p>
              </div>

              <ul class="sop-list mb-6">
                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Data Integrity:</strong> Camouflaging the information will be negatively impacted.
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Project Selection:</strong> Ongoing projects (with at least one year or more) will be selected for M&E process where Technical and Financial information of the projects will separately be furnished (on separate template).
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Financial Audit:</strong> An officer or official from ORIC Accounts Section will assist M&E Officer to carryout Financial Audit / Performance Audit of the project in consultation with PI/PM/TL.
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Report Submission:</strong> Monitoring and Evaluation Report will directly be presented to the Competent Authority (Vice Chancellor) and afterwards, same will be communicated to PI/PM/TL of the project with a copy to Director of the Institute / Chairman of the Department etc. for information / necessary rectification (if any).
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Presentation Requirement:</strong> The PI/PM/TL will prepare 05-07 minutes presentation (ppt. slides) regarding briefing of the project activities in the office of respective Chairman of the Department/Director of the Institute where Chairman/Director will also participate in this M&E process.
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Proforma Submission:</strong> Filled proformas will be submitted at ORIC at least two days earlier to the visit of M&E officer so that he/she may examine the information and analyze the situation.
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>High-Value Projects:</strong> The project with a worth of Rs. 5.0-10 million, the M&E officer may invite respective Dean of faculty in M&E process to witness the quality of ongoing research in his/her faculty. Similarly the honorable Vice Chancellor has desired to join the M&E process of the projects having the worth more than 10 million (copy of the schedule has been shared with the Vice Chancellor).
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Verification Authority:</strong> The M&E Officer will be authorized to examine / verify physically the primary data / empirical data / items purchased out of the project funds or ongoing field trials during M&E process.
                  </p>
                </li>

                <li>
                  <p class="text-gray-700 leading-relaxed text-justify">
                    <strong>Rescheduling Policy:</strong> Once the scheduled M&E program is postponed by the PI/PM/TL due to one or the other reason, he/she will avail one more / final chance and after the 2nd chance, it will be presumed that he/she is unable to present the project for M&E process. It will be reflected in the Performance Evaluation Report of the PI/PM/TL by his/her Head of Department.
                  </p>
                </li>
              </ul>

              <div class="bg-gradient-to-r from-green-50 to-emerald-50 p-6 rounded-lg border-l-4 border-green-500">
                <h4 class="font-semibold text-gray-800 mb-3 flex items-center">
                  <i class="fas fa-info-circle mr-2 text-green-600"></i>
                  Important Guidelines
                </h4>
                <ul class="space-y-2 text-gray-700">
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-green-600 mt-1 mr-2"></i>
                    <span>All information must be provided on a real-time data basis</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-green-600 mt-1 mr-2"></i>
                    <span>Technical and financial information must be furnished separately</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-green-600 mt-1 mr-2"></i>
                    <span>Prepare a brief 5-7 minute PowerPoint presentation</span>
                  </li>
                  <li class="flex items-start">
                    <i class="fas fa-chevron-right text-green-600 mt-1 mr-2"></i>
                    <span>Submit filled proformas at least 2 days before the M&E visit</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Monitoring Report Section -->
          <div id="monitoring-report" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-file-alt mr-2"></i>Monitoring and Evaluation Report
            </h3>

            <div class="prose max-w-none">
              <div class="bg-gradient-to-r from-purple-50 to-indigo-50 p-6 rounded-lg border-l-4 border-purple-500 mb-6">
                <p class="text-gray-700 leading-relaxed">
                  The Monitoring and Evaluation Report format is designed to capture comprehensive information about research project progress, activities, and compliance with approved project documents.
                </p>
              </div>

              <!-- Project Information Table -->
              <div class="overflow-x-auto mb-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-info-circle mr-2"></i>Project Information
                </h4>
                <table class="monitoring-table">
                  <tbody>
                    <tr>
                      <td class="font-semibold bg-gray-50">Title of the project</td>
                      <td></td>
                      <td class="font-semibold bg-gray-50">Name of PI/PM/TL</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="font-semibold bg-gray-50">Funding Agency</td>
                      <td></td>
                      <td class="font-semibold bg-gray-50">Designation</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="font-semibold bg-gray-50">Starting Date</td>
                      <td></td>
                      <td class="font-semibold bg-gray-50">Dept./Institute</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="font-semibold bg-gray-50">Ending Date</td>
                      <td></td>
                      <td class="font-semibold bg-gray-50">Date of Visit of M&E Officer</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="font-semibold bg-gray-50">If the project 1st, 2nd or 3rd year stage the status of previous reports</td>
                      <td>Timely submitted or not (Yes/No)</td>
                      <td class="font-semibold bg-gray-50">Reporting period</td>
                      <td></td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <!-- Activity Status Table -->
              <div class="overflow-x-auto mb-6">
                <h4 class="text-lg font-semibold text-[#1a4d7c] mb-3">
                  <i class="fas fa-tasks mr-2"></i>Activity Status and Milestones
                </h4>
                <table class="monitoring-table">
                  <thead>
                    <tr>
                      <th style="width: 8%;">Sr. #</th>
                      <th style="width: 30%;">Committed Activity/Milestones as per approved project document</th>
                      <th style="width: 30%;">Current status of committed activities</th>
                      <th style="width: 32%;">Remarks by the M&E Officer</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="text-center font-semibold">1</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="text-center font-semibold">2</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="text-center font-semibold">3</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="text-center font-semibold">4</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="text-center font-semibold">5</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div class="flex items-center justify-between flex-wrap gap-4 mt-8 p-5 bg-gray-50 rounded-lg border border-gray-200">
                <div>
                  <p class="text-gray-700 font-semibold mb-1">
                    <i class="fas fa-signature mr-2 text-[#3674B5]"></i>Sign & Stamp of M&E Officer
                  </p>
                  <div class="h-16 border-b-2 border-gray-400 w-64 mt-3"></div>
                </div>
                <div class="text-right">
                  <p class="text-gray-600 text-sm">
                    <i class="fas fa-calendar-alt mr-2"></i>Date: _______________
                  </p>
                </div>
              </div>

              <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mt-6">
                <h4 class="font-semibold text-gray-800 mb-3 flex items-center">
                  <i class="fas fa-lightbulb mr-2 text-blue-600"></i>
                  Report Submission Process
                </h4>
                <ol class="space-y-2 text-gray-700 list-decimal list-inside">
                  <li>Complete all sections of the monitoring and evaluation report accurately</li>
                  <li>Submit the report to the M&E Officer at least 2 days before the scheduled visit</li>
                  <li>The M&E Officer will review and verify the information during the on-site visit</li>
                  <li>Final report will be submitted to the Vice Chancellor for review</li>
                  <li>Copy will be forwarded to PI/PM/TL and Department/Institute for necessary action</li>
                </ol>
              </div>

              <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-6">
                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-center">
                    <i class="fas fa-check-circle mr-2 text-green-600"></i>
                    Best Practices
                  </h5>
                  <ul class="text-sm text-gray-700 space-y-1">
                    <li>• Maintain accurate and up-to-date project records</li>
                    <li>• Prepare all documentation before M&E visit</li>
                    <li>• Be transparent about project challenges</li>
                    <li>• Provide evidence-based information</li>
                  </ul>
                </div>

                <div class="bg-orange-50 border-l-4 border-orange-500 p-4 rounded-lg">
                  <h5 class="font-semibold text-gray-800 mb-2 flex items-center">
                    <i class="fas fa-exclamation-circle mr-2 text-orange-600"></i>
                    Common Pitfalls to Avoid
                  </h5>
                  <ul class="text-sm text-gray-700 space-y-1">
                    <li>• Incomplete or inaccurate information</li>
                    <li>• Missing documentation or evidence</li>
                    <li>• Late submission of proformas</li>
                    <li>• Unpreparedness during M&E visits</li>
                  </ul>
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
