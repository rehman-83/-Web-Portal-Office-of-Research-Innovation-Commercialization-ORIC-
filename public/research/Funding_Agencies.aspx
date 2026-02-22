<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Funding Agencies - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script>document.documentElement.setAttribute('data-loading','true');</script>

<style>
/* Startup animation (page load) */
@keyframes fadeInUp { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: none; } }
html[data-loading] .agency-card,
html[data-loading] .stat-tile,
html[data-loading] .section-header,
html[data-loading] .search-wrap,
html[data-loading] .max-w-6xl .text-3xl,
html[data-loading] .max-w-6xl .text-blue-200 {
    opacity: 0;
    transform: translateY(10px);
}
.agency-card, .stat-tile, .section-header, .search-wrap, .max-w-6xl .text-3xl, .max-w-6xl .text-blue-200 {
    will-change: opacity, transform;
}

/* ── Agency card ── */
.agency-card {
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 12px rgba(26,58,92,.09);
    padding: 18px 20px;
    display: flex;
    align-items: center;
    gap: 16px;
    transition: box-shadow .25s, transform .25s, border-color .25s;
    border: 1.5px solid #e8eef5;
    text-decoration: none;
    color: inherit;
}
.agency-card:hover {
    box-shadow: 0 8px 28px rgba(26,58,92,.18);
    transform: translateY(-3px);
    border-color: #1a3a5c;
    text-decoration: none;
}
.agency-logo {
    width: 52px;
    height: 52px;
    border-radius: 10px;
    object-fit: contain;
    background: #f4f7fb;
    padding: 6px;
    flex-shrink: 0;
    border: 1px solid #e0e7f0;
}
.agency-logo-fallback {
    width: 52px;
    height: 52px;
    border-radius: 10px;
    background: linear-gradient(135deg, #1a3a5c 0%, #3a6ea8 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    color: #fff;
    font-size: 20px;
}
.agency-name {
    font-weight: 700;
    font-size: 14px;
    color: #1a3a5c;
    line-height: 1.35;
    margin-bottom: 4px;
}
.agency-country {
    font-size: 12px;
    color: #7a8fa6;
    display: flex;
    align-items: center;
    gap: 5px;
}
.agency-visit {
    margin-top: 7px;
    font-size: 12px;
    color: #c8102e;
    font-weight: 600;
    display: flex;
    align-items: center;
    gap: 4px;
}
.section-header {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 28px;
}
.section-header-icon {
    width: 48px;
    height: 48px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    color: #fff;
    flex-shrink: 0;
}
#searchBox {
    border: 2px solid #dce4ef;
    border-radius: 10px;
    padding: 11px 18px 11px 44px;
    width: 100%;
    font-size: 15px;
    outline: none;
    transition: border-color .2s;
}
#searchBox:focus { border-color: #1a3a5c; }
.search-wrap { position: relative; max-width: 480px; }
.search-wrap i { position: absolute; left: 15px; top: 50%; transform: translateY(-50%); color: #9aabbf; }
.filter-pill {
    padding: 7px 18px;
    border-radius: 999px;
    font-size: 13px;
    font-weight: 600;
    cursor: pointer;
    border: 2px solid #dce4ef;
    background: #fff;
    color: #5a6e82;
    transition: .2s;
}
.filter-pill.active, .filter-pill:hover {
    background: #1a3a5c;
    border-color: #1a3a5c;
    color: #fff;
}
.agency-card.hidden-item { display: none !important; }
.stat-tile {
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 2px 12px rgba(26,58,92,.09);
    padding: 20px 16px;
    text-align: center;
    border-top: 4px solid #1a3a5c;
}
.stat-tile.red { border-top-color: #c8102e; }
</style>

<!-- ══ HERO BANNER ══ -->
<section class="bg-[#1a3a5c] py-12 md:py-16 relative overflow-hidden">
    <div class="absolute inset-0 opacity-5"
         style="background-image:url('data:image/svg+xml,%3Csvg width=\'40\' height=\'40\' viewBox=\'0 0 40 40\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Cg fill=\'%23fff\' fill-opacity=\'1\'%3E%3Cpath d=\'M20 20.5V18H0v5h5v5H0v5h20v-2.5h20V20.5H20zM0 5h5v5H0V5z\'/%3E%3C/g%3E%3C/svg%3E')"></div>
    <div class="max-w-6xl mx-auto px-6 relative z-10 text-center text-white">
        <h1 class="text-3xl md:text-5xl font-extrabold mb-4 leading-tight">
            National &amp; International<br class="hidden md:block" /> Research Funding Agencies
        </h1>
        <p class="text-blue-200 text-base md:text-lg max-w-3xl mx-auto">
            Explore comprehensive funding opportunities from leading national and international organizations to support your research initiatives at UAF.
        </p>
    </div>
</section>

<!-- ══ STATS BAR ══ -->
<div class="bg-[#f4f7fb] border-b border-gray-200 py-8">
    <div class="max-w-6xl mx-auto px-6">
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
            <div class="stat-tile">
                <div class="text-3xl font-extrabold text-[#1a3a5c]">33</div>
                <div class="text-sm text-gray-500 font-semibold mt-1"><i class="fas fa-globe mr-1 text-[#1a3a5c]"></i> International</div>
            </div>
            <div class="stat-tile red">
                <div class="text-3xl font-extrabold text-[#c8102e]">6</div>
                <div class="text-sm text-gray-500 font-semibold mt-1"><i class="fas fa-flag mr-1 text-[#c8102e]"></i> National</div>
            </div>
            <div class="stat-tile">
                <div class="text-3xl font-extrabold text-[#1a3a5c]">30+</div>
                <div class="text-sm text-gray-500 font-semibold mt-1"><i class="fas fa-map-marker-alt mr-1 text-[#1a3a5c]"></i> Countries</div>
            </div>
            <div class="stat-tile red">
                <div class="text-3xl font-extrabold text-[#c8102e]">All</div>
                <div class="text-sm text-gray-500 font-semibold mt-1"><i class="fas fa-flask mr-1 text-[#c8102e]"></i> Research Fields</div>
            </div>
        </div>
    </div>
</div>

<!-- ══ SEARCH + FILTER BAR ══ -->
<div class="bg-white border-b border-gray-200 py-5 sticky top-0 z-30 shadow-sm">
    <div class="max-w-6xl mx-auto px-6 flex flex-col sm:flex-row items-center gap-4">
        <div class="search-wrap w-full sm:w-auto sm:flex-1">
            <i class="fas fa-search"></i>
            <input type="text" id="searchBox" placeholder="Search funding agencies by name or country..." oninput="filterAgencies()" />
        </div>
        <div class="flex gap-2 flex-wrap justify-center">
            <button class="filter-pill active" onclick="setFilter('all',this)">All (39)</button>
            <button class="filter-pill" onclick="setFilter('international',this)"><i class="fas fa-globe mr-1"></i>International (33)</button>
            <button class="filter-pill" onclick="setFilter('national',this)"><i class="fas fa-flag mr-1"></i>National (6)</button>
        </div>
    </div>
</div>

<!-- ══ MAIN CONTENT ══ -->
<div class="max-w-6xl mx-auto px-6 py-10">

    <!-- ── INTERNATIONAL ── -->
    <div id="section-international" class="mb-14">
        <div class="section-header">
            <div class="section-header-icon bg-[#1a3a5c]"><i class="fas fa-globe"></i></div>
            <div>
                <h2 class="text-2xl font-extrabold text-[#1a3a5c]">International Funding Agencies</h2>
                <p class="text-gray-500 text-sm mt-1">Global research funding opportunities from prestigious organizations worldwide</p>
            </div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">

            <a href="https://www.nsfc.gov.cn/english/site_1/funding/E1/2022/01-12/25901.html" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="nsf china national natural science foundation china">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=nsfc.gov.cn&sz=64" alt="NSFC" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-flask"></i></div>
                <div><div class="agency-name">National Natural Science Foundation of China (NSFC)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> China</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.nsf.gov/science-matters/nsf-101-graduate-postdoctoral-researcher-funding" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="nsf usa national science foundation research grants usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=nsf.gov&sz=64" alt="NSF USA" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-graduation-cap"></i></div>
                <div><div class="agency-name">National Science Foundation (NSF) — Research Grants</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.ifs.se/ifs-grantees/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="international foundation for science ifs sweden">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=ifs.se&sz=64" alt="IFS" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-flask"></i></div>
                <div><div class="agency-name">International Foundation for Science (IFS)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Sweden</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://tubitak.gov.tr/en/funds/academic/national-support-programs/1001-scientific-and-technological-research-projects-funding-program" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="tubitak scientific technological research council turkey">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=tubitak.gov.tr&sz=64" alt="TUBITAK" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-microscope"></i></div>
                <div><div class="agency-name">TÜBİTAK — Scientific &amp; Technological Research Council of Turkey</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Turkey</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.fic.nih.gov/Funding" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="nih fogarty international center health usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=fic.nih.gov&sz=64" alt="NIH Fogarty" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-heartbeat"></i></div>
                <div><div class="agency-name">NIH — Fogarty International Center (FIC)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.fic.nih.gov/Programs/Pages/infectious-disease.aspx" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="nih fogarty infectious disease programs usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=fic.nih.gov&sz=64" alt="NIH FIC ID" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-virus"></i></div>
                <div><div class="agency-name">NIH Fogarty — Infectious Disease Programs</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.cdc.gov/grants/applying/eligibility.html" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="cdc centers disease control prevention grants usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=cdc.gov&sz=64" alt="CDC USA" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-clinic-medical"></i></div>
                <div><div class="agency-name">CDC — Centers for Disease Control and Prevention</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.grants.gov/learn-grants/grant-making-agencies/u-s-agency-for-international-development-usaid" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="usaid united states agency international development">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=usaid.gov&sz=64" alt="USAID" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-hands-helping"></i></div>
                <div><div class="agency-name">USAID — U.S. Agency for International Development</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.nifa.usda.gov/grants/funding-opportunities" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="usda nifa national institute food agriculture usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=nifa.usda.gov&sz=64" alt="USDA NIFA" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-seedling"></i></div>
                <div><div class="agency-name">USDA — National Institute of Food and Agriculture (NIFA)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.ukaiddirect.org/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="uk aid direct international development united kingdom">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=ukaiddirect.org&sz=64" alt="UK AID" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-pound-sign"></i></div>
                <div><div class="agency-name">UK AID Direct</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> United Kingdom</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.flemingfund.org/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="fleming fund antimicrobial resistance health united kingdom">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=flemingfund.org&sz=64" alt="Fleming Fund" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-pills"></i></div>
                <div><div class="agency-name">Fleming Fund</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> United Kingdom</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.dfat.gov.au/people-to-people/direct-aid-program/direct-aid-program" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="australian aid direct aid program dap dfat australia">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=dfat.gov.au&sz=64" alt="Australia DAP" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-globe-asia"></i></div>
                <div><div class="agency-name">Australian Aid — Direct Aid Program (DAP / DFAT)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Australia</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://gcgh.grandchallenges.org/about" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="grand challenges explorations gce global health international">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=grandchallenges.org&sz=64" alt="Grand Challenges" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-lightbulb"></i></div>
                <div><div class="agency-name">Grand Challenges Explorations (GCE)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> International</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.isdb-engage.org/en/page/call-for-innovation-via-transform-fund-en" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="islamic development bank isdb engage program transform fund">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=isdb-engage.org&sz=64" alt="IsDB ENGAGE" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-handshake"></i></div>
                <div><div class="agency-name">IsDB — ENGAGE Program (Transform Fund)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Islamic Development Bank</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.grandchallenges.ca/funding-opportunities/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="grand challenges canada gcc funding opportunities canada">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=grandchallenges.ca&sz=64" alt="GCC" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-leaf"></i></div>
                <div><div class="agency-name">Grand Challenges Canada (GCC)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Canada</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.gatesfoundation.org/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="bill melinda gates foundation grants global health usa">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=gatesfoundation.org&sz=64" alt="Gates Foundation" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-donate"></i></div>
                <div><div class="agency-name">Bill &amp; Melinda Gates Foundation</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> USA</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://research-and-innovation.ec.europa.eu/funding/funding-opportunities/funding-programmes-and-open-calls/horizon-europe_en" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="horizon europe european union eu research grants funding">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=ec.europa.eu&sz=64" alt="Horizon Europe" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-euro-sign"></i></div>
                <div><div class="agency-name">Horizon Europe — European Union Research Grants</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> European Union</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.ukri.org/what-we-offer/international-funding/global-challenges-research-fund/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="gcrf global challenges research fund ukri uk">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=ukri.org&sz=64" alt="UKRI" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-globe"></i></div>
                <div><div class="agency-name">GCRF — Global Challenges Research Fund (UKRI)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> United Kingdom</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.comstech.org/comstech-isesco-joint-research-grants-program/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="isesco comstech joint research grants islamic organization">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=comstech.org&sz=64" alt="COMSTECH" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-book-open"></i></div>
                <div><div class="agency-name">COMSTECH-ISESCO Joint Research Grants Program</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Islamic Organization</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://english.cas.cn/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="chinese academy of sciences cas china research">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=english.cas.cn&sz=64" alt="CAS" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-atom"></i></div>
                <div><div class="agency-name">Chinese Academy of Sciences (CAS)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> China</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="http://www.anso.org.cn/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="anso alliance international science organizations china">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=anso.org.cn&sz=64" alt="ANSO" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-network-wired"></i></div>
                <div><div class="agency-name">ANSO — Alliance of International Science Organizations</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> China</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.chinacdc.cn/en/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="chinese center disease control prevention cdc china">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=chinacdc.cn&sz=64" alt="CDC China" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-hospital"></i></div>
                <div><div class="agency-name">Chinese Center for Disease Control and Prevention</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> China</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.bosch-stiftung.de/en/support-we-offer" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="bosch stiftung german research grants germany">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=bosch-stiftung.de&sz=64" alt="Bosch Stiftung" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-trophy"></i></div>
                <div><div class="agency-name">Robert Bosch Stiftung — German Research Foundation</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Germany</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.humboldt-foundation.de/en/apply/sponsorship-programmes/humboldt-research-fellowship" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="alexander von humboldt foundation germany fellowship research">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=humboldt-foundation.de&sz=64" alt="Humboldt Foundation" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-award"></i></div>
                <div><div class="agency-name">Alexander von Humboldt Foundation</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Germany</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.unep.org/about-un-environment-programme/funding-and-partnerships" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="unep united nations environment programme research grants">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=unep.org&sz=64" alt="UNEP" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-leaf"></i></div>
                <div><div class="agency-name">UNEP — United Nations Environment Programme</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> United Nations</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.greenclimate.fund/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="green climate fund gcf climate change international">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=greenclimate.fund&sz=64" alt="GCF" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-tree"></i></div>
                <div><div class="agency-name">Green Climate Fund (GCF)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> International</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.adb.org/what-we-do/funds" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="asian development bank adb funds grants asia">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=adb.org&sz=64" alt="ADB" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-piggy-bank"></i></div>
                <div><div class="agency-name">Asian Development Bank (ADB)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Asia</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.who.int/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="who world health organization research international">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=who.int&sz=64" alt="WHO" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-stethoscope"></i></div>
                <div><div class="agency-name">WHO — World Health Organization Research</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> International</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.isdb.org/apif/apply-for-funding" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="islamic development bank isdb funding research">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=isdb.org&sz=64" alt="IsDB" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-mosque"></i></div>
                <div><div class="agency-name">Islamic Development Bank (IsDB) — Research Grants</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Islamic Development Bank</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.iadb.org/en/how-we-can-work-together/public-sector/financing-solutions/grants" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="inter american development bank idb grants financing">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=iadb.org&sz=64" alt="IADB" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-chart-line"></i></div>
                <div><div class="agency-name">Inter-American Development Bank (IDB) — Grants</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Inter-American</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.fundsforngos.org/latest-funds-for-ngos/international-foundation-science-seeks-applications-research-grants/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="funds for ngos international research grants nonprofit">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=fundsforngos.org&sz=64" alt="FundsForNGOs" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-users"></i></div>
                <div><div class="agency-name">Funds for NGOs — IFS Research Grants</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> International</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.qatar.georgetown.edu/research/awards-grants-and-fellowships/qatar-research-development-and-innovation-council-grants/" target="_blank" rel="noopener" class="agency-card" data-category="international" data-name="qatar research development innovation council qrdi grants">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=qrdi.org.qa&sz=64" alt="QRDI" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-landmark"></i></div>
                <div><div class="agency-name">Qatar Research, Development &amp; Innovation Council (QRDI)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Qatar</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

        </div><!-- /intl grid -->
    </div><!-- /section-international -->

    <!-- ── NATIONAL ── -->
    <div id="section-national">
        <div class="section-header">
            <div class="section-header-icon bg-[#c8102e]"><i class="fas fa-flag"></i></div>
            <div>
                <h2 class="text-2xl font-extrabold text-[#1a3a5c]">National Funding Agencies</h2>
                <p class="text-gray-500 text-sm mt-1">Pakistani research funding organizations supporting local innovation and development</p>
            </div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">

            <a href="https://www.pc.gov.pk/" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="planning commission pakistan psdp government funding">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=pc.gov.pk&sz=64" alt="Planning Commission" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-building"></i></div>
                <div><div class="agency-name">Planning Commission of Pakistan (PSDP)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://parb-agripunjab.punjab.gov.pk/guide_proformas" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="parb punjab agriculture research board animal sciences pakistan">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=parb-agripunjab.punjab.gov.pk&sz=64" alt="PARB" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-tractor"></i></div>
                <div><div class="agency-name">PARB — Punjab Agriculture Research Board</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://alp.gov.pk/" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="alp agriculture linkage program pakistan research">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=alp.gov.pk&sz=64" alt="ALP" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-seedling"></i></div>
                <div><div class="agency-name">Agriculture Linkage Program (ALP)</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://www.nih.org.pk/health-education" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="nih islamabad national institute health pakistan human health">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=nih.org.pk&sz=64" alt="NIH Pakistan" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-heartbeat"></i></div>
                <div><div class="agency-name">NIH Islamabad — National Institute of Health</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://pakistan.embassy.gov.au/islm/directaidprogram.html" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="australian embassy pakistan direct aid program dap islamabad">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=pakistan.embassy.gov.au&sz=64" alt="Australian Embassy Pakistan" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-flag"></i></div>
                <div><div class="agency-name">Australian Embassy Pakistan — Direct Aid Program</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

            <a href="https://psf.gov.pk/il-china.aspx" target="_blank" rel="noopener" class="agency-card" data-category="national" data-name="psf pakistan science foundation collaborative programs china">
                <img class="agency-logo" src="https://www.google.com/s2/favicons?domain=psf.gov.pk&sz=64" alt="PSF Pakistan" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" /><div class="agency-logo-fallback" style="display:none"><i class="fas fa-handshake"></i></div>
                <div><div class="agency-name">PSF — Pakistan Science Foundation Collaborative Programs</div><div class="agency-country"><i class="fas fa-map-marker-alt"></i> Pakistan</div><div class="agency-visit"><i class="fas fa-external-link-alt"></i> Visit Website</div></div>
            </a>

        </div><!-- /natl grid -->
    </div><!-- /section-national -->

    <!-- No results -->
    <div id="noResults" class="hidden text-center py-16">
        <i class="fas fa-search text-gray-300 text-5xl mb-4 block"></i>
        <p class="text-gray-500 text-lg font-semibold">No agencies found matching your search.</p>
        <button onclick="document.getElementById('searchBox').value='';filterAgencies();" class="mt-3 text-[#c8102e] font-semibold hover:underline text-sm">Clear search</button>
    </div>

</div><!-- /max-w -->

<script>
(function () {
    var activeFilter = 'all';

    window.setFilter = function (filter, btn) {
        activeFilter = filter;
        document.querySelectorAll('.filter-pill').forEach(function (b) { b.classList.remove('active'); });
        btn.classList.add('active');
        var intlSec = document.getElementById('section-international');
        var natlSec = document.getElementById('section-national');
        if (filter === 'international') { intlSec.style.display = ''; natlSec.style.display = 'none'; }
        else if (filter === 'national') { intlSec.style.display = 'none'; natlSec.style.display = ''; }
        else { intlSec.style.display = ''; natlSec.style.display = ''; }
        filterAgencies();
    };

    window.filterAgencies = function () {
        var q = document.getElementById('searchBox').value.toLowerCase().trim();
        var cards = document.querySelectorAll('.agency-card');
        var visible = 0;
        cards.forEach(function (card) {
            var cat = card.getAttribute('data-category');
            var name = card.getAttribute('data-name');
            var catMatch = (activeFilter === 'all' || cat === activeFilter);
            var searchMatch = (q === '' || name.indexOf(q) !== -1);
            var show = catMatch && searchMatch;
            card.classList.toggle('hidden-item', !show);
            if (show) visible++;
        });
        document.getElementById('noResults').classList.toggle('hidden', visible > 0);
    };
})();
</script>
<script>
document.addEventListener('DOMContentLoaded', function(){
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
        document.documentElement.removeAttribute('data-loading');
        return;
    }
    var intro = Array.from(document.querySelectorAll('.max-w-6xl .text-3xl, .max-w-6xl .text-blue-200, .stat-tile, .section-header, .search-wrap'));
    intro.forEach(function(el,i){
        el.style.transition = 'opacity .45s ease, transform .45s ease';
        setTimeout(function(){ el.style.opacity = 1; el.style.transform = 'none'; }, i * 120 + 80);
    });
    var cards = Array.from(document.querySelectorAll('.agency-card'));
    cards.forEach(function(card,i){
        card.style.transition = 'opacity .38s cubic-bezier(.2,.9,.2,1), transform .38s cubic-bezier(.2,.9,.2,1)';
        setTimeout(function(){ card.style.opacity = 1; card.style.transform = 'none'; }, 500 + i * 60);
    });
    setTimeout(function(){ document.documentElement.removeAttribute('data-loading'); }, 1200 + Math.min(cards.length * 60, 1200));
});
</script>
   
</asp:Content>
