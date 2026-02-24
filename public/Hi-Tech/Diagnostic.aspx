<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Hi-Tech Diagnostic Center - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<main class="container mx-auto py-8 px-4">

  <!-- Page Header -->
  <div class="text-center mb-8 md:mb-12">
    <h1
      class="text-3xl sm:text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4 px-2">
      Diagnostic Facilities
    </h1>
    <div class="h-1 w-24 sm:w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
    <p class="mt-4 md:mt-6 text-gray-600 max-w-3xl mx-auto text-base md:text-lg px-4">
      Central Hi-Tech Laboratory - ISO 9001:2015 Certified
    </p>
  </div>


  <!-- Introduction Section -->
  <div class="bg-white rounded-xl md:rounded-2xl shadow-xl p-4 sm:p-6 md:p-10 mb-8 md:mb-12 border border-gray-200">
    <div class="flex items-center mb-4 md:mb-6">
      <div class="bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] p-2 md:p-3 rounded-lg mr-3 md:mr-4">
        <svg class="w-6 h-6 md:w-8 md:h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24"
          xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
        </svg>
      </div>
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c]">Introduction</h2>
    </div>
    <section class="max-w-7xl mx-auto px-0 sm:px-4 py-6 md:py-10 space-y-8 md:space-y-14">

      <!-- Section 1 -->
      <div class="grid md:grid-cols-2 gap-8 items-center">
        <div>
          <h2 class="text-2xl font-bold text-[var(--primary)] mb-3">
            Central Hi-Tech Laboratory � UAF
          </h2>
          <p class="text-gray-700 leading-relaxed">
            The Central Hi-Tech Laboratory is the principal analytical laboratory of the University of Agriculture
            Faisalabad (UAF), functioning under the Office of Research, Innovation & Commercialization (ORIC).
            Established in 1997 through the Japan International Cooperation Agency (JICA) program, it provides
            advanced research facilities to students, researchers, and industry professionals.
          </p>
        </div>

        <div class="flex justify-center">
          <img src="../assets/img/high-tech/UV-Visible_spectrophotometer.JPG"
            class="rounded-xl shadow-lg w-full object-cover" alt="UV-Visible Spectrophotometer" />
        </div>
      </div>


      <!-- Section 2 -->
      <div class="grid md:grid-cols-2 gap-8 items-center">
        <div class="order-2 md:order-1 flex justify-center">
          <img src="../assets/img/high-tech/Scanning electron microscope.jpg"
            class="rounded-xl shadow-lg w-full object-cover" alt="Scanning Electron Microscope" />
        </div>

        <div class="order-1 md:order-2">
          <h2 class="text-2xl font-bold text-[var(--primary)] mb-3">
            Advanced Research Equipment
          </h2>
          <p class="text-gray-700 leading-relaxed">
            The laboratory houses state-of-the-art scientific equipment including Scanning Electron Microscopes,
            Transmission Electron Microscopes, Atomic Absorption Spectrophotometers, Gas Chromatographs, and High
            Pressure Liquid Chromatographs, enabling high-quality analytical and research outputs.
          </p>
        </div>
      </div>


      <!-- Section 3 -->
      <div class="grid md:grid-cols-2 gap-8 items-center">
        <div>
          <h2 class="text-2xl font-bold text-[var(--primary)] mb-3">
            Supporting Researchers Nationwide
          </h2>
          <p class="text-gray-700 leading-relaxed">
            Apart from UAF scholars, the lab has supported researchers from prestigious institutions across Punjab and
            KPK including GCU Faisalabad, PMAS Arid Agriculture University, Islamia University Bahawalpur, BZU Multan,
            UET Taxila, Lahore College for Women University, University of Gujrat, Allama Iqbal Open University, GIK
            Institute and many others.
          </p>
        </div>

        <div class="flex justify-center">
          <img src="../assets/img/high-tech/Gas chromatograph.jpg" class="rounded-xl shadow-lg w-full object-cover"
            alt="Gas Chromatograph" />
        </div>
      </div>


      <!-- Section 4 -->
      <div class="grid md:grid-cols-2 gap-8 items-center">
        <div class="order-2 md:order-1 flex justify-center">
          <img src="../assets/img/high-tech/Atomic absorption spectrophotometer.jpg"
            class="rounded-xl shadow-lg w-full object-cover" alt="Atomic Absorption Spectrophotometer" />
        </div>

        <div class="order-1 md:order-2">
          <h2 class="text-2xl font-bold text-[var(--primary)] mb-3">
            ISO Certified Excellence
          </h2>
          <p class="text-gray-700 leading-relaxed">
            We proudly announce that this is the only ISO-certified laboratory within UAF, holding ISO 9001:2015
            certification by TUV Austria Bureau of Inspection & Certification. The lab ensures a strong Quality
            Management System to support scientific research, analytical services, and hands-on skill development
            training.
          </p>
        </div>
      </div>

    </section>

  </div>

  <!-- Equipment Section -->
  <div class="mb-8 md:mb-12">
    <h2 class="text-2xl md:text-3xl font-bold text-center text-[#1a4d7c] mb-6 md:mb-8 px-4">Equipment</h2>
    <p class="text-sm md:text-base text-gray-700 mb-6 md:mb-10 max-w-4xl py-4 mx-auto px-4 leading-relaxed">
      The Central Hi-Tech Laboratory (CHTL) was established in 1997 at the Faculty of Agriculture, University of
      Agriculture, Faisalabad with the cooperation of Japan International Co-operation Agency (JICA). This
      Laboratory
      houses some high technology instrumentation and has a potential to generate internationally accepted
      analytical
      data. Students/researchers from different departments and institutes, UAF analyzed their samples. The analysis
      facility is also extended to the students/researchers from other universities and research organizations.
      Apart
      from the analysis mandate, this laboratory also offered one week customized hands on training for
      students/researchers/faculty on various modern analytical instrumentation.
    </p>

    <!-- Equipment Cards Grid -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 sm:gap-6">

      <!-- Card 1: Scanning Electron Microscope -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/interchange format.jpg" alt="Scanning Electron Microscope"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Scanning Electron Microscope</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Plant and animal tissues, microorganisms, soil samples, fibrous materials, alloys and other such
            materials
            can be observed on Scanning Electron Microscope. This microscope has resolution of 4nm and magnification
            range of x20 to x200,000.
          </p>
        </div>
      </div>

      <!-- Card 2: Atomic Absorption Spectrophotometer -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Atomic Absorption.jpg" alt="Atomic Absorption Spectrophotometer"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Atomic Absorption Spectrophotometer</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Variety of elements and minerals can be analyzed by Atomic Absorption Spectrophotometer. The available
            Hallow Cathode Lamps required for analysis of different substances include Ca, Cd, Co, Cr, Cu, Fe, Mg,
            Mn,
            Ni, Pb and Zn.
          </p>
        </div>
      </div>

      <!-- Card 3: Gas Chromatograph -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Gas Chromatograph.png" alt="Gas Chromatograph"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Gas Chromatograph</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Fatty acids, aldehydes, ketones, essential oils, hydrocarbons, pesticides, insecticides and variety of
            organic compounds can be analyzed by GC. It is equipped with capillary columns, Flame Ionization
            Detector
            (FID) and Electron Capture Detector (ECD).
          </p>
        </div>
      </div>

      <!-- Card 4: High Pressure Liquid Chromatograph -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/High Pressure Liquid.jpg" alt="High Pressure Liquid Chromatograph"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">High Pressure Liquid Chromatograph</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Toxins, vitamins, drugs, steroids, sugars and variety of organic compounds can be analyzed by HPLC. The
            facility of different modes of HPLC (Isocratic & Gradient) using C-8 & C-18 columns is also available
            along
            with detectors including UV/Visible, Fluorescent, Refractive Index & Conductivity detector.
          </p>
        </div>
      </div>

      <!-- Card 5: Ultra-Centrifuges -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Ultra-Centrifuges.png" alt="Ultra-Centrifuges"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Ultra-Centrifuges</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Ultra-centrifuge is used to separate and isolate compounds like proteins, enzymes, nucleic acids,
            carbohydrates etc. Two ultra-centrifuges 65� and CP100a has a maximum speed of 65,000 and 100,000,
            respectively. Lyophilizer/Deep Freezing Apparatus - Variety of biological samples can be crystallized
            /lyophilized at -60�C under vacuum condition for long term storage.
          </p>
        </div>
      </div>

      <!-- Card 6: UV-Visible Spectrophotometer -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/UV-Visible.jpg" alt="UV-Visible Spectrophotometer"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">UV-Visible Spectrophotometer</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Double beam Spectrophotometer is capable of spectral analysis of nucleic acids, proteins and other
            organic
            compounds using advanced software. Liquid Nitrogen Generator - It is used to produce liquid nitrogen.
            The
            capacity of this LNG is 10L/day.
          </p>
        </div>
      </div>

      <!-- Card 7: Oscilloscope -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Oscilloscope.jpg" alt="Oscilloscope"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Oscilloscope</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            An oscilloscope is a laboratory instrument commonly used to display and analyze the wave form of
            electronic
            signals. In effect, the device draws a graph of the instantaneous signal voltage as a function of time.
          </p>
        </div>
      </div>

      <!-- Card 8: In-circuit IC Tester -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/In-circuit IC Tester.jpg" alt="In-circuit IC Tester"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">In-circuit IC Tester</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            In-circuit tester (ICT) is a testing device where an electrical probe tests, checking for shorts, opens,
            resistance, capacitance, and other basic quantities which will show whether the assembly was correctly
            fabricated.
          </p>
        </div>
      </div>

      <!-- Card 9: Refractometer -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Refractometer.jpg" alt="Refractometer"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Refractometer</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Refractive index of solutions can be measured digitally with high precision and accuracy.
          </p>
        </div>
      </div>

      <!-- Card 10: Camera Fitted Microscopes -->
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="h-90 bg-gradient-to-br from-gray-100 to-gray-200 flex items-center justify-center overflow-hidden">
          <img src="../assets/img/high-tech/Camera Fitted Microscopes.jpg" alt="Camera Fitted Microscopes"
            class="w-full h-full object-cover hover:scale-110 transition-transform duration-300">
        </div>
        <div class="p-4 sm:p-6">
          <h3 class="text-lg sm:text-xl font-bold text-[#1a4d7c] mb-2 sm:mb-3">Camera Fitted Microscopes</h3>
          <p class="text-sm sm:text-base text-gray-700 leading-relaxed">
            Stereo, Phase contrast and Polarizing microscopes are available to observe variety of specimens. The
            facility of soft copy of the images is also available with the help of digital camera attached with
            microscopes.
          </p>
        </div>
      </div>

    </div>
  </div>

  <!-- Zetasizer Section -->
  <div
    class="bg-gradient-to-br from-[#1a4d7c] to-[#3674B5] rounded-xl md:rounded-2xl shadow-2xl overflow-hidden mb-8 md:mb-12 text-white">
    <div class="p-4 sm:p-6 md:p-8 lg:p-12">
      <div class="text-center mb-6 md:mb-8">
        <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-2 px-4">ZETASIZER</h2>
        <p class="text-lg sm:text-xl text-white/90 px-4">Recently Added in the Central Hi-Tech Laboratory</p>
        <p class="text-base sm:text-lg text-white/80 mt-2 px-4">University of Agriculture, Faisalabad</p>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8 items-center">
        <!-- Image -->
        <div class="bg-white/10 backdrop-blur-sm rounded-xl p-4 hover:bg-white/20 transition-all duration-300">
          <img src="../assets/img/high-tech/Zetasizer.jpg" alt="Zetasizer" class="w-full h-auto rounded-lg shadow-lg">
        </div>

        <!-- Content -->
        <div class="space-y-4">
          <div class="bg-white/10 backdrop-blur-sm rounded-xl p-4 sm:p-6">
            <h3 class="text-xl md:text-2xl font-bold mb-3 md:mb-4">Introduction</h3>
            <p class="text-sm sm:text-base text-white/90 leading-relaxed">
              Light-scattering instrument for characterizing particles in liquid dispersions. Measures particle
              size,
              zeta potential, electrophoretic mobility, molecular mass and transmittance. Particle size, zeta
              potential,
              and molecular mass are determined by measuring dynamic light scattering (DLS), electrophoretic light
              scattering (ELS), and static light scattering (SLS), while the transmittance is determined by using
              light
              transmission. The Litesizer� 500 offers the full suite of measurements and has three detection angles
              available, automates the adjustment of the sample's pH directly in the measurement cuvette, enabling
              the
              user to perform pH ramps in a simple and accurate manner.
            </p>
          </div>
        </div>
      </div>

      <!-- Specifications Grid -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 mt-6 md:mt-8">

        <!-- Particle Sizer -->
        <div class="bg-white/10 backdrop-blur-sm rounded-xl p-4 sm:p-6 hover:bg-white/20 transition-all duration-300">
          <h4 class="text-lg md:text-xl font-bold mb-3 md:mb-4 border-b border-white/30 pb-2">Particle Sizer</h4>
          <ul class="space-y-1.5 md:space-y-2 text-xs sm:text-sm text-white/90">
            <li>� Measurement angles: three angles (15, 90, 175)</li>
            <li>� Measurement angle selection: auto and manual</li>
            <li>� Size Range: 0.3 nm � 10 �m (diameter)</li>
            <li>� Min. sample volume: 3 � 12 �L</li>
            <li>� Sensitivity: 0.1 mg/mL to 1 mg/mL</li>
            <li>� Accuracy & Repeatability: Better than � 2 %</li>
          </ul>
        </div>

        <!-- Zeta Potential -->
        <div class="bg-white/10 backdrop-blur-sm rounded-xl p-4 sm:p-6 hover:bg-white/20 transition-all duration-300">
          <h4 class="text-lg md:text-xl font-bold mb-3 md:mb-4 border-b border-white/30 pb-2">Zeta Potential</h4>
          <ul class="space-y-1.5 md:space-y-2 text-xs sm:text-sm text-white/90">
            <li>� Zeta Potential Range: > � 1000 mV</li>
            <li>� Measuring Angle: 15�</li>
            <li>� Minimum sample Volume: 50 �L</li>
            <li>� Conductivity Accuracy: � 10 %</li>
            <li>� Repeatability: � 3 %</li>
            <li>� Size range: 3.8 nm � 100 �m (diameter)</li>
          </ul>
        </div>

        <!-- Molecular Mass -->
        <div class="bg-white/10 backdrop-blur-sm rounded-xl p-4 sm:p-6 hover:bg-white/20 transition-all duration-300">
          <h4 class="text-lg md:text-xl font-bold mb-3 md:mb-4 border-b border-white/30 pb-2">Molecular Mass</h4>
          <ul class="space-y-1.5 md:space-y-2 text-xs sm:text-sm text-white/90">
            <li>� Measuring range (particle size): up to 50 nm (diameter)</li>
            <li>� Measuring range (mass): 980 Da � 20 MDa</li>
            <li>� Measurement angle: 90�</li>
            <li>� Repeatability: � 5 %</li>
            <li>� Accuracy: � 10 %</li>
          </ul>
        </div>

      </div>

      <div class="text-center mt-6 md:mt-8 px-4">
        <p class="text-base md:text-lg font-semibold">OFFICE OF RESEARCH, INNOVATION & COMMERCIALIZATION</p>
        <p class="text-sm md:text-base text-white/80 italic">Transforming Concepts into Impacts</p>
      </div>
    </div>
  </div>

  <!-- Hi-Tech Staff Section -->
  <!-- <div class="mb-8 md:mb-12">
    <h2 class="text-2xl md:text-3xl font-bold text-center text-[#1a4d7c] mb-6 md:mb-8 px-4">Hi-Tech Laboratory Staff
    </h2>
    <div class="space-y-4 md:space-y-6"> -->

      <!-- Staff Member 1 -->
       <!-- <a href="https://web.uaf.edu.pk/FacultyProfile/Profile/489"  target="_blank">
      <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="flex flex-col md:flex-row">
          <div class="md:w-48 bg-[#002A5C] flex items-center justify-center p-4">
            <img src="../assets/img/clients/hi_dr_Adil.jpg" alt="Dr. Raja Adil Sarfraz"
              class="w-full h-48 md:h-auto object-cover rounded-lg">
          </div>
          <div class="flex-1 bg-[#CED7E6] p-4 sm:p-6">
            <h4
              class="bg-[#002A5C] text-white inline-block px-3 sm:px-4 py-1.5 sm:py-2 rounded mb-3 sm:mb-4 font-bold text-base sm:text-lg">
              Dr. Raja Adil
              Sarfraz</h4>
            <div class="text-[#002A5C] space-y-1.5 sm:space-y-2 text-sm sm:text-base">
              <p><strong>Position:</strong> Assistant Professor / Officer Incharge</p>
              <p><strong>Email:</strong> <a href="mailto:rajaadilsarfraz@gmail.com"
                  class="text-[#3674B5] hover:underline break-all">rajaadilsarfraz@gmail.com</a></p>
              <p><strong>Contact:</strong> Ext.: 3602</p>
            </div>
          </div>
        </div>
      </div>
