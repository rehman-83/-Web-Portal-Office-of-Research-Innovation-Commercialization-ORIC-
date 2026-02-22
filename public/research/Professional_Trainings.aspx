<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Professional Training Programs - ORIC
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

  /* Stats Cards */
  .stat-card { transition: all 0.3s ease; }
  .stat-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  }

  /* Training Table */
  .training-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 1.5rem;
  }
  .training-table th {
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    padding: 1rem;
    text-align: left;
    font-weight: 600;
    font-size: 0.9rem;
  }
  .training-table td {
    padding: 0.875rem 1rem;
    border-bottom: 1px solid #e2e8f0;
    font-size: 0.875rem;
  }
  .training-table tbody tr:hover { background-color: #f7fafc; }
  .training-table tbody tr:last-child {
    font-weight: 600;
    background-color: #edf2f7;
  }

  /* Responsive Table */
  @media (max-width: 768px) {
    .training-table { font-size: 0.75rem; }
    .training-table th, .training-table td { padding: 0.5rem; }
    .training-table thead { display: none; }
    .training-table tr {
      display: block;
      margin-bottom: 1rem;
      border: 1px solid #e2e8f0;
      border-radius: 0.5rem;
      padding: 0.5rem;
    }
    .training-table td {
      display: block;
      text-align: right;
      padding: 0.5rem;
      border: none;
    }
    .training-table td:before {
      content: attr(data-label);
      float: left;
      font-weight: 600;
      color: #3674B5;
    }
  }

  html { scroll-behavior: smooth; }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Professional Trainings</h1>
      <p class="text-gray-600">Capacity Building & Professional Development Programs</p>
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
          <button type="button" data-target="overview"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-chart-bar"></i><span>Program Overview</span>
          </button>
          <button type="button" data-target="objectives"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-bullseye"></i><span>Objectives</span>
          </button>
          <button type="button" data-target="training-details"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-table"></i><span>Training Details</span>
          </button>
          <button type="button" data-target="impact"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-trophy"></i><span>Impact &amp; Achievements</span>
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
              <p class="text-gray-700 leading-relaxed mb-4">
                Knowledge has no boundaries, especially in the arena of Science & Technology. The world is reshaping
                its priorities day by day in terms of latest information and innovations in all spheres of life,
                especially the use of ICT in Research and Development activities, which have made capacity building a
                significant topic.
              </p>

              <p class="text-gray-700 leading-relaxed mb-4">
                Keeping in view the need of the hour, the <strong>Government of Punjab, Agriculture Department</strong>
                tasked <strong>ORIC-University of Agriculture, Faisalabad (UAF)</strong> to develop a comprehensive
                plan for capacitating the Officers (under 4-Tier Service Structure) in the areas of:
              </p>

              <ul class="list-disc list-inside ml-4 space-y-2 text-gray-700 mb-4">
                <li>Financial Management</li>
                <li>Administration and Management</li>
                <li>E-Governance</li>
                <li>Modern ICT Tools</li>
              </ul>

              <p class="text-gray-700 leading-relaxed mb-4">
                ORIC chalked out a comprehensive plan to capacitate the officers in a professional manner by outsourcing
                most of the resource persons from all over Pakistan. Under this initiative, officers from the following
                departments have been capacitated:
              </p>

              <div class="grid grid-cols-1 md:grid-cols-2 gap-3 mb-4">
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Agriculture Research
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Extension Services
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Crop Reporting Service
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Pest Warning & Quality Control
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Soil Conservation
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Planning & Evaluation Cell
                </div>
                <div class="bg-blue-50 p-3 rounded-lg border-l-4 border-[#3674B5]">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Agricultural Information
                </div>
              </div>
            </div>
          </div>

          <!-- Program Overview Section -->
          <div id="overview" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
              <i class="fas fa-chart-bar mr-2"></i>Program Overview
            </h3>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
              <!-- Stat Card 1 -->
              <div class="stat-card bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white">
                <div class="flex items-center justify-between mb-2">
                  <i class="fas fa-users text-3xl opacity-80"></i>
                  <span class="text-xs font-semibold bg-white bg-opacity-20 px-2 py-1 rounded">Total</span>
                </div>
                <h4 class="text-3xl font-bold mb-1">1,014</h4>
                <p class="text-blue-100 text-sm">Officers Trained</p>
              </div>

              <!-- Stat Card 2 -->
              <div class="stat-card bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white">
                <div class="flex items-center justify-between mb-2">
                  <i class="fas fa-calendar-alt text-3xl opacity-80"></i>
                  <span class="text-xs font-semibold bg-white bg-opacity-20 px-2 py-1 rounded">Sessions</span>
                </div>
                <h4 class="text-3xl font-bold mb-1">15</h4>
                <p class="text-green-100 text-sm">Training Sessions</p>
              </div>

              <!-- Stat Card 3 -->
              <div class="stat-card bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-xl shadow-lg text-white">
                <div class="flex items-center justify-between mb-2">
                  <i class="fas fa-money-bill-wave text-3xl opacity-80"></i>
                  <span class="text-xs font-semibold bg-white bg-opacity-20 px-2 py-1 rounded">Investment</span>
                </div>
                <h4 class="text-3xl font-bold mb-1">29.86M</h4>
                <p class="text-purple-100 text-sm">Total Budget</p>
              </div>
            </div>

            <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-xl border border-blue-100 mb-6">
              <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                <i class="fas fa-graduation-cap mr-2"></i>Training Program Structure
              </h4>
              <p class="text-gray-700 mb-4">
                The professional training program is designed as a <strong>4-week intensive course</strong> covering
                comprehensive modules in:
              </p>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="flex items-start space-x-3">
                  <div class="flex-shrink-0 w-8 h-8 bg-[#3674B5] rounded-full flex items-center justify-center text-white font-bold">
                    1
                  </div>
                  <div>
                    <h5 class="font-semibold text-gray-900">Finance & Budgeting</h5>
                    <p class="text-sm text-gray-600">Financial planning, budget management, and resource allocation</p>
                  </div>
                </div>
                <div class="flex items-start space-x-3">
                  <div class="flex-shrink-0 w-8 h-8 bg-[#3674B5] rounded-full flex items-center justify-center text-white font-bold">
                    2
                  </div>
                  <div>
                    <h5 class="font-semibold text-gray-900">Administration</h5>
                    <p class="text-sm text-gray-600">Administrative procedures, policy implementation, and compliance</p>
                  </div>
                </div>
                <div class="flex items-start space-x-3">
                  <div class="flex-shrink-0 w-8 h-8 bg-[#3674B5] rounded-full flex items-center justify-center text-white font-bold">
                    3
                  </div>
                  <div>
                    <h5 class="font-semibold text-gray-900">Management Skills</h5>
                    <p class="text-sm text-gray-600">Leadership, team management, and decision-making strategies</p>
                  </div>
                </div>
                <div class="flex items-start space-x-3">
                  <div class="flex-shrink-0 w-8 h-8 bg-[#3674B5] rounded-full flex items-center justify-center text-white font-bold">
                    4
                  </div>
                  <div>
                    <h5 class="font-semibold text-gray-900">E-Governance</h5>
                    <p class="text-sm text-gray-600">Digital tools, online systems, and modern ICT applications</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Objectives Section -->
          <div id="objectives" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
              <i class="fas fa-bullseye mr-2"></i>Training Objectives
            </h3>

            <div class="space-y-4">
              <div class="bg-white border-l-4 border-[#3674B5] p-5 rounded-lg shadow-sm hover:shadow-md transition-shadow">
                <h4 class="font-semibold text-lg text-gray-900 mb-2">
                  <i class="fas fa-check-circle text-[#3674B5] mr-2"></i>Enhance Professional Competence
                </h4>
                <p class="text-gray-700">
                  Equip agriculture department officers with advanced knowledge and skills in financial management,
                  administration, and modern governance practices to improve departmental efficiency.
                </p>
              </div>

              <div class="bg-white border-l-4 border-green-500 p-5 rounded-lg shadow-sm hover:shadow-md transition-shadow">
                <h4 class="font-semibold text-lg text-gray-900 mb-2">
                  <i class="fas fa-check-circle text-green-500 mr-2"></i>Promote E-Governance
                </h4>
                <p class="text-gray-700">
                  Introduce and train officers on digital platforms, ICT tools, and e-governance systems to facilitate
                  transparent and efficient government operations.
                </p>
              </div>

              <div class="bg-white border-l-4 border-purple-500 p-5 rounded-lg shadow-sm hover:shadow-md transition-shadow">
                <h4 class="font-semibold text-lg text-gray-900 mb-2">
                  <i class="fas fa-check-circle text-purple-500 mr-2"></i>Strengthen Administrative Skills
                </h4>
                <p class="text-gray-700">
                  Build capacity in administrative procedures, policy formulation, implementation, and compliance to
                  ensure effective departmental management.
                </p>
              </div>

              <div class="bg-white border-l-4 border-orange-500 p-5 rounded-lg shadow-sm hover:shadow-md transition-shadow">
                <h4 class="font-semibold text-lg text-gray-900 mb-2">
                  <i class="fas fa-check-circle text-orange-500 mr-2"></i>Foster Leadership Development
                </h4>
                <p class="text-gray-700">
                  Develop leadership qualities, decision-making abilities, and team management skills among officers to
                  lead their departments effectively.
                </p>
              </div>

              <div class="bg-white border-l-4 border-red-500 p-5 rounded-lg shadow-sm hover:shadow-md transition-shadow">
                <h4 class="font-semibold text-lg text-gray-900 mb-2">
                  <i class="fas fa-check-circle text-red-500 mr-2"></i>Ensure Standardization
                </h4>
                <p class="text-gray-700">
                  Create uniformity in professional practices across different wings and departments of the Punjab
                  Agriculture Department through standardized training programs.
                </p>
              </div>
            </div>
          </div>

          <!-- Training Details Section -->
          <div id="training-details" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-table mr-2"></i>Training Sessions Details
            </h3>

            <p class="text-gray-700 mb-4">
              Comprehensive details of all professional training sessions conducted for officers of the Government of
              Punjab Agriculture Department:
            </p>

            <div class="overflow-x-auto">
              <table class="training-table">
                <thead>
                  <tr>
                    <th>Sr#</th>
                    <th>Topic</th>
                    <th>Date</th>
                    <th>Officers Trained</th>
                    <th>Amount (M)</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr#">1</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Dec 23, 2019 to Jan 20, 2020</td>
                    <td data-label="Officers Trained">53</td>
                    <td data-label="Amount (M)">0.876</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">2</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Jan 20, 2020 to Feb 17, 2020</td>
                    <td data-label="Officers Trained">54</td>
                    <td data-label="Amount (M)">0.79</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">3</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Feb 17, 2020 to Mar 13, 2020</td>
                    <td data-label="Officers Trained">87</td>
                    <td data-label="Amount (M)">0.934</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">4</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Sep 13, 2021 to Oct 7, 2021</td>
                    <td data-label="Officers Trained">79</td>
                    <td data-label="Amount (M)">1.99</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">5</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Oct 26, 2021 to Nov 20, 2021</td>
                    <td data-label="Officers Trained">57</td>
                    <td data-label="Amount (M)">1.43</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">6</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Research Wing), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">May 16, 2022 to Jun 10, 2022</td>
                    <td data-label="Officers Trained">25</td>
                    <td data-label="Amount (M)">1.12</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">7</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR), Govt. of the Punjab at UAF
                    </td>
                    <td data-label="Date">Jan 03, 2022 to Jan 28, 2022</td>
                    <td data-label="Officers Trained">57</td>
                    <td data-label="Amount (M)">1.43</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">8</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR), Govt. of the Punjab at UAF
                    </td>
                    <td data-label="Date">Feb 07, 2022 to Mar 04, 2022</td>
                    <td data-label="Officers Trained">64</td>
                    <td data-label="Amount (M)">1.66</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">9</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR and P&EC), Govt. of the Punjab
                      at UAF</td>
                    <td data-label="Date">May 09, 2022 to Jun 03, 2022</td>
                    <td data-label="Officers Trained">72</td>
                    <td data-label="Amount (M)">1.81</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">10</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR and Crop Reporting Service),
                      Govt. of the Punjab at UAF</td>
                    <td data-label="Date">Jun 20, 2022 to Jul 22, 2022</td>
                    <td data-label="Officers Trained">79</td>
                    <td data-label="Amount (M)">2.76</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">11</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture Crop Reporting Service, Govt. of the
                      Punjab at UAF</td>
                    <td data-label="Date">Aug 01, 2022 to Sep 02, 2022</td>
                    <td data-label="Officers Trained">83</td>
                    <td data-label="Amount (M)">2.90</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">12</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR and Soil Conservation), Govt.
                      of the Punjab at UAF</td>
                    <td data-label="Date">Sep 19, 2022 to Oct 14, 2022</td>
                    <td data-label="Officers Trained">66</td>
                    <td data-label="Amount (M)">2.64</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">13</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Ext. & AR), Govt. of the Punjab at UAF
                    </td>
                    <td data-label="Date">Oct 24, 2022 to Nov 18, 2022</td>
                    <td data-label="Officers Trained">67</td>
                    <td data-label="Amount (M)">2.68</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">14</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Res Wing, PW&QCP), Govt. of the Punjab at
                      UAF</td>
                    <td data-label="Date">Nov 28, 2022 to Dec 23, 2022</td>
                    <td data-label="Officers Trained">87</td>
                    <td data-label="Amount (M)">3.48</td>
                  </tr>
                  <tr>
                    <td data-label="Sr#">15</td>
                    <td data-label="Topic">Four Weeks Professional Training on Finance, Administration, Management and
                      E-Governance for the officers, Department of Agriculture (Res Wing, PW&QCP and Agri. Information),
                      Govt. of the Punjab at UAF</td>
                    <td data-label="Date">Feb 20, 2023 to Mar 17, 2023</td>
                    <td data-label="Officers Trained">84</td>
                    <td data-label="Amount (M)">3.36</td>
                  </tr>
                  <tr>
                    <td colspan="3" data-label="Grand Total"><strong>Grand Total</strong></td>
                    <td data-label="Total Officers"><strong>1,014</strong></td>
                    <td data-label="Total Amount"><strong>29.86</strong></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Impact & Achievements Section -->
          <div id="impact" class="section-content tab-content-panel">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
              <i class="fas fa-trophy mr-2"></i>Impact & Achievements
            </h3>

            <div class="bg-gradient-to-r from-green-50 to-blue-50 p-6 rounded-xl border border-green-100 mb-6">
              <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                <i class="fas fa-award mr-2"></i>Key Achievements
              </h4>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="flex items-center space-x-3">
                  <div class="flex-shrink-0 w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white">
                    <i class="fas fa-users"></i>
                  </div>
                  <div>
                    <p class="text-2xl font-bold text-gray-900">1,014</p>
                    <p class="text-sm text-gray-600">Total Officers Trained</p>
                  </div>
                </div>
                <div class="flex items-center space-x-3">
                  <div class="flex-shrink-0 w-12 h-12 bg-blue-500 rounded-full flex items-center justify-center text-white">
                    <i class="fas fa-building"></i>
                  </div>
                  <div>
                    <p class="text-2xl font-bold text-gray-900">7+</p>
                    <p class="text-sm text-gray-600">Departments Covered</p>
                  </div>
                </div>
                <div class="flex items-center space-x-3">
                  <div class="flex-shrink-0 w-12 h-12 bg-purple-500 rounded-full flex items-center justify-center text-white">
                    <i class="fas fa-calendar-check"></i>
                  </div>
                  <div>
                    <p class="text-2xl font-bold text-gray-900">15</p>
                    <p class="text-sm text-gray-600">Training Sessions Completed</p>
                  </div>
                </div>
                <div class="flex items-center space-x-3">
                  <div class="flex-shrink-0 w-12 h-12 bg-orange-500 rounded-full flex items-center justify-center text-white">
                    <i class="fas fa-clock"></i>
                  </div>
                  <div>
                    <p class="text-2xl font-bold text-gray-900">4 Weeks</p>
                    <p class="text-sm text-gray-600">Per Training Session</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="space-y-4 mb-6">
              <h4 class="text-xl font-semibold text-[#1a4d7c] mb-3">
                <i class="fas fa-lightbulb mr-2"></i>Program Impact
              </h4>

              <div class="bg-white p-5 rounded-lg border border-gray-200 shadow-sm">
                <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                  <span class="w-8 h-8 bg-blue-100 text-[#3674B5] rounded-full flex items-center justify-center mr-3">
                    <i class="fas fa-chart-line text-sm"></i>
                  </span>
                  Enhanced Operational Efficiency
                </h5>
                <p class="text-gray-700 ml-11">
                  Officers equipped with modern management techniques have significantly improved departmental workflows
                  and operational efficiency across all wings of the Agriculture Department.
                </p>
              </div>

              <div class="bg-white p-5 rounded-lg border border-gray-200 shadow-sm">
                <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                  <span class="w-8 h-8 bg-green-100 text-green-600 rounded-full flex items-center justify-center mr-3">
                    <i class="fas fa-laptop text-sm"></i>
                  </span>
                  Digital Transformation
                </h5>
                <p class="text-gray-700 ml-11">
                  Successful integration of e-governance tools and ICT systems has led to transparent, efficient, and
                  paperless administrative processes throughout the department.
                </p>
              </div>

              <div class="bg-white p-5 rounded-lg border border-gray-200 shadow-sm">
                <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                  <span class="w-8 h-8 bg-purple-100 text-purple-600 rounded-full flex items-center justify-center mr-3">
                    <i class="fas fa-handshake text-sm"></i>
                  </span>
                  Improved Coordination
                </h5>
                <p class="text-gray-700 ml-11">
                  Training has fostered better inter-departmental coordination and standardized procedures across
                  research, extension, and administrative wings.
                </p>
              </div>

              <div class="bg-white p-5 rounded-lg border border-gray-200 shadow-sm">
                <h5 class="font-semibold text-gray-900 mb-2 flex items-center">
                  <span class="w-8 h-8 bg-orange-100 text-orange-600 rounded-full flex items-center justify-center mr-3">
                    <i class="fas fa-seedling text-sm"></i>
                  </span>
                  Capacity Building Success
                </h5>
                <p class="text-gray-700 ml-11">
                  Over 1,000 officers have been successfully capacitated, creating a strong foundation for sustainable
                  agricultural development in Punjab.
                </p>
              </div>
            </div>

            <div class="bg-gradient-to-r from-[#3674B5] to-[#578FCA] p-6 rounded-xl text-white">
              <h4 class="text-xl font-semibold mb-3">
                <i class="fas fa-rocket mr-2"></i>Future Outlook
              </h4>
              <p class="mb-3">
                ORIC-UAF remains committed to continuing these professional development initiatives, expanding training
                modules, and incorporating emerging technologies and management practices to ensure Punjab's Agriculture
                Department officers remain at the forefront of modern agricultural administration.
              </p>
              <p class="text-blue-100 text-sm">
                <i class="fas fa-info-circle mr-2"></i>For more information about upcoming training sessions, please
                contact ORIC-UAF.
              </p>
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
