<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="CphSlider" runat="server">

    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/3.3bootstrap.min.js"></script>
    <link href="css/Sheet.css" rel="stylesheet" />
    <link href="css/CardSheet.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />

	
    <style>
        /* Hero Section Styles - UAF Colors */
        .hero-section {
            position: relative;
            width: 100%;
            height: 600px;
            overflow: hidden;
            background: linear-gradient(135deg, #1B5E20 0%, #2E7D32 100%);
        }

        .hero-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            animation: zoom 20s ease-in-out infinite alternate;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(27, 94, 32, 0.6), rgba(46, 125, 50, 0.8));
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .hero-content {
            text-align: center;
            color: white;
            padding: 20px;
            max-width: 1200px;
            z-index: 2;
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            font-weight: 300;
            margin-bottom: 30px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.5);
            animation: fadeInUp 1.2s ease-out;
        }

        @keyframes zoom {
            from { transform: scale(1); }
            to { transform: scale(1.1); }
        }

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

        /* Responsive Hero */
        @media (max-width: 768px) {
            .hero-section {
                height: 400px;
            }
            .hero-title {
                font-size: 2rem;
            }
            .hero-subtitle {
                font-size: 1.1rem;
            }
        }

        @media (max-width: 480px) {
            .hero-section {
                height: 300px;
            }
            .hero-title {
                font-size: 1.5rem;
            }
            .hero-subtitle {
                font-size: 1rem;
            }
        }
    </style>
    
	<!-- Hero Section -->
    <div class="hero-section">
        <img src="img/GALLERY/B_updates/b02.jpg" alt="ORIC UAF" class="hero-image" />
        <div class="hero-overlay">
            <div class="hero-content">
                <h1 class="hero-title">Office of Research, Innovation & Commercialization</h1>
                <p class="hero-subtitle">Transforming Concepts Into Impacts</p>
            </div>
        </div>
    </div>

