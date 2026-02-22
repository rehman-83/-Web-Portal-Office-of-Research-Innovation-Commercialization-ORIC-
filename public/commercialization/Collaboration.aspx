<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Industry-Academia Collaboration - ORIC
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

  .section-content {
    display: none;
    animation: fadeIn 0.4s ease-in;
  }
  .section-content.active { display: block; }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(12px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  /* ── Scroll hint arrow visible only on small screens ── */
  .tab-scroll-hint { display: none; }
  @media (max-width: 768px) {
    .tab-scroll-hint { display: flex; }
  }

  /* Table Styling */
  .collaboration-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 1.5rem;
    background-color: white;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    border-radius: 0.5rem;
    overflow: hidden;
  }
  .collaboration-table thead {
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
  }
  .collaboration-table th {
    padding: 1rem;
    text-align: left;
    font-weight: 600;
    font-size: 0.875rem;
  }
  .collaboration-table td {
    padding: 0.875rem 1rem;
    border-bottom: 1px solid #e2e8f0;
    font-size: 0.875rem;
    color: #4a5568;
  }
  .collaboration-table tbody tr:hover { background-color: #f7fafc; }
  .collaboration-table tbody tr:last-child td { border-bottom: none; }

  /* Responsive Table */
  @media (max-width: 768px) {
    .collaboration-table thead { display: none; }
    .collaboration-table tr {
      display: block;
      margin-bottom: 1rem;
      border: 1px solid #e2e8f0;
      border-radius: 0.5rem;
      padding: 0.5rem;
      background-color: white;
    }
    .collaboration-table td {
      display: block;
      text-align: right;
      padding: 0.5rem;
      border: none;
    }
    .collaboration-table td:before {
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
    <!-- <div class="text-center mb-8">
      <div class="flex justify-center mb-4">
      <img src="assets/img/COMMERCILIZATION/Acedmia Industry Linkages.jpg" alt="Academia Industry Linkages" class="w-full max-w-md md:max-w-lg lg:max-w-xl rounded-lg shadow-lg">
      </div>
    </div> -->
<div class="relative bg-center bg-cover bg-no-repeat"
     style="background-image:url('assets/img/COMMERCILIZATION/Acedmia Industry Linkages.jpg');">

    <!-- CONTENT -->
  <div class="relative text-center mb-5 md:mb-12 py-5 md:py-16">
      <div class="h-1 w-24 sm:w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
  </div>

</div>

    <!-- <div class="text-center mb-8 md:mb-12">
      <h1
        class="text-3xl sm:text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4 px-2">
        Academia-Industry Linkages
      </h1>
      <div class="h-1 w-24 sm:w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full">
      </div>
      <p class="mt-4 md:mt-6 text-gray-600 max-w-3xl mx-auto text-base md:text-lg px-4">
      </p>
    </div> -->

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
          <button type="button" data-target="agriculture"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-seedling"></i><span>Agriculture</span>
          </button>
          <button type="button" data-target="engineering"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-cogs"></i><span>Engineering &amp; Tech</span>
          </button>
          <button type="button" data-target="sciences"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-flask"></i><span>Sciences</span>
          </button>
          <button type="button" data-target="animal"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-paw"></i><span>Animal Husbandry</span>
          </button>
          <button type="button" data-target="veterinary"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-stethoscope"></i><span>Veterinary</span>
          </button>
          <button type="button" data-target="social"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-users"></i><span>Social Sciences</span>
          </button>
          <button type="button" data-target="nifsat"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-apple-alt"></i><span>NIFSAT</span>
          </button>
          <button type="button" data-target="pbi"
            class="tab-btn flex-shrink-0 flex items-center gap-2 px-5 md:px-6 py-4 whitespace-nowrap">
            <i class="fas fa-leaf"></i><span>BioEnergy</span>
          </button>
        </div>
      </nav>
    </div>

    <!-- ── Content Area (full width) ── -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 min-h-[600px]">

          <!-- Introduction Section -->
          <div id="introduction" class="section-content active">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
              <i class="fas fa-info-circle mr-2"></i>Introduction
            </h3>


            <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-lg border-l-4 border-blue-500 mb-6">
              <p class="text-gray-700 leading-relaxed text-justify">
                To generate knowledge based economy, the university faculty and students are working with the industry
                and provide technical solutions to industrial problems. To enhance Academia-Industry Linkages, Business
                Incubation Center has signed Consultancy Agreements with public and private sector
                organizations/companies.
              </p>
            </div>

            <div class="grid md:grid-cols-2 gap-4 mb-6  ">
              <div class="bg-white p-6 rounded-lg shadow-lg border-t-4 border-blue-500">
                <div class="text-center mb-4">
                  <i class="fas fa-handshake text-5xl text-blue-500"></i>
                </div>
                <h4 class="font-semibold text-[#1a4d7c] text-center mb-3">Our Mission</h4>
                <p class="text-gray-700 text-sm text-center">
                  Bridging the gap between academic research and industrial applications through collaborative projects
                  and consultancy services.
                </p>
              </div>

              <div class="bg-white p-6 rounded-lg shadow-lg border-t-4 border-green-500">
                <div class="text-center mb-4">
                  <i class="fas fa-lightbulb text-5xl text-green-500"></i>
                </div>
                <h4 class="font-semibold text-[#1a4d7c] text-center mb-3">Innovation Focus</h4>
                <p class="text-gray-700 text-sm text-center">
                  Developing innovative solutions to real-world industrial challenges through applied research and
                  technology transfer.
                </p>
              </div>
            </div>


          </div>

          <!-- Faculty of Agriculture Section -->
          <div id="agriculture" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-seedling mr-2"></i>Faculty of Agriculture
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Prof. Dr. Zahir Ahmad Zahir</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Jaffer Brother Pvt Ltd Citi Tower 33-A Block 6 PECHS Shahra Faisal
                      Karachi</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Prof. Dr. Aman Ullah Malik</td>
                    <td data-label="Department">Horticultural Sciences</td>
                    <td data-label="Industry Partner">Koldware Industries Pvt. Ltd Plot No. E-4 Sector 50/C Korangi
                      Karachi</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Dr. Irfan Afzal</td>
                    <td data-label="Department">Agronomy</td>
                    <td data-label="Industry Partner">Anaaji, FF-25 Asian Business Center Islamabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Muhammad Tehseen Azhar</td>
                    <td data-label="Department">Plant Breeding and Genetics</td>
                    <td data-label="Industry Partner">Sharif Engineering Works Sheikhupura Road Khurainwala, Fsd</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">5</td>
                    <td data-label="Project Investigator">Dr. Muhammad Naveed</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Fertilizer Product Unit, 8 KM Guranwala Road, Sheikhupura</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">6</td>
                    <td data-label="Project Investigator">Dr. Muhammad Kashif Riaz</td>
                    <td data-label="Department">Plant Pathology</td>
                    <td data-label="Industry Partner">NK Agrochemical Industry, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">7</td>
                    <td data-label="Project Investigator">Dr. Zulfiqar Ali</td>
                    <td data-label="Department">Plant Breeding and Genetics</td>
                    <td data-label="Industry Partner">Vital Seed Corporation, Awan Chowk, Old Grahamor Road, Khanewal
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">8</td>
                    <td data-label="Project Investigator">Prof. Dr. Muhammad Jafar Jaskani</td>
                    <td data-label="Department">Horticultural Sciences</td>
                    <td data-label="Industry Partner">534-A People Colony #1 Canal Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">9</td>
                    <td data-label="Project Investigator">Dr. Zaheer Ahmad</td>
                    <td data-label="Department">Plant Breeding and Genetics</td>
                    <td data-label="Industry Partner">Sharif Engineering Works Sheikhupura Road Khurainwala, Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">10</td>
                    <td data-label="Project Investigator">Dr. Muhammad Atiq</td>
                    <td data-label="Department">Plant Pathology</td>
                    <td data-label="Industry Partner">SunFort Enterprises, 940, E Small industrial Estate Sargodha, Road
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">11</td>
                    <td data-label="Project Investigator">Dr. Romana Anjum</td>
                    <td data-label="Department">Plant Pathology</td>
                    <td data-label="Industry Partner">Pakistan Tech, 66 P Gulberg Lahore, Pakistan</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">12</td>
                    <td data-label="Project Investigator">Dr. Nasir Ahmed</td>
                    <td data-label="Department">Plant Pathology</td>
                    <td data-label="Industry Partner">Sunfort Enterprises, 940,E Small industrial Estate Sargodha Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">13</td>
                    <td data-label="Project Investigator">Dr. Muhammad Nadeem Akram</td>
                    <td data-label="Department">Horticultural Sciences</td>
                    <td data-label="Industry Partner">Ashraf Laboratories Pvt Ltd 6-KM Sheikhupura Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">14</td>
                    <td data-label="Project Investigator">Prof. Dr. Ghulam Murtaza</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Water and Sanitation Agency (FDA) Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">15</td>
                    <td data-label="Project Investigator">Dr. Khuram Ziaf</td>
                    <td data-label="Department">Horticultural Sciences</td>
                    <td data-label="Industry Partner">MDS. Import and Export quality Seed Growers, Mehr Muhammad Din &
                      Sons M.M Din Plaza Sheikhupura Hujranwala, Pakistan</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">16</td>
                    <td data-label="Project Investigator">Dr. Waqas Wakil</td>
                    <td data-label="Department">Entomology</td>
                    <td data-label="Industry Partner">AURIGA, Chemical Enterprises Head Office/Plant 33-KM Multan Road
                      Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">17</td>
                    <td data-label="Project Investigator">Dr. Hafeez ur Rehman</td>
                    <td data-label="Department">Agronomy</td>
                    <td data-label="Industry Partner">Rice Research Institute, Kala Shah Kaku, 17 KM GT Road Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">18</td>
                    <td data-label="Project Investigator">Dr. Muhammad Sufian</td>
                    <td data-label="Department">Entomology</td>
                    <td data-label="Industry Partner">AURIGA, Chemical Enterprises Head Office/Plant 33-KM Multan Road,
                      Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">19</td>
                    <td data-label="Project Investigator">Dr. Rao Sohail Ahmad Khan</td>
                    <td data-label="Department">CABB</td>
                    <td data-label="Industry Partner">Weal-Ag Corporation, Corporate Office: 47 A, Industrial Estate,
                      Multan</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">20</td>
                    <td data-label="Project Investigator">Dr. Irfan Ali</td>
                    <td data-label="Department">CABB</td>
                    <td data-label="Industry Partner">Center of Excellence in Genomic Medicine Research King Abdulaziz
                      University, P.O Box 80216, Jeddah 21589, Saudi Arabia</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">21</td>
                    <td data-label="Project Investigator">Prof. Dr. Zahir Ahmad Zahir</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Olympia Vegetable Farm, Olympia Textile Mills, Pvt Ltd Olympia
                      House
                      25-A, Danis Road, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">22</td>
                    <td data-label="Project Investigator">Dr. Nabeel Khan Niazi</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Aquaguard, 242 Street # 5 Calvary Ground Cannt, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">23</td>
                    <td data-label="Project Investigator">Prof. Dr. Waseem Akram</td>
                    <td data-label="Department">Entomology</td>
                    <td data-label="Industry Partner">Sumitomo Chemicals Asia</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">24</td>
                    <td data-label="Project Investigator">Dr. Hafiz Naeem Asgher Ch.</td>
                    <td data-label="Department">Soil and Environmental Sciences</td>
                    <td data-label="Industry Partner">Fauji Fertilizer Company Pakistan</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">25</td>
                    <td data-label="Project Investigator">Dr. Muhammad Aslam</td>
                    <td data-label="Department">Plant Breeding and Genetics</td>
                    <td data-label="Industry Partner">Sohni Dahrti International, 5, kilo meter By pass road Sahiwal
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Faculty of Engineering Section -->
          <div id="engineering" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-cogs mr-2"></i>Faculty of Agri. Engineering and Technology
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Syed Hamid Hussain Shah</td>
                    <td data-label="Department">Water Management Research Centre</td>
                    <td data-label="Industry Partner">S-Cube Industries Chack No.208, 8 Kilometer Jaranwala Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Prof. Dr. Allah Bakhsh</td>
                    <td data-label="Department">Irrigation and Drainage</td>
                    <td data-label="Industry Partner">IT Empire 6-Z-14-Chenab Market Madina Town, Hockey Stadium
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Dr. M. Jehanzeb Masud Cheema</td>
                    <td data-label="Department">Irrigation and Drainage</td>
                    <td data-label="Industry Partner">SATUMA Pvt Ltd, Islamabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Waseem Amjad</td>
                    <td data-label="Department">Energy System Engineering</td>
                    <td data-label="Industry Partner">PAMICO Technologies P-214 Street No. 2 Shadab Colony Jhang Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">5</td>
                    <td data-label="Project Investigator">Dr. Anjum Munir</td>
                    <td data-label="Department">Energy System Engineering</td>
                    <td data-label="Industry Partner">Power Pack Energy Canal Road Abduallah Pur, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">6</td>
                    <td data-label="Project Investigator">Dr. Assad Farooq</td>
                    <td data-label="Department">Fiber & Textile Technology</td>
                    <td data-label="Industry Partner">Kay&Emms Pvt Ltd 177, J.B Dhnola Millat Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">7</td>
                    <td data-label="Project Investigator">Dr. Muhammad Kashif Iqbal Khan</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">Hot-Tek, 285 Jhumra Road Mansoorabad, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">8</td>
                    <td data-label="Project Investigator">Dr. Syed Hamad Hussain Shah</td>
                    <td data-label="Department">Water management Research Center</td>
                    <td data-label="Industry Partner">Noori AgroLines Chowk Sheedan Ansari Market Taimur Road, Multan
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">9</td>
                    <td data-label="Project Investigator">Dr. Syed Hamad Hussain Shah</td>
                    <td data-label="Department">Water management Research Center</td>
                    <td data-label="Industry Partner">Water Care Services Pvt. (WCSP). Ltd 145b-2 Johar Town, Lahore
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">10</td>
                    <td data-label="Project Investigator">Dr. Muhammad Jehanzeb Masub Cheema</td>
                    <td data-label="Department">Irrigation and Drainage</td>
                    <td data-label="Industry Partner">Agricultural Spray Machinery, Head Office Lahore Road, Okara</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">11</td>
                    <td data-label="Project Investigator">Dr. Assad Farooq</td>
                    <td data-label="Department">Fiber and Textile Technology</td>
                    <td data-label="Industry Partner">Pacific International P-1232 main Sheikhupura Road, Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">12</td>
                    <td data-label="Project Investigator">Dr. Muhammad Uzair Qamar</td>
                    <td data-label="Department">Irrigation and Drainage</td>
                    <td data-label="Industry Partner">Sohail Ch. And Co. Lahore Bull Road Link Brandreth Road, Lahore
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">13</td>
                    <td data-label="Project Investigator">Dr. Muhammad Adnan Shahid</td>
                    <td data-label="Department">Water Management and research Center</td>
                    <td data-label="Industry Partner">SK, Developer, Net Cash Pakistan, Office #61st Floor Moon Plaza
                      Chiniot Bazar</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">14</td>
                    <td data-label="Project Investigator">Dr. Muhammad Jehanzeb Masud Cheema</td>
                    <td data-label="Department">Irrigation and Drainage</td>
                    <td data-label="Industry Partner">AgriTech Industries Pvt Ltd, Agritech, Industries 47/B Industrial
                      Estate, Multan</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">15</td>
                    <td data-label="Project Investigator">Dr. Muhammad Azhar Ali</td>
                    <td data-label="Department">Structures and Environmental Engineering</td>
                    <td data-label="Industry Partner">Saffron Pharmaceutical (Pvt) Ltd, 19 KM Sheikhipura Road,
                      Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">16</td>
                    <td data-label="Project Investigator">Dr. Zia Ahmad Chatha</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">Power Pack Energy, Head Office, P-1269 Canal Road AbdullahPur,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">17</td>
                    <td data-label="Project Investigator">Dr. Muhammad Kashif Saleemi</td>
                    <td data-label="Department">Plant Pathology</td>
                    <td data-label="Industry Partner">Mukhtar Feeds, 9-KM Rajana Road Samundri, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">18</td>
                    <td data-label="Project Investigator">Dr. Muhammad Azhar Ali</td>
                    <td data-label="Department">Structural and Environmental Engineering</td>
                    <td data-label="Industry Partner">M.R. International Suite No.2,3rd Floor, Sadiq Plaza, 69
                      Shahrah-e-Quaid-Azam, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">19</td>
                    <td data-label="Project Investigator">Dr. Abid Aslam Maan</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">SMD Group of Companies Corporate Office Pakistan, Office No. 13
                      Commercial Market Garden Town Phase III, Gujranwala</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">20</td>
                    <td data-label="Project Investigator">Dr. Waseem Amjad</td>
                    <td data-label="Department">Energy Systems Engineering</td>
                    <td data-label="Industry Partner">Power Pack, Manufacturing and Development, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">21</td>
                    <td data-label="Project Investigator">Dr. Muhammad Usman Farid</td>
                    <td data-label="Department">Structures and Environmental Engineering</td>
                    <td data-label="Industry Partner">Sadaqat Limited Khurrianwala، 2 KM Sahianwala Road, Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">22</td>
                    <td data-label="Project Investigator">Dr. Muhammad Azhar Ali</td>
                    <td data-label="Department">Structures and Environmental Engineering</td>
                    <td data-label="Industry Partner">Power Pack, Bawa Chak Stop, Sargodha Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">23</td>
                    <td data-label="Project Investigator">Dr. Zia Ahmad Chatha</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">Sharif Engineering Works Sheikhupura Road Khurainwala, Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">24</td>
                    <td data-label="Project Investigator">Dr. Muhammad Azam Khan</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">Power Pack, Bawa Chak Stop, Sargodha Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">25</td>
                    <td data-label="Project Investigator">Dr. Muhammad Azam Khan</td>
                    <td data-label="Department">Food Engineering</td>
                    <td data-label="Industry Partner">Sharif Engineering Works Sheikhupura Road Khurainwala, Faisalabad
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Faculty of Sciences Section -->
          <div id="sciences" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-flask mr-2"></i>Faculty of Sciences
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Prof. Dr. Amer Jamil</td>
                    <td data-label="Department">Biochemistry</td>
                    <td data-label="Industry Partner">Marketing, Bionic Advertisement, Office No. 105 First Floor Rex
                      Hotel Main Satiana Road Near Saleemi Chowk, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Dr. Muhammad Asif Hanif</td>
                    <td data-label="Department">Chemistry</td>
                    <td data-label="Industry Partner">INTRUSPA, 90-B5 Canal Park, Gulberg II, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Dr. Khuram Ali</td>
                    <td data-label="Department">Physics</td>
                    <td data-label="Industry Partner">National Centre for Physics Quaid-i-Azam University Campus,
                      Islamabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Nayla Munawar</td>
                    <td data-label="Department">Biochemistry</td>
                    <td data-label="Industry Partner">National Institute for Biotechnology & Genetic Engineering
                      (NIBGE),
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">5</td>
                    <td data-label="Project Investigator">Dr. Hafiz Muhammad Javed</td>
                    <td data-label="Department">Physics</td>
                    <td data-label="Industry Partner">National University of Sciences and Technology, School of Natural
                      Sciences, Islamabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">6</td>
                    <td data-label="Project Investigator">Dr. Muhammad Asif Hanif</td>
                    <td data-label="Department">Chemistry</td>
                    <td data-label="Industry Partner">PAMICO Technologies P-214 Street No. 2 Shadab Colony Jhang Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">7</td>
                    <td data-label="Project Investigator">Dr. Yasir Jamil</td>
                    <td data-label="Department">Physics</td>
                    <td data-label="Industry Partner">Mian Scientific Corporation (Pvt) Ltd 533 Jinnah Colony,
                      Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">8</td>
                    <td data-label="Project Investigator">Dr. Muhammad Abid Rashid</td>
                    <td data-label="Department">Chemistry</td>
                    <td data-label="Industry Partner">Ressichem International D-83 site 309 progressive plaza Beaumont
                      road, Karachi</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Faculty of Animal Husbandry Section -->
          <div id="animal" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-paw mr-2"></i>Faculty of Animal Husbandry
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Shakuat Ali Bhatti</td>
                    <td data-label="Department">Animal and Dairy Sciences</td>
                    <td data-label="Industry Partner">Solve Agri Pak Pvt Limited, Head Office 62-Tipu Block Garden Town,
                      Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Dr. Muhammad Aziz-Ur-Rehman</td>
                    <td data-label="Department">Animal and Dairy Sciences</td>
                    <td data-label="Industry Partner">Asia Poultry Pvt. Limited 182-Shadman-II, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Dr. Muhammad Sharif</td>
                    <td data-label="Department">Animal and Dairy Sciences</td>
                    <td data-label="Industry Partner">Ghazi Agropoulive Industries, Manufacturing and Development Unit
                      Opposite Wapda Steam Power Station, Lahore Road, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Muhammad Sharif</td>
                    <td data-label="Department">Animal Sciences</td>
                    <td data-label="Industry Partner">MZ Engineering Works Maqbool Road, Faisalabad</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Faculty of Veterinary Sciences Section -->
          <div id="veterinary" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-stethoscope mr-2"></i>Faculty of Veterinary Sciences
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Rao Zahid Abbas</td>
                    <td data-label="Department">Parasitology</td>
                    <td data-label="Industry Partner">Raza Chicks, 30 KM Faisalabad to Lahore Road, 68 Kalla Madina
                      Chowk,
                      Adda Johal Bus Stop, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Dr. Kanwal Rehman</td>
                    <td data-label="Department">Pharmacy, Physiology and Pharmacology</td>
                    <td data-label="Industry Partner">Al-Abbas Hospital 41-A Main Bazar Satellite Town, Sargodha</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Prof. Dr. Sajjad-ur-Rahman</td>
                    <td data-label="Department">Microbiology</td>
                    <td data-label="Industry Partner">Pharmaceutical Industry, Aptly, Pharmaceutical Al-Khidmat Plaza
                      Akbarabad besides Daewoo Terminal, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Razia Kausar</td>
                    <td data-label="Department">Veterinary Science</td>
                    <td data-label="Industry Partner">Mukhtar Feeds, Factory, 9-KM Rajana Road, Samundri, Faisalabad
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">5</td>
                    <td data-label="Project Investigator">Dr. Rao Zahid Abbas</td>
                    <td data-label="Department">Parasitology</td>
                    <td data-label="Industry Partner">Stomach Powder manufacturing Unit, Jhang Road Near Shehnai
                      Marriage
                      Hall, Gojra</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">6</td>
                    <td data-label="Project Investigator">Dr. Junaid Ali Khan</td>
                    <td data-label="Department">Pharmacy, Physiology & Pharmacology</td>
                    <td data-label="Industry Partner">Majestic Pharma, Plot # 21 Phase # 1-A Motorway Industrial City,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">7</td>
                    <td data-label="Project Investigator">Dr. Muhammad Adnan Iqbal</td>
                    <td data-label="Department">Pharmaceutical Science</td>
                    <td data-label="Industry Partner">GC University, Faisalabad</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Faculty of Social Sciences Section -->
          <div id="social" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-users mr-2"></i>Faculty of Social Sciences
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Babar Shahbaz</td>
                    <td data-label="Department">Agri. Extension & Rural Development</td>
                    <td data-label="Industry Partner">Agribusiness Solution Division, 7th & 8th Floor Harbor Front
                      Building HC-3 marine Drive Block 4, Clifton, Karachi</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- NIFSAT Section -->
          <div id="nifsat" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-apple-alt mr-2"></i>National Institute of Food, Nutrition and Home Sciences
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Muhammad Inam-ur-Raheem</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Shezan International Ltd 56, Bund Road, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Dr. Hafiz Shehzad Muzammil</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">17 Farooq Industrial Estate, Near Yuhanaabad, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">3</td>
                    <td data-label="Project Investigator">Dr. Aysha Sameen</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Fauji Food Ltd, FFBL Tower 103 Upper Mall, Lahore</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">4</td>
                    <td data-label="Project Investigator">Dr. Imran Pasha</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Shafi Flour Mill 647 D/2 People Colony, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">5</td>
                    <td data-label="Project Investigator">Dr. Muhammad Issa Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Hatchery Feed Mills 14-KM Sheikhupura Faisalabad Road Bikhi,
                      Sheikhupura</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">6</td>
                    <td data-label="Project Investigator">Prof. Dr. Masood Sadiq Butt</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Madina Citrus Farm, Tehsil Bhalwal District, Sargodha</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">7</td>
                    <td data-label="Project Investigator">Dr. Muhammad Asim Shabbir</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Green Spring Foods, p-29 St# 5-6 Main Talian Wala Road, Rehman
                      Colony Marzi, Pura Opp., Suriya Majeed Trust Hospital, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">8</td>
                    <td data-label="Project Investigator">Dr. Hafiz Shehzad Muzammil</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Gourmet Food, 73-F, Quaid-e-Azam Industrial Area Kot Lakhpat,
                      Lahore
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">9</td>
                    <td data-label="Project Investigator">Dr. Moazzam Rafiq Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Green Spring Foods, p-29 St# 5-6 Main Talian Wala Road, Rehman
                      Colony Marzi, Pura Opp., Suriya Majeed Trust Hospital, Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">10</td>
                    <td data-label="Project Investigator">Dr. Muhammad Kashif Iqbal Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">PAMICO Technologies P-214 Street No. 2 Shadab Colony Jhang Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">11</td>
                    <td data-label="Project Investigator">Dr. Allah Rakha</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Atlas Foods (Pvt) Ltd Rice Processors & Exporters 17-KM G.T Road
                      (Chinwali), Gujranwala</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">12</td>
                    <td data-label="Project Investigator">Dr. Mian Kamran Sharif</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Safe Life International P-684, Amin Town, West Canal Road,
                      Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">13</td>
                    <td data-label="Project Investigator">Dr. Muhammad Kashif Iqbal Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Hot-Tek, 285 Jhumra Road Mansoorabad Faisalabad</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">14</td>
                    <td data-label="Project Investigator">Dr. Muhammad Issa Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Anis Associates (Pvt) Limited, Meat Processing Unit, Halal Chilled
                      &
                      Frozen Meat Processors and Exports</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">15</td>
                    <td data-label="Project Investigator">Dr. Muhammad Issa Khan</td>
                    <td data-label="Department">NIFSAT</td>
                    <td data-label="Industry Partner">Maf-Carrefour Pakistan Pvt Limited</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <!-- Punjab BioEnergy Institute Section -->
          <div id="pbi" class="section-content">
            <h3 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-4">
              <i class="fas fa-leaf mr-2"></i>Punjab BioEnergy Institute (PBI)
            </h3>

            <div class="overflow-x-auto">
              <table class="collaboration-table">
                <thead>
                  <tr>
                    <th style="width: 60px;">Sr. #</th>
                    <th style="width: 200px;">Project Investigator</th>
                    <th style="width: 200px;">Department / Institute</th>
                    <th>Industry Partner</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Sr. #">1</td>
                    <td data-label="Project Investigator">Dr. Saima Mirza</td>
                    <td data-label="Department">Punjab BioEnergy Institute</td>
                    <td data-label="Industry Partner">RA Engineering Services (Pvt) Ltd 216- 2nd Floor Al-mashrik Center
                      Gulshan-e-Iqbal, Karachi</td>
                  </tr>
                  <tr>
                    <td data-label="Sr. #">2</td>
                    <td data-label="Project Investigator">Dr. Ehsan Ali</td>
                    <td data-label="Department">Punjab BioEnergy Institute</td>
                    <td data-label="Industry Partner">Fresh Food, Behram Village Risalpur Distt. Nowshera</td>
                  </tr>
                </tbody>
              </table>
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
