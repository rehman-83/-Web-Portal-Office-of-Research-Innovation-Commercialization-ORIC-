<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Downloads - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <?php
$pageTitle = "Downloads";
?>

<main class="container mx-auto py-8 px-4">
  
  <!-- Page Header -->
  <div class="text-center mb-12">
    <h1 class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
      Downloads
    </h1>
    <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
    <p class="mt-6 text-gray-600 max-w-3xl mx-auto text-lg">
      Access important documents, proformas, and resources for faculty and research students.
    </p>
  </div>

  <!-- Downloads Content -->
  <div class="max-w-4xl mx-auto">
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-10 border border-gray-200">
      <ol class="space-y-6 text-gray-700 text-lg">
        
        <!-- Item 1 -->
        <li class="flex items-start">
          <span class="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white rounded-full font-bold mr-4 mt-1">1</span>
          <div class="flex-1">
            <a href="../assets/files/Proforma/Reimbursement of Printing Charges.pdf" 
               class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
               target="_blank">
              <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
              </svg>
              Reimbursement of IF Publication For Faculty
            </a>
          </div>
        </li>

        <!-- Item 2 -->
        <li class="flex items-start">
          <span class="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white rounded-full font-bold mr-4 mt-1">2</span>
          <div class="flex-1">
            <strong class="text-gray-800 text-lg block mb-3">Proformas:</strong>
            <ul class="ml-6 space-y-3">
              <li class="flex items-start">
                <span class="text-[#3674B5] mr-3 mt-1">•</span>
                <a href="../assets/files/Proforma/PERFORMA for PARB 25-02-2022.pdf" 
                   class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
                   target="_blank">
                  <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                  </svg>
                  Project Honorarium 2022
                </a>
              </li>
              <li class="flex items-start">
                <span class="text-[#3674B5] mr-3 mt-1">•</span>
                <a href="../assets/files/Proforma/Honorarium Performa revised.pdf" 
                   class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
                   target="_blank">
                  <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path>
                  </svg>
                  Project Honorarium 2023
                </a>
              </li>
            </ul>
          </div>
        </li>

        <!-- Item 3 -->
        <li class="flex items-start">
          <span class="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white rounded-full font-bold mr-4 mt-1">3</span>
          <div class="flex-1">
            <a href="../assets/files/Proforma/Research Associate.docx" 
               class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
               target="_blank">
              <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
              </svg>
              Advertisement of Post of Res. Officer/Res. Associates/Res. Fellow
            </a>
          </div>
        </li>

        <!-- Item 4 -->
        <li class="flex items-start">
          <span class="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white rounded-full font-bold mr-4 mt-1">4</span>
          <div class="flex-1">
            <a href="../assets/files/Proforma/SCORE CARD.docx" 
               class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
               target="_blank">
              <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
              </svg>
              Recruitment of Staff in Res. Projects
            </a>
          </div>
        </li>

        <!-- Item 5 -->
        <li class="flex items-start">
          <span class="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white rounded-full font-bold mr-4 mt-1">5</span>
          <div class="flex-1">
            <a href="../assets/files/Proforma/Partial Support Proforma.docx" 
               class="text-[#3674B5] font-semibold hover:text-[#1a4d7c] hover:underline transition-all duration-300 flex items-center group"
               target="_blank">
              <svg class="w-5 h-5 mr-2 text-[#3674B5] group-hover:text-[#1a4d7c]" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
              </svg>
              Partial Research Support To Postgraduate Students
            </a>
          </div>
        </li>

      </ol>
    </div>

    <!-- Info Card -->
    <!-- <div class="mt-8 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-xl p-6 md:p-8 border-l-4 border-[#3674B5]">
      <div class="flex items-start">
        <svg class="w-6 h-6 text-[#3674B5] mr-3 mt-1 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
        </svg>
        <div>
          <h3 class="text-lg font-semibold text-[#1a4d7c] mb-2">Need Help?</h3>
          <p class="text-gray-700">If you have any questions or need assistance with these documents, please contact ORIC at <a href="mailto:oric@uaf.edu.pk" class="text-[#3674B5] hover:underline font-semibold">oric@uaf.edu.pk</a></p>
        </div>
      </div>
    </div>
  </div> -->

</main>

<style>
/* Responsive adjustments */
@media (max-width: 640px) {
  ol li > div a {
    font-size: 0.95rem;
  }
  
  .flex-shrink-0 {
    width: 2rem;
    height: 2rem;
    font-size: 0.875rem;
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

.bg-white {
  animation: fadeInUp 0.6s ease-out;
}
</style>


</asp:Content>
