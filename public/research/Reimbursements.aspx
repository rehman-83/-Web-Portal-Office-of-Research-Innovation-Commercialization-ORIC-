<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Research Reimbursements - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<style>
  /* Animation */
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

  .fade-in-up {
    animation: fadeInUp 0.8s ease-out forwards;
  }

  /* Introduction Image */
  .intro-image {
    width: 100%;
    height: auto;
    border-radius: 1rem;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    margin-bottom: 1.5rem;
  }

  /* Regulation Card */
  .regulation-card {
    position: relative;
    padding-left: 3rem;
    margin-bottom: 1.5rem;
    padding-bottom: 1.5rem;
    border-bottom: 1px solid #e2e8f0;
  }

  .regulation-card:last-child {
    border-bottom: none;
    padding-bottom: 0;
  }

  .regulation-number {
    position: absolute;
    left: 0;
    top: 0;
    width: 2.5rem;
    height: 2.5rem;
    background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 1.1rem;
    box-shadow: 0 4px 6px rgba(54, 116, 181, 0.3);
  }

  /* Stats Card */
  .stats-card {
    transition: all 0.3s ease;
  }

  .stats-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  }

  /* Responsive Design */
  @media (max-width: 768px) {
    .regulation-card {
      padding-left: 2.5rem;
    }

    .regulation-number {
      width: 2rem;
      height: 2rem;
      font-size: 0.9rem;
    }
  }
</style>