</a> -->
      <!-- Staff Member 2 -->
      <!-- <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="flex flex-col md:flex-row">
          <div class="md:w-48 bg-[#002A5C] flex items-center justify-center p-4">
            <img src="../assets/img/clients/hi_fazil.png" alt="Mr. Syed Fazil Bin Farukh"
              class="w-full h-48 md:h-auto object-cover rounded-lg">
          </div>
          <div class="flex-1 bg-[#CED7E6] p-4 sm:p-6">
            <h4
              class="bg-[#002A5C] text-white inline-block px-3 sm:px-4 py-1.5 sm:py-2 rounded mb-3 sm:mb-4 font-bold text-base sm:text-lg">
              Mr. Syed Fazil
              Bin
              Farukh</h4>
            <div class="text-[#002A5C] space-y-1.5 sm:space-y-2 text-sm sm:text-base">
              <p><strong>Position:</strong> Lecturer</p>
              <p><strong>Email:</strong> <a href="mailto:fazil.farukh@uaf.edu.pk"
                  class="text-[#3674B5] hover:underline break-all">fazil.farukh@uaf.edu.pk</a></p>
              <p><strong>Contact:</strong> Ext.: 3602</p>
            </div>
          </div>
        </div>
      </div> -->

      <!-- Staff Member 3 -->
      <!-- <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="flex flex-col md:flex-row">
          <div class="md:w-48 bg-[#002A5C] flex items-center justify-center p-4">
            <img src="../assets/img/clients/hi_aq.png" alt="Dr. Abdul Qudoos"
              class="w-full h-48 md:h-auto object-cover rounded-lg">
          </div>
          <div class="flex-1 bg-[#CED7E6] p-4 sm:p-6">
            <h4
              class="bg-[#002A5C] text-white inline-block px-3 sm:px-4 py-1.5 sm:py-2 rounded mb-3 sm:mb-4 font-bold text-base sm:text-lg">
              Dr. Abdul
              Qudoos
            </h4>
            <div class="text-[#002A5C] space-y-1.5 sm:space-y-2 text-sm sm:text-base">
              <p><strong>Position:</strong> Research Officer</p>
              <p><strong>Email:</strong> <a href="mailto:aqudoos@uaf.edu.pk"
                  class="text-[#3674B5] hover:underline break-all">aqudoos@uaf.edu.pk</a></p>
              <p><strong>Contact:</strong> Ext.: 3602</p>
            </div>
          </div>
        </div>
      </div> -->

      <!-- Staff Member 4 -->
      
      <!-- <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="flex flex-col md:flex-row">
          <div class="md:w-48 bg-[#002A5C] flex items-center justify-center p-4">
            <img src="../assets/img/clients/hi_irfan.jpg" alt="Mr. Irfan Sabir"
              class="w-full h-48 md:h-auto object-cover rounded-lg">
          </div>
          <div class="flex-1 bg-[#CED7E6] p-4 sm:p-6">
            <h4
              class="bg-[#002A5C] text-white inline-block px-3 sm:px-4 py-1.5 sm:py-2 rounded mb-3 sm:mb-4 font-bold text-base sm:text-lg">
              Mr. Irfan
              Sabir
            </h4>
            <div class="text-[#002A5C] space-y-1.5 sm:space-y-2 text-sm sm:text-base">
              <p><strong>Position:</strong> Assistant Executive Engineer (on Study Leaves)</p>
              <p><strong>Email:</strong> <a href="mailto:irfansabirjlm@gmail.com"
                  class="text-[#3674B5] hover:underline break-all">irfansabirjlm@gmail.com</a></p>
              <p><strong>Contact:</strong> Ext.: 3602</p>
            </div>
          </div>
        </div>
      </div> -->

      <!-- Staff Member 5 -->
      <!-- <div
        class="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 border border-gray-200">
        <div class="flex flex-col md:flex-row">
          <div class="md:w-48 bg-[#002A5C] flex items-center justify-center p-4">
            <img src="../assets/img/Staff/Profile.png" alt="Dr. Razia Riaz"
              class="w-full h-48 md:h-auto object-cover rounded-lg">
          </div>
          <div class="flex-1 bg-[#CED7E6] p-4 sm:p-6">
            <h4
              class="bg-[#002A5C] text-white inline-block px-3 sm:px-4 py-1.5 sm:py-2 rounded mb-3 sm:mb-4 font-bold text-base sm:text-lg">
              Dr. Razia Riaz
            </h4>
            <div class="text-[#002A5C] space-y-1.5 sm:space-y-2 text-sm sm:text-base">
              <p><strong>Position:</strong> Research Officer</p>
              <p><strong>Email:</strong> <a href="mailto:drraziariaz@yahoo.com"
                  class="text-[#3674B5] hover:underline break-all">drraziariaz@yahoo.com</a></p>
              <p><strong>Contact:</strong> Ext.: 3602</p>
            </div>
          </div>
        </div>
      </div> -->

    </div>
  </div>

</main>

<style>
  /* Responsive adjustments */
  @media (max-width: 768px) {
    .text-justify {
      text-align: left;
    }
  }

  /* Smooth animations */
  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(20px);
    }

    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .bg-white,
  .bg-gradient-to-br {
    animation: fadeInUp 0.6s ease-out;
  }

  /* Image hover effects */
  img {
    transition: transform 0.3s ease;
  }

  .hover\:scale-110:hover img {
    transform: scale(1.1);
  }
</style>
</asp:Content>
