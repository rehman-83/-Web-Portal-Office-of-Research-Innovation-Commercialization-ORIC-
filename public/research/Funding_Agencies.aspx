<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Funding Agencies - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

// Funding agencies data
$fundingAgencies = [
    'international' => [
        ['name' => 'NSF China', 'url' => 'https://www.nsfc.gov.cn/english/site_1/funding/E1/2022/01-12/25901.html', 'country' => 'China', 'icon' => 'fa-flag'],
        ['name' => 'NSF USA Research Grants', 'url' => 'https://www.nsf.gov/science-matters/nsf-101-graduate-postdoctoral-researcher-funding', 'country' => 'USA', 'icon' => 'fa-graduation-cap'],
        ['name' => 'International Foundation for Science (IFS)', 'url' => 'https://www.ifs.se/ifs-grantees/', 'country' => 'Sweden', 'icon' => 'fa-flask'],
        ['name' => 'Tubitak, Turkey', 'url' => 'https://tubitak.gov.tr/en/funds/academic/national-support-programs/1001-scientific-and-technological-research-projects-funding-program', 'country' => 'Turkey', 'icon' => 'fa-microscope'],
        ['name' => 'NIH-USA, Fogarty International Center', 'url' => 'https://www.fic.nih.gov/Funding', 'country' => 'USA', 'icon' => 'fa-heartbeat'],
        ['name' => 'NIH Fogarty Int. Center: Infectious Disease', 'url' => 'https://www.fic.nih.gov/Programs/Pages/infectious-disease.aspx', 'country' => 'USA', 'icon' => 'fa-virus'],
        ['name' => 'CDC, USA', 'url' => 'https://www.cdc.gov/grants/applying/eligibility.html', 'country' => 'USA', 'icon' => 'fa-clinic-medical'],
        ['name' => 'USAID', 'url' => 'https://www.grants.gov/learn-grants/grant-making-agencies/u-s-agency-for-international-development-usaid', 'country' => 'USA', 'icon' => 'fa-hands-helping'],
        ['name' => 'USDA', 'url' => 'https://www.nifa.usda.gov/grants/funding-opportunities', 'country' => 'USA', 'icon' => 'fa-seedling'],
        ['name' => 'IFS (Sweden)', 'url' => 'http://www.ifs.se/', 'country' => 'Sweden', 'icon' => 'fa-university'],
        ['name' => 'UK AID', 'url' => 'https://www.ukaiddirect.org/', 'country' => 'UK', 'icon' => 'fa-pound-sign'],
        ['name' => 'Fleming Fund', 'url' => 'https://www.flemingfund.org/', 'country' => 'UK', 'icon' => 'fa-pills'],
        ['name' => 'Australian Aid Direct Aid Program (DAP)', 'url' => 'https://www.dfat.gov.au/people-to-people/direct-aid-program/direct-aid-program', 'country' => 'Australia', 'icon' => 'fa-globe-asia'],
        ['name' => 'Grand Challenges Explorations (GCE)', 'url' => 'https://gcgh.grandchallenges.org/about', 'country' => 'International', 'icon' => 'fa-lightbulb'],
        ['name' => 'IsDB, Engage Program', 'url' => 'https://www.isdb-engage.org/en/page/call-for-innovation-via-transform-fund-en', 'country' => 'Islamic Development Bank', 'icon' => 'fa-handshake'],
        ['name' => 'Grand Challenges Canada (GCC)', 'url' => 'https://www.grandchallenges.ca/funding-opportunities/', 'country' => 'Canada', 'icon' => 'fa-maple-leaf'],
        ['name' => 'The Bill & Melinda Gates Foundation', 'url' => 'https://www.gatesfoundation.org/', 'country' => 'USA', 'icon' => 'fa-donate'],
        ['name' => 'Horizon-2020 European Union Grants', 'url' => 'https://www.ese-hormones.org/what-we-do/research/european-research-funding/your-funding-journey/horizon-europe/', 'country' => 'EU', 'icon' => 'fa-euro-sign'],
        ['name' => 'GCRF, UK', 'url' => 'https://www.ukri.org/what-we-offer/international-funding/global-challenges-research-fund/', 'country' => 'UK', 'icon' => 'fa-globe'],
        ['name' => 'ISESCO', 'url' => 'https://www.comstech.org/comstech-isesco-joint-research-grants-program/', 'country' => 'Islamic Organization', 'icon' => 'fa-book-open'],
        ['name' => 'CAS China', 'url' => 'https://english.cas.cn/', 'country' => 'China', 'icon' => 'fa-atom'],
        ['name' => 'ANSO China', 'url' => 'http://www.anso.org.cn/', 'country' => 'China', 'icon' => 'fa-network-wired'],
        ['name' => 'CDC China', 'url' => 'https://www.chinacdc.cn/en/', 'country' => 'China', 'icon' => 'fa-hospital'],
        ['name' => 'German Research Grants', 'url' => 'https://www.bosch-stiftung.de/en/support-we-offer', 'country' => 'Germany', 'icon' => 'fa-trophy'],
        ['name' => 'Von Humboldt Foundation, Germany', 'url' => 'https://www.humboldt-foundation.de/en/apply/sponsorship-programmes/humboldt-research-fellowship', 'country' => 'Germany', 'icon' => 'fa-award'],
        ['name' => 'UNEP Research Grants', 'url' => 'https://www.unep.org/about-un-environment-programme/funding-and-partnerships', 'country' => 'UN', 'icon' => 'fa-leaf'],
        ['name' => 'Green Climate Fund', 'url' => 'https://www.greenclimate.fund/', 'country' => 'International', 'icon' => 'fa-tree'],
        ['name' => 'Asian Development Bank', 'url' => 'https://www.adb.org/what-we-do/funds', 'country' => 'Asia', 'icon' => 'fa-piggy-bank'],
        ['name' => 'WHO Research', 'url' => 'https://www.who.int/home/search-results?indexCatalogue=genericsearchindex1&searchQuery=Research&wordsMode=AnyWord', 'country' => 'International', 'icon' => 'fa-stethoscope'],
        ['name' => 'Islamic Development Bank', 'url' => 'https://www.isdb.org/apif/apply-for-funding', 'country' => 'Islamic Development Bank', 'icon' => 'fa-mosque'],
        ['name' => 'IDB Research Grant', 'url' => 'https://www.iadb.org/en/how-we-can-work-together/public-sector/financing-solutions/grants', 'country' => 'Inter-American', 'icon' => 'fa-chart-line'],
        ['name' => 'Funds for NGOs', 'url' => 'https://www.fundsforngos.org/latest-funds-for-ngos/international-foundation-science-seeks-applications-research-grants/', 'country' => 'International', 'icon' => 'fa-users'],
        ['name' => 'Qatar Research, Development, and Innovation Council', 'url' => 'https://www.qatar.georgetown.edu/research/awards-grants-and-fellowships/qatar-research-development-and-innovation-council-grants/', 'country' => 'Qatar', 'icon' => 'fa-landmark'],
    ],
    'national' => [
        ['name' => 'Planning Commission of Pakistan (PSDP)', 'url' => 'https://www.pc.gov.pk/', 'country' => 'Pakistan', 'icon' => 'fa-building'],
        ['name' => 'PARB (Agriculture, Animal Sciences)', 'url' => 'https://parb-agripunjab.punjab.gov.pk/guide_proformas', 'country' => 'Pakistan', 'icon' => 'fa-tractor'],
        ['name' => 'Agriculture Linkage Program (ALP)', 'url' => 'https://alp.gov.pk/', 'country' => 'Pakistan', 'icon' => 'fa-wheat-awn'],
        ['name' => 'NIH, Islamabad (Human Health)', 'url' => 'https://www.nih.org.pk/health-education', 'country' => 'Pakistan', 'icon' => 'fa-heartbeat'],
        ['name' => 'Australian Embassy - Direct Aid Program', 'url' => 'https://pakistan.embassy.gov.au/islm/directaidprogram.html', 'country' => 'Pakistan', 'icon' => 'fa-flag'],
        ['name' => 'PSF Collaborative Programs', 'url' => 'https://psf.gov.pk/il-china.aspx', 'country' => 'Pakistan', 'icon' => 'fa-handshake'],
    ]
];
?>

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

    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateX(-20px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }

    .fade-in-up {
        animation: fadeInUp 0.6s ease-out forwards;
        opacity: 0;
    }

    .slide-in {
        animation: slideIn 0.5s ease-out forwards;
        opacity: 0;
    }

    .delay-100 { animation-delay: 0.1s; }
    .delay-200 { animation-delay: 0.2s; }
    .delay-300 { animation-delay: 0.3s; }
    .delay-400 { animation-delay: 0.4s; }

    .funding-card {
        transition: all 0.3s ease;
        border-left: 4px solid transparent;
    }

    .funding-card:hover {
        transform: translateX(8px);
        border-left-color: #3674B5;
        box-shadow: 0 8px 20px rgba(54, 116, 181, 0.15);
    }

    .category-badge {
        background: linear-gradient(135deg, #3674B5 0%, #578FCA 100%);
    }
</style>

<main class="bg-gray-50">
    <!-- Header Section -->
    <section class="bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#578FCA] py-12 md:py-16">
        <div class="container mx-auto px-4">
            <div class="text-center text-white">
                <h1 class="fade-in-up text-3xl md:text-5xl font-bold mb-4">
                    <i class="fas fa-money-check-alt mr-3"></i>
                    National & International Research Funding Agencies
                </h1>
                <p class="fade-in-up delay-100 text-lg md:text-xl text-[#D1F8EF] max-w-3xl mx-auto">
                    Explore comprehensive funding opportunities from leading national and international organizations to support your research initiatives
                </p>
            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="py-8 bg-white">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-4xl mx-auto">
                <div class="fade-in-up delay-100 text-center p-4 bg-gradient-to-br from-[#3674B5] to-[#578FCA] rounded-lg text-white">
                    <i class="fas fa-globe-americas text-3xl mb-2"></i>
                    <h3 class="text-2xl font-bold"><?= count($fundingAgencies['international']) ?></h3>
                    <p class="text-sm">International</p>
                </div>
                <div class="fade-in-up delay-200 text-center p-4 bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] rounded-lg text-white">
                    <i class="fas fa-flag text-3xl mb-2"></i>
                    <h3 class="text-2xl font-bold"><?= count($fundingAgencies['national']) ?></h3>
                    <p class="text-sm">National</p>
                </div>
                <div class="fade-in-up delay-300 text-center p-4 bg-gradient-to-br from-[#A1E3F9] to-[#D1F8EF] rounded-lg text-[#1a4d7c]">
                    <i class="fas fa-university text-3xl mb-2"></i>
                    <h3 class="text-2xl font-bold">30+</h3>
                    <p class="text-sm">Countries</p>
                </div>
                <div class="fade-in-up delay-400 text-center p-4 bg-gradient-to-br from-[#D1F8EF] to-[#A1E3F9] rounded-lg text-[#1a4d7c]">
                    <i class="fas fa-award text-3xl mb-2"></i>
                    <h3 class="text-2xl font-bold">All Fields</h3>
                    <p class="text-sm">Research Areas</p>
                </div>
            </div>
        </div>
    </section>

    <!-- International Funding Agencies -->
    <section class="py-12 md:py-16">
        <div class="container mx-auto px-4">
            <div class="max-w-6xl mx-auto">
                <div class="text-center mb-10">
                    <h2 class="fade-in-up text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-3">
                        <i class="fas fa-globe mr-3 text-[#3674B5]"></i>
                        International Funding Agencies
                    </h2>
                    <p class="text-gray-600 text-lg">Global research funding opportunities from prestigious organizations worldwide</p>
                </div>

                <div class="grid md:grid-cols-2 gap-4 md:gap-6">
                    <?php $delay = 0; foreach ($fundingAgencies['international'] as $agency): ?>
                        <div class="funding-card slide-in delay-<?= ($delay % 4) * 100 ?> bg-white rounded-xl shadow-md hover:shadow-xl p-5 md:p-6">
                            <div class="flex items-start gap-4">
                                <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-[#3674B5] to-[#578FCA] rounded-lg flex items-center justify-center text-white">
                                    <i class="fas <?= $agency['icon'] ?> text-xl"></i>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <h3 class="text-lg font-bold text-[#1a4d7c] mb-2 line-clamp-2">
                                        <?= $agency['name'] ?>
                                    </h3>
                                    <p class="text-sm text-gray-600 mb-3 flex items-center">
                                        <i class="fas fa-map-marker-alt mr-2 text-[#578FCA]"></i>
                                        <?= $agency['country'] ?>
                                    </p>
                                    <a href="<?= $agency['url'] ?>" 
                                       target="_blank" 
                                       rel="noopener noreferrer"
                                       class="inline-flex items-center text-[#3674B5] hover:text-[#578FCA] font-semibold transition-colors">
                                        <i class="fas fa-external-link-alt mr-2"></i>
                                        Visit Website
                                        <i class="fas fa-arrow-right ml-2 text-sm"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php $delay++; endforeach; ?>
                </div>
            </div>
        </div>
    </section>

    <!-- National Funding Agencies -->
    <section class="py-12 md:py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="max-w-6xl mx-auto">
                <div class="text-center mb-10">
                    <h2 class="fade-in-up text-3xl md:text-4xl font-bold text-[#1a4d7c] mb-3">
                        <i class="fas fa-flag mr-3 text-[#578FCA]"></i>
                        National Funding Agencies
                    </h2>
                    <p class="text-gray-600 text-lg">Pakistani research funding organizations supporting local innovation and development</p>
                </div>

                <div class="grid md:grid-cols-2 gap-4 md:gap-6">
                    <?php $delay = 0; foreach ($fundingAgencies['national'] as $agency): ?>
                        <div class="funding-card slide-in delay-<?= ($delay % 4) * 100 ?> bg-gradient-to-br from-[#f0f9ff] to-white rounded-xl shadow-md hover:shadow-xl p-5 md:p-6 border border-[#A1E3F9]">
                            <div class="flex items-start gap-4">
                                <div class="flex-shrink-0 w-12 h-12 bg-gradient-to-br from-[#578FCA] to-[#A1E3F9] rounded-lg flex items-center justify-center text-white">
                                    <i class="fas <?= $agency['icon'] ?> text-xl"></i>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <h3 class="text-lg font-bold text-[#1a4d7c] mb-2 line-clamp-2">
                                        <?= $agency['name'] ?>
                                    </h3>
                                    <p class="text-sm text-gray-600 mb-3 flex items-center">
                                        <i class="fas fa-map-marker-alt mr-2 text-[#578FCA]"></i>
                                        <?= $agency['country'] ?>
                                    </p>
                                    <a href="<?= $agency['url'] ?>" 
                                       target="_blank" 
                                       rel="noopener noreferrer"
                                       class="inline-flex items-center text-[#3674B5] hover:text-[#578FCA] font-semibold transition-colors">
                                        <i class="fas fa-external-link-alt mr-2"></i>
                                        Visit Website
                                        <i class="fas fa-arrow-right ml-2 text-sm"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php $delay++; endforeach; ?>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <!-- <section class="py-12 md:py-16 bg-gradient-to-r from-[#1a4d7c] to-[#3674B5] text-white">
        <div class="container mx-auto px-4 text-center">
            <div class="max-w-3xl mx-auto">
                <i class="fas fa-info-circle text-5xl mb-6 opacity-80"></i>
                <h2 class="text-2xl md:text-3xl font-bold mb-4">Need Assistance with Funding Applications?</h2>
                <p class="text-lg mb-8 text-[#D1F8EF]">
                    Our ORIC team is here to help you identify the right funding opportunities and prepare competitive grant proposals.
                </p>
                <div class="flex flex-col sm:flex-row gap-4 justify-center">
                    <a href="mailto:oric@uaf.edu.pk" class="inline-flex items-center justify-center bg-gray-1000 text-[#3674B5] px-8 py-3 rounded-lg font-semibold hover:bg-[#D1F8EF] transition-colors">
                        <i class="fas fa-envelope mr-2"></i>
                        Contact ORIC
                    </a>
                    <a href="../" class="inline-flex items-center justify-center  border-2 border-white text-white px-8 py-3 rounded-lg font-semibold hover:bg-white hover:text-[#3674B5] transition-all">
                        <i class="fas fa-home mr-2"></i>
                        Back to Home
                    </a>
                </div>
            </div>
        </div>
    </section> -->
</main>





</asp:Content>
