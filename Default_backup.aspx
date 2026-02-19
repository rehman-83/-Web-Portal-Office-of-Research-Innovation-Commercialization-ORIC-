<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="CphSlider" runat="server">

    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/3.3bootstrap.min.js"></script>
    <link href="css/Sheet.css" rel="stylesheet" />
    <link href="css/CardSheet.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />

	
    <style>
        /* Hero Section Styles */
        .hero-section {
            position: relative;
            width: 100%;
            height: 600px;
            overflow: hidden;
            background: linear-gradient(135deg, #002A5C 0%, #004080 100%);
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
            background: linear-gradient(to bottom, rgba(0, 42, 92, 0.5), rgba(0, 42, 92, 0.7));
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
   
    <div id="content" style="margin-top:0px; padding-top:0px; background-color:#DEE4ED;">    
        <div class="testimonials block-contained" style="margin-bottom:0px; margin-top:0px; padding-bottom:0px;">
            <div class="row">
                <!--overview-->
                <div class="col-md-6 m-b-lg" style="margin-bottom:0px; float:left;">
                    <h2 style="margin-bottom: 0px; "><b>Overview</b></h2>
                    <p class="text-justify" style="margin-top: 20px; margin-bottom: 0px; color: #000000;">
                        The Higher Education Commission (HEC) has given a new face to the Directorate 
                        of Research as Office of Research, Innovation & Commercialization (ORIC) in 
                        January, 2011 to elevate the universities as community builders and promote 
                        knowledge based economy. The ORIC is a focal office of the university, which works 
                        for managing and expanding the research programs and linking them with industry 
                        and civil society by translating research outcomes into products and services. 
                        The ORIC also ensures that quality of research should reflect the highest 
                        international educational and research standards matching with the world’s best 
                        universities. 
                        <br><br>  
                        The ORIC manages university rankings and harnesses opportunities for hunting and diversifying 
                        research and bringing research to public benefit. The office facilitates and engages with 
                        the postgraduate students and faculty for project proposal write-ups. Budgetary planning. 
                        Preparation of technical progress and financial reports, internal and external monitoring, 
                        scholarly publications and patent registration.
                        <br><br>  
                        The ORIC is also involved in outreach activities through technology display at various 
                        Expos and relevant national forums. The Hi-Tech lab under ORIC provides diagnostic 
                        facilities to the researchers and the civil society.
                    </p>                                   
                </div>              
                
                <!--Announcements-->
                <div class="col-md-6 blog-roll">
                    <div class="page-header" style=" padding-bottom:5px; margin-right: 0px; margin-top: 10px; margin-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;">
                        <h3 style="margin-bottom: 0px; "><b>Announcements</b></h3>                       
                    </div>

                    <marquee behavior="scroll" scrollamount="2" direction="up" scrolldelay="60" height="350px" style="margin-top: 4px;">
                        
                        <div class="media" style="width: 555px; height: 76px; background-color: #E7EAF0; padding-bottom: 5px;">
                            <div style="height: 84px; width: 84px; background-color: aqua; float: left;">
                                <div style="height: 38px; width: 84px; background-color: #002A5C; color: white; text-align: center; padding-top: 6px; font-size: 18px;">
                                    Dec 16                         
                                </div>
                                <div style="height: 38px; width: 84px; background-color: #CED7E6; color: #002A5C; text-align: center; padding-top: 6px; font-size: 16px;">
                                    <b>2024</b>
                                </div>
                            </div>
                            <div class="media-body" style="width: 460px; float: left; margin-left: 10px; padding: 5px;">
                                <h4 class="media-heading">
                                    <a href="files/news/Quick Facts October 2024.pdf" class="text-weight-strong">Quick Facts 2024</a>
                                </h4>
                                <p>This is new file for the quick facts.</p>

                            </div>
                        </div>

                        <div class="media" style="width: 555px; height: 76px; background-color: #E7EAF0; padding-bottom: 5px;">
                            <div style="height: 84px; width: 84px; background-color: aqua; float: left;">
                                <div style="height: 38px; width: 84px; background-color: #002A5C; color: white; text-align: center; padding-top: 6px; font-size: 18px;">
                                    Dec 16                         
                                </div>
                                <div style="height: 38px; width: 84px; background-color: #CED7E6; color: #002A5C; text-align: center; padding-top: 6px; font-size: 16px;">
                                    <b>2024</b>
                                </div>
                            </div>
                            <div class="media-body" style="width: 460px; float: left; margin-left: 10px; padding: 5px;">
                                <h4 class="media-heading">
                                    <a href="files/news/Quick Facts October 2024.pdf" class="text-weight-strong">Quick Facts 2024</a>
                                </h4>
                                <p>This is new file for the quick facts.</p>

                            </div>
                        </div>

                        <div class="media" style="width: 555px; height: 76px; background-color: #E7EAF0; padding-bottom: 5px;">
                            <div style="height: 84px; width: 84px; background-color: aqua; float: left;">
                                <div style="height: 38px; width: 84px; background-color: #002A5C; color: white; text-align: center; padding-top: 6px; font-size: 18px;">
                                    latest                         
                                </div>
                                <div style="height: 38px; width: 84px; background-color: #CED7E6; color: #002A5C; text-align: center; padding-top: 6px; font-size: 16px;">
                                    <b>2023 </b>
                                </div>
                            </div>
                            <div class="media-body" style="width: 460px; float: left; margin-left: 10px; padding: 5px;">
                                <h4 class="media-heading">
                                    <a href="files/quick_facts/Quick Facts 2023.pdf" class="text-weight-strong">Quick Facts 2023</a>
                                </h4>
                                <p>This is new file for the quick facts.</p>
                            </div>
                        </div>

                        <div class="media" style="width: 555px; height: 76px; background-color: #E7EAF0; padding-bottom: 5px;">
                            <div style="height: 84px; width: 84px; background-color: aqua; float: left;">
                                <div style="height: 38px; width: 84px; background-color: #002A5C; color: white; text-align: center; padding-top: 6px; font-size: 18px;">
                                   Calls                         
                                </div>
                                <div style="height: 38px; width: 84px; background-color: #CED7E6; color: #002A5C; text-align: center; padding-top: 6px; font-size: 16px;">
                                     <b>2023 </b>
                                </div>
                            </div>
                            <div class="media-body" style="width: 460px; float: left; margin-left: 10px; padding: 5px;">
                                <h4 class="media-heading">
                                    <a href= "Calls.aspx" class="text-weight-strong">Call for proposals</a>
                                </h4>
                                <p>This is new file for the quick facts.</p>
                            </div>
                        </div>

                        <div class="media" style="width: 555px; height: 76px; background-color: #E7EAF0; padding-bottom: 5px;">
                            <div style="height: 84px; width: 84px; background-color: aqua; float: left;">
                                <div style="height: 38px; width: 84px; background-color: #002A5C; color: white; text-align: center; padding-top: 6px; font-size: 18px;">
                                    16-31                         
                                </div>
                                <div style="height: 38px; width: 84px; background-color: #CED7E6; color: #002A5C; text-align: center; padding-top: 6px; font-size: 16px;">
                                    <b>Dec,2024 </b>
                                </div>
                            </div>
                            <div class="media-body" style="width: 460px; float: left; margin-left: 10px; padding: 5px;">
                                <h4 class="media-heading">
                                    <a href="files/news/ORIC Newsletter-1 (December 16  to 31, 2024).pdf" class="text-weight-strong">ORIC Newsletter</a>
                                </h4>
                                <p>This is new file for the quick facts.</p>
                            </div>
                        </div>                    
                        
                    </marquee>
                </div>

            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="page-header" style="margin: 0px; padding: 0px;">
                        <h2 style="margin-bottom: 0px"><b>Vision</b>
                        </h2>
                    </div>
            
                    <p class="text-justify" style="margin-top: 20px; margin-bottom: 0px; color: #000000;">
                        To enable UAF to act as a creative hub of learning that inspires to explore new 
                        avenues of research, disseminate knowledge and foster creativity, innovation and 
                        entrepreneurship.
                    </p>
                </div>
            
                <div class="col-md-12">
                    <div class="page-header" style="margin: 0px; padding: 0px;">
                        <h2 style="margin-bottom: 0px"><b>Mission</b>
                        </h2>
                    </div>
            
                    <p class="text-justify" style="margin-top: 20px; margin-bottom: 0px; color: #000000;">
                        To develop, expand and spearhead technological advancement in agriculture, 
                        promote skills and ensure transparency in research by achieving excellence in teaching, 
                        research, outreach (national/international), academia-industry linkages and promoting 
                        an entrepreneurial ecosystem.
                    </p>
                </div>
            
                <div class="col-md-12">
                    <div class="page-header" style="margin: 0px; padding: 0px;">
                        <h2 style="margin-bottom: 0px"><b>Objectives</b>
                        </h2>
                    </div>
            
                    <p class="text-justify" style="margin-top: 20px; margin-bottom: 0px; color: #000000;">
                        <ul>
                            <li>Promote a vibrant, innovative and entrepreneurial environment for conducting quality research with an aim to grow knowledge economy.</li>
                            <li>Strengthening academia-industry linkages to formulate collaborative ventures with the corporate community for mutual benefits.</li>
                            <li>Encourage collaborations of departments with local industry and International universities to conduct joint research/internships and faculty-student exchanges.</li>
                            <li>Develop strong and long-term bonds with research funding agencies to support research, development, innovation, outreach commercialization initiatives and policy making and present cutting edge technologies to end-users.</li>
                            <li>Managing of university ranking and opportunities for hunting diversified research grants and ensure conducive environment for research.</li>
                            <li>Ensure transparency in research system of the university.</li>
                        </ul>                                                
                    </p>
                </div>
            </div>
        </div>
    </div>



    <!-- Call out block -->
    <script type="text/javascript">
        $(function () {
            $('img').on('click', function () {
                $('.enlargeImageModalSource').attr('src', $(this).attr('src'));
                $('#enlargeImageModal').modal('show');
            });
        });
    </script>

</asp:Content>