<main class="container mx-auto px-4 py-8 md:py-12">
  <div class="max-w-7xl mx-auto">
    <!-- Page Header -->
    <div class="text-center mb-8 fade-in-up">
      <h1 class="text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-2">Reimbursement of Printing Charges</h1>
      <p class="text-gray-600">Supporting Researchers in Publishing Quality Research</p>
    </div>

    <!-- Statistics Overview -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8 fade-in-up">
      <div class="stats-card bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-money-bill-wave text-4xl opacity-80"></i>
          <span class="text-xs font-semibold text-black bg-white bg-opacity-20 px-2 py-1 rounded">Support</span>
        </div>
        <h3 class="text-xl font-semibold mb-1">Financial Aid</h3>
        <p class="text-blue-100 text-sm">Full reimbursement of publication charges</p>
      </div>

      <div class="stats-card bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-journal-whills text-4xl opacity-80"></i>
          <span class="text-xs font-semibold text-black bg-white bg-opacity-20 px-2 py-1 rounded">Quality</span>
        </div>
        <h3 class="text-xl font-semibold mb-1">Impact Factor</h3>
        <p class="text-green-100 text-sm">Support for high-impact journal publications</p>
      </div>

      <div class="stats-card bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-xl shadow-lg text-white">
        <div class="flex items-center justify-between mb-3">
          <i class="fas fa-chart-line text-4xl opacity-80"></i>
          <span class="text-xs font-semibold text-black bg-white bg-opacity-20 px-2 py-1 rounded">Growth</span>
        </div>
        <h3 class="text-xl font-semibold mb-1">Enhanced Output</h3>
        <p class="text-purple-100 text-sm">Significant increase in quality publications</p>
      </div>
    </div>

    <!-- Introduction Section -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 mb-8 fade-in-up">
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
        <i class="fas fa-info-circle mr-2"></i>Introduction
      </h2>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 items-center mb-6">
        <!-- Image -->
        <div class="order-2 lg:order-1">
          <img src="assets/img/research/Reimbursements.jpg" 
               alt="Reimbursement of Printing Charges" 
               class="intro-image">
        </div>

        <!-- Text Content -->
        <div class="order-1 lg:order-2">
          <p class="text-gray-700 leading-relaxed text-justify mb-4">
            University Ranking Agencies harvest data through research engines from the websites of the institutes 
            and categorize them according to their parameters including maximum number of publications in the 
            credit of the institute.
          </p>

          <p class="text-gray-700 leading-relaxed text-justify mb-4">
            Keeping in view the worth of printed information even in the modern digital era, <strong>ORIC</strong> 
            strives hard to maximize the number of scientific publications in the quality journals. For the 
            encouragement of having enhanced publication in his/her credit, financial assistance in terms of 
            <strong>"Reimbursement of Printing Charges"</strong> is also provided so that burden on the researchers 
            may be lessened.
          </p>

          <p class="text-gray-700 leading-relaxed text-justify">
            As a result of this initiative, number of high impact factor journal publications has enhanced many 
            folds as compared to local publications. Under this initiative, printing charges for research papers 
            are <strong>reimbursed on actual basis</strong>.
          </p>
        </div>
      </div>

      <!-- Key Benefits -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-8">
        <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-5 rounded-lg border-l-4 border-blue-500">
          <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
            <i class="fas fa-check-circle text-blue-600 mr-2"></i>
            Enhanced Publications
          </h4>
          <p class="text-gray-700 text-sm">
            Significant increase in high-impact factor journal publications compared to local publications.
          </p>
        </div>

        <div class="bg-gradient-to-r from-green-50 to-emerald-50 p-5 rounded-lg border-l-4 border-green-500">
          <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
            <i class="fas fa-check-circle text-green-600 mr-2"></i>
            Financial Relief
          </h4>
          <p class="text-gray-700 text-sm">
            Complete reimbursement of actual printing charges to reduce financial burden on researchers.
          </p>
        </div>

        <div class="bg-gradient-to-r from-purple-50 to-indigo-50 p-5 rounded-lg border-l-4 border-purple-500">
          <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
            <i class="fas fa-check-circle text-purple-600 mr-2"></i>
            Quality Focus
          </h4>
          <p class="text-gray-700 text-sm">
            Support exclusively for publications in recognized impact factor journals.
          </p>
        </div>

        <div class="bg-gradient-to-r from-orange-50 to-red-50 p-5 rounded-lg border-l-4 border-orange-500">
          <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
            <i class="fas fa-check-circle text-orange-600 mr-2"></i>
            University Ranking
          </h4>
          <p class="text-gray-700 text-sm">
            Contributes to improved university rankings through increased quality publications.
          </p>
        </div>
      </div>
    </div>

    <!-- Regulations Section -->
    <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 fade-in-up">
      <h2 class="text-2xl md:text-3xl font-bold text-[#1a4d7c] mb-6">
        <i class="fas fa-gavel mr-2"></i>Regulations
      </h2>

      <div class="bg-gradient-to-r from-yellow-50 to-orange-50 p-5 rounded-lg border-l-4 border-yellow-500 mb-8">
        <h4 class="font-semibold text-gray-800 mb-2 flex items-center">
          <i class="fas fa-exclamation-triangle text-yellow-600 mr-2"></i>
          Important Notice
        </h4>
        <p class="text-gray-700 text-sm">
          Please carefully read and follow all regulations for successful reimbursement of printing charges. 
          All submissions must be made through proper channel with complete documentation.
        </p>
      </div>

      <div class="space-y-0">
        <!-- Regulation 1 -->
        <div class="regulation-card">
          <div class="regulation-number">1</div>
          <div>
            <h3 class="text-lg font-semibold text-gray-900 mb-2">Submission Requirements</h3>
            <p class="text-gray-700 leading-relaxed text-justify">
              The <strong>Principal/Corresponding Author</strong> will submit the Invoice/Bill of his Research 
              Paper published in the Impact Factor Journal duly verified that the amount has been paid by him 
              from his own pocket to the Director ORIC along with copy of Research Paper through proper channel.
            </p>
            <div class="mt-3 bg-blue-50 p-3 rounded-lg">
              <p class="text-sm text-gray-700">
                <strong>Required Documents:</strong>
              </p>
              <ul class="text-sm text-gray-700 mt-2 space-y-1">
                <li class="flex items-start">
                  <i class="fas fa-angle-right text-blue-600 mt-1 mr-2"></i>
                  <span>Original Invoice/Bill (verified and paid from personal funds)</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-angle-right text-blue-600 mt-1 mr-2"></i>
                  <span>Copy of published research paper</span>
                </li>
                <li class="flex items-start">
                  <i class="fas fa-angle-right text-blue-600 mt-1 mr-2"></i>
                  <span>Submission through proper channel to Director ORIC</span>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!-- Regulation 2 -->
        <div class="regulation-card">
          <div class="regulation-number">2</div>
          <div>
            <h3 class="text-lg font-semibold text-gray-900 mb-2">Approval Process</h3>
            <p class="text-gray-700 leading-relaxed text-justify">
              The <strong>Director ORIC</strong> after scrutiny of status of Impact Factor Journal and approval 
              of the Vice Chancellor will submit the contingent bill to the Pre-Audit Section for reimbursement 
              of publication charges in full.
            </p>
            <div class="mt-3 bg-green-50 p-3 rounded-lg">
              <p class="text-sm text-gray-700">
                <strong>Approval Steps:</strong>
              </p>
              <div class="flex items-center justify-between mt-3 text-xs text-gray-700">
                <div class="text-center">
                  <div class="w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white mb-2 mx-auto">
                    <i class="fas fa-user-check"></i>
                  </div>
                  <p>Director ORIC<br>Scrutiny</p>
                </div>
                <i class="fas fa-arrow-right text-green-500 text-xl"></i>
                <div class="text-center">
                  <div class="w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white mb-2 mx-auto">
                    <i class="fas fa-stamp"></i>
                  </div>
                  <p>Vice Chancellor<br>Approval</p>
                </div>
                <i class="fas fa-arrow-right text-green-500 text-xl"></i>
                <div class="text-center">
                  <div class="w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white mb-2 mx-auto">
                    <i class="fas fa-file-invoice-dollar"></i>
                  </div>
                  <p>Pre-Audit<br>Section</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Regulation 3 -->
        <div class="regulation-card">
          <div class="regulation-number">3</div>
          <div>
            <h3 class="text-lg font-semibold text-gray-900 mb-2">Currency & Exchange Rate</h3>
            <p class="text-gray-700 leading-relaxed text-justify">
              The reimbursement of publication charges will be made in <strong>Pakistani Rupees</strong> for 
              local as well as Foreign Journals. The amount of Invoice/Bill in Foreign Currency will be converted 
              in Pakistani Rupees at the Exchange Rate of date of issue of Invoice/Bill.
            </p>
            <div class="mt-3 grid grid-cols-1 md:grid-cols-2 gap-3">
              <div class="bg-purple-50 p-3 rounded-lg">
                <h5 class="font-semibold text-gray-800 text-sm mb-1 flex items-center">
                  <i class="fas fa-rupee-sign text-purple-600 mr-2"></i>
                  Local Journals
                </h5>
                <p class="text-sm text-gray-700">
                  Payment directly in Pakistani Rupees as per the invoice amount.
                </p>
              </div>
              <div class="bg-indigo-50 p-3 rounded-lg">
                <h5 class="font-semibold text-gray-800 text-sm mb-1 flex items-center">
                  <i class="fas fa-dollar-sign text-indigo-600 mr-2"></i>
                  Foreign Journals
                </h5>
                <p class="text-sm text-gray-700">
                  Converted to PKR using exchange rate on invoice date.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Additional Information -->
      <div class="bg-gradient-to-r from-blue-50 to-indigo-50 p-6 rounded-xl border-l-4 border-blue-500 mt-8">
        <h4 class="font-semibold text-gray-800 mb-3 flex items-center">
          <i class="fas fa-lightbulb text-blue-600 mr-2"></i>
          Important Guidelines
        </h4>
        <ul class="space-y-2 text-gray-700">
          <li class="flex items-start">
            <i class="fas fa-chevron-right text-blue-600 mt-1 mr-3"></i>
            <span>Ensure the journal has a recognized impact factor before publication</span>
          </li>
          <li class="flex items-start">
            <i class="fas fa-chevron-right text-blue-600 mt-1 mr-3"></i>
            <span>Keep original receipts and payment proofs for verification</span>
          </li>
          <li class="flex items-start">
            <i class="fas fa-chevron-right text-blue-600 mt-1 mr-3"></i>
            <span>Submit all documents through proper departmental channel</span>
          </li>
          <li class="flex items-start">
            <i class="fas fa-chevron-right text-blue-600 mt-1 mr-3"></i>
            <span>Reimbursement is provided on actual cost basis with no upper limit</span>
          </li>
          <li class="flex items-start">
            <i class="fas fa-chevron-right text-blue-600 mt-1 mr-3"></i>
            <span>For foreign currency payments, note the invoice date for exchange rate calculation</span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</main>

</asp:Content>