</asp:Content>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style>
        /* Global Styles */
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
        }

        /* Container */
        .modern-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Section Styles */
        .content-section {
            background-color: #f8f9fa;
            padding: 60px 0;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: #1B5E20;
            margin-bottom: 15px;
            position: relative;
            padding-bottom: 15px;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 4px;
            background: linear-gradient(to right, #2E7D32, #FFA000);
        }

        .section-subtitle {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 30px;
        }

        /* Welcome Section */
        .welcome-section {
            background: linear-gradient(to bottom, #ffffff 0%, #F1F8E9 100%);
            padding: 60px 0;
        }

        .welcome-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(46, 125, 50, 0.1);
            padding: 40px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-top: 3px solid #2E7D32;
        }

        .welcome-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
        }

        /* Announcement Cards */
        .announcements-section {
            background: #F1F8E9;
            padding: 60px 0;
        }

        .announcement-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            margin-bottom: 20px;
            box-shadow: 0 3px 15px rgba(46, 125, 50, 0.1);
            transition: all 0.3s ease;
            display: flex;
            flex-direction: row;
            border: 1px solid #E8F5E9;
        }

        .announcement-card:hover {
            transform: translateX(5px);
            box-shadow: 0 5px 25px rgba(46, 125, 50, 0.2);
        }

        .announcement-date {
            background: linear-gradient(135deg, #2E7D32 0%, #388E3C 100%);
            color: white;
            padding: 20px;
            text-align: center;
            min-width: 100px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            border-radius: 10px 0 0 10px;
        }

        .announcement-day {
            font-size: 1.5rem;
            font-weight: 700;
        }

        .announcement-year {
            font-size: 1rem;
            opacity: 0.9;
        }

        .announcement-body {
            padding: 20px;
            flex: 1;
        }

        .announcement-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .announcement-title a {
            color: #1B5E20;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .announcement-title a:hover {
            color: #FFA000;
        }

        .announcement-text {
            color: #666;
            font-size: 0.95rem;
            margin: 0;
        }

        /* Vision, Mission, Objectives Cards */
        .vmo-section {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            padding: 60px 0;
        }

        .vmo-card {
            background: white;
            border-radius: 15px;
            padding: 40px;
            margin-bottom: 30px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            border-left: 5px solid #2E7D32;
            border-top: 1px solid #E8F5E9;
        }

        .vmo-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(46, 125, 50, 0.2);
            border-left-color: #FFA000;
        }

        .vmo-icon {
            font-size: 2.5rem;
            color: #2E7D32;
            margin-bottom: 20px;
            display: inline-block;
            padding: 15px;
            background: #E8F5E9;
            border-radius: 50%;
            width: 80px;
            height: 80px;
            line-height: 50px;
            text-align: center;
        }

        .vmo-title {
            font-size: 2rem;
            font-weight: 700;
            color: #1B5E20;
            margin-bottom: 20px;
        }

        .vmo-text {
            color: #555;
            font-size: 1.05rem;
            line-height: 1.8;
            text-align: justify;
        }

        .vmo-list {
            padding-left: 0;
            list-style: none;
        }

        .vmo-list li {
            padding: 12px 0 12px 35px;
            position: relative;
            color: #555;
            line-height: 1.7;
        }

        .vmo-list li::before {
            content: '✓';
            position: absolute;
            left: 0;
            color: #2E7D32;
            font-weight: bold;
            font-size: 1.2rem;
            background: #E8F5E9;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            line-height: 1;
        }

        /* Responsive Grid */
        .row-equal {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -15px;
        }

        .col-equal {
            flex: 1;
            padding: 0 15px;
            min-width: 300px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .section-title {
                font-size: 2rem;
            }

            .vmo-title {
                font-size: 1.5rem;
            }

            .announcement-card {
                flex-direction: column;
            }

            .announcement-date {
                min-width: 100%;
                padding: 15px;
            }

            .col-equal {
                min-width: 100%;
                margin-bottom: 20px;
            }

            .welcome-card {
                padding: 25px;
            }

            .vmo-card {
                padding: 25px;
            }
        }

        @media (max-width: 480px) {
            .section-title {
                font-size: 1.5rem;
            }

            .modern-container {
                padding: 10px;
            }

            .content-section,
            .welcome-section,
            .announcements-section,
            .vmo-section {
                padding: 30px 0;
            }
        }

        /* Scroll Animation */
        .fade-in {
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.6s ease, transform 0.6s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>

    <!-- Welcome/Overview Section -->
    <section class="welcome-section">
        <div class="modern-container">
            <div class="row-equal">
                <div class="col-equal">
                    <div class="welcome-card fade-in">
                        <h2 class="section-title">Welcome Message</h2>
                        <div class="vmo-text">
                            <p>
                                Welcome to the Office of Research, Innovation & Commercialization (ORIC) at the 
                                University of Agriculture Faisalabad (UAF). ORIC serves as a hub for advancing a 
                                culture of research excellence, fostering innovation, and bridging the gap between 
                                academia and industry.
                            </p>
                            <p>
                                The Higher Education Commission (HEC) has given a new face to the Directorate 
                                of Research as Office of Research, Innovation & Commercialization (ORIC) in 
                                January, 2011 to elevate the universities as community builders and promote 
                                knowledge based economy. The ORIC is a focal office of the university, which works 
                                for managing and expanding the research programs and linking them with industry 
                                and civil society by translating research outcomes into products and services.
                            </p>
                            <p>
                                The ORIC manages university rankings and harnesses opportunities for hunting and 
                                diversifying research and bringing research to public benefit. The office facilitates 
                                and engages with the postgraduate students and faculty for project proposal write-ups, 
                                budgetary planning, preparation of technical progress and financial reports, internal 
                                and external monitoring, scholarly publications and patent registration.
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Announcements -->
                <div class="col-equal">
                    <h2 class="section-title">Announcements</h2>
                    
                    <div class="announcement-card fade-in">
                        <div class="announcement-date">
                            <div class="announcement-day">Dec 16</div>
                            <div class="announcement-year">2024</div>
                        </div>
                        <div class="announcement-body">
                            <h4 class="announcement-title">
                                <a href="files/news/Quick Facts October 2024.pdf">Quick Facts 2024</a>
                            </h4>
                            <p class="announcement-text">Latest quick facts and statistics about ORIC UAF.</p>
                        </div>
                    </div>

                    <div class="announcement-card fade-in">
                        <div class="announcement-date">
                            <div class="announcement-day">Latest</div>
                            <div class="announcement-year">2023</div>
                        </div>
                        <div class="announcement-body">
                            <h4 class="announcement-title">
                                <a href="files/quick_facts/Quick Facts 2023.pdf">Quick Facts 2023</a>
                            </h4>
                            <p class="announcement-text">Annual quick facts document for 2023.</p>
                        </div>
                    </div>

                    <div class="announcement-card fade-in">
                        <div class="announcement-date">
                            <div class="announcement-day">Calls</div>
                            <div class="announcement-year">2023</div>
                        </div>
                        <div class="announcement-body">
                            <h4 class="announcement-title">
                                <a href="Calls.aspx">Call for Proposals</a>
                            </h4>
                            <p class="announcement-text">Open calls for research proposals and funding opportunities.</p>
                        </div>
                    </div>

                    <div class="announcement-card fade-in">
                        <div class="announcement-date">
                            <div class="announcement-day">16-31</div>
                            <div class="announcement-year">Dec 2024</div>
                        </div>
                        <div class="announcement-body">
                            <h4 class="announcement-title">
                                <a href="files/news/ORIC Newsletter-1 (December 16  to 31, 2024).pdf">ORIC Newsletter</a>
                            </h4>
                            <p class="announcement-text">Latest updates and news from ORIC.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Vision, Mission, Objectives Section -->
    <section class="vmo-section">
        <div class="modern-container">
            
            <!-- Vision -->
            <div class="vmo-card fade-in">
                <div class="vmo-icon">
                    <i class="fas fa-eye"></i>
                </div>
                <h2 class="vmo-title">Vision</h2>
                <p class="vmo-text">
                    To enable UAF to act as a creative hub of learning that inspires to explore new 
                    avenues of research, disseminate knowledge and foster creativity, innovation and 
                    entrepreneurship.
                </p>
            </div>

            <!-- Mission -->
            <div class="vmo-card fade-in">
                <div class="vmo-icon">
                    <i class="fas fa-bullseye"></i>
                </div>
                <h2 class="vmo-title">Mission</h2>
                <p class="vmo-text">
                    To develop, expand and spearhead technological advancement in agriculture, 
                    promote skills and ensure transparency in research by achieving excellence in teaching, 
                    research, outreach (national/international), academia-industry linkages and promoting 
                    an entrepreneurial ecosystem.
                </p>
            </div>

            <!-- Objectives -->
            <div class="vmo-card fade-in">
                <div class="vmo-icon">
                    <i class="fas fa-tasks"></i>
                </div>
                <h2 class="vmo-title">Objectives</h2>
                <ul class="vmo-list">
                    <li>Promote a vibrant, innovative and entrepreneurial environment for conducting quality research with an aim to grow knowledge economy.</li>
                    <li>Strengthening academia-industry linkages to formulate collaborative ventures with the corporate community for mutual benefits.</li>
                    <li>Encourage collaborations of departments with local industry and International universities to conduct joint research/internships and faculty-student exchanges.</li>
                    <li>Develop strong and long-term bonds with research funding agencies to support research, development, innovation, outreach commercialization initiatives and policy making and present cutting edge technologies to end-users.</li>
                    <li>Managing of university ranking and opportunities for hunting diversified research grants and ensure conducive environment for research.</li>
                    <li>Ensure transparency in research system of the university.</li>
                </ul>
            </div>

        </div>
    </section>

    <!-- Scroll Animation Script -->
    <script type="text/javascript">
        $(document).ready(function() {
            // Fade in animation on scroll
            function checkFadeIn() {
                $('.fade-in').each(function() {
                    var elementTop = $(this).offset().top;
                    var windowBottom = $(window).scrollTop() + $(window).height();
                    
                    if (windowBottom > elementTop + 100) {
                        $(this).addClass('visible');
                    }
                });
            }

            // Initial check
            checkFadeIn();

            // Check on scroll
            $(window).on('scroll', function() {
                checkFadeIn();
            });

            // Image modal functionality
            $('img').on('click', function() {
                if ($(this).hasClass('hero-image')) return;
                if ($(this).parents('.enlargeImageModal').length) return;
                $('.enlargeImageModalSource').attr('src', $(this).attr('src'));
                $('#enlargeImageModal').modal('show');
            });
        });
    </script>

</asp:Content>
