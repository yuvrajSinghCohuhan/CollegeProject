<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>LEAGLE-ALLAY</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Law Firm Website Template" name="keywords">
        <meta content="Law Firm Website Template" name="description">

        <!-- Favicon -->
        <link href="/views/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="/views/lib/animate/animate.min.css" rel="stylesheet">
        <link href="/views/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="/views/css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            
            <jsp:include page="header.jsp"></jsp:include>
            
            <!-- Carousel Start -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/views/img/carousel-1.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We fight for your justice</h1>
                            <p class="animated fadeInRight">Lorem ipsum dolor sit amet elit. Mauris odio mauris...</p>
                            <a class="btn animated fadeInUp" href="/user/appointment">Get free consultation</a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="/views/img/carousel-2.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We prepared to oppose for you</h1>
                            <p class="animated fadeInRight">Lorem ipsum dolor sit amet elit. Mauris odio mauris...</p>
                            <a class="btn animated fadeInUp" href="/user/appointment">Get free consultation</a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="/views/img/carousel-3.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">We fight for your privilege</h1>
                            <p class="animated fadeInRight">Lorem ipsum dolor sit amet elit. Mauris odio mauris...</p>
                            <a class="btn animated fadeInUp" href="/user/appointment">Get free consultation</a>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- Carousel End -->
            
            
            <!-- Top Feature Start-->
            <div class="feature-top">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-check-circle"></i>
                                <h3>Legal</h3>
                                <p>Govt Approved</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="fa fa-user-tie"></i>
                                <h3>Attorneys</h3>
                                <p>Expert Attorneys</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-thumbs-up"></i>
                                <h3>Success</h3>
                                <p>99.99% Case Won</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-handshake"></i>
                                <h3>Support</h3>
                                <p>Quick Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Feature End-->
            
            
            <!-- About Start -->
            <div class="about">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="about-img">
                                <img src="/views/img/about.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="section-header">
                                <h2>Learn About Us</h2>
                            </div>
                            <div class="about-text">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.
                                </p>
                                <a class="btn" href="/user/about">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Service Start -->
<div class="service">
    <div class="container">
        <div class="section-header">
            <h2>Our Practices Areas</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-landmark"></i>
                    </div>
                    <h3>Civil Law</h3>
                    <p>We handle disputes between individuals and organizations, including property issues, contracts, and personal injury claims.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="civil">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-users"></i>
                    </div>
                    <h3>Family Law</h3>
                    <p>Our family law experts provide assistance in matters like divorce, child custody, alimony, and adoption procedures.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="family">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-hand-holding-usd"></i>
                    </div>
                    <h3>Business Law</h3>
                    <p>We offer legal support for businesses, including contract drafting, mergers and acquisitions, and regulatory compliance.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="business">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>
                    <h3>Education Law</h3>
                    <p>We represent students, parents, and educational institutions in matters of academic rights, policies, and discrimination.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="education">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-gavel"></i>
                    </div>
                    <h3>Criminal Law</h3>
                    <p>Our criminal defense attorneys protect your rights and provide representation in cases involving theft, assault, or fraud.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="criminal">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-globe"></i>
                    </div>
                    <h3>Cyber Law</h3>
                    <p>We deal with cybercrime, data protection, and online fraud, ensuring your digital rights and privacy are safeguarded.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="cyber">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

		<!-- Feature Start -->
		<div class="feature">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-header">
							<h2>Why Choose Us</h2>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="fa fa-gavel"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Best law practices</h3>
								<p>We follow industry-leading practices to ensure the highest level of professionalism, ethics, and legal excellence.</p>
							</div>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="fa fa-balance-scale"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Efficiency & Trust</h3>
								<p>Our team prioritizes transparency and timely execution, building trust with each client through clear communication.</p>
							</div>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="far fa-smile"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Results you deserve</h3>
								<p>We work tirelessly to deliver the outcomes that serve your best interests, both legally and personally.</p>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="feature-img">
							<img src="/views/img/feature.jpg" alt="Feature">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Feature End -->
            
            
            


           <!-- FAQs Start -->
<div class="faqs">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="faqs-img">
                    <img src="/views/img/faqs.jpg" alt="Image">
                </div>
            </div>
            <div class="col-md-7">
                <div class="section-header">
                    <h2>Have a Question?</h2>
                </div>
                <div id="accordion">
                    <div class="card">
                        <div class="card-header">
                            <a class="card-link" data-toggle="collapse" href="#collapseOne">
                                <span>1</span> How can I book a consultation with a lawyer?
                            </a>
                        </div>
                        <div id="collapseOne" class="collapse show" data-parent="#accordion">
                            <div class="card-body">
                                Simply log in to your client account, browse available lawyers, and click on the "Send Request" button. Once the lawyer accepts, you’ll be notified of the booking details.
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" href="#collapseTwo">
                                <span>2</span> Are online consultations legally valid?
                            </a>
                        </div>
                        <div id="collapseTwo" class="collapse" data-parent="#accordion">
                            <div class="card-body">
                                Yes, online legal consultations are legally valid and widely accepted in most cases. However, certain documents may require in-person verification or notarization.
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" href="#collapseThree">
                                <span>3</span> How do I know which lawyer is right for me?
                            </a>
                        </div>
                        <div id="collapseThree" class="collapse" data-parent="#accordion">
                            <div class="card-body">
                                You can view lawyer profiles, check their specializations, read reviews, and consult ratings to find a lawyer that matches your legal needs.
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" href="#collapseFour">
                                <span>4</span> Can I cancel a booking request?
                            </a>
                        </div>
                        <div id="collapseFour" class="collapse" data-parent="#accordion">
                            <div class="card-body">
                                Yes, you can cancel a booking request before the consultation begins. Go to your profile, find your bookings, and click "Cancel".
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" href="#collapseFive">
                                <span>5</span> Is my personal information secure?
                            </a>
                        </div>
                        <div id="collapseFive" class="collapse" data-parent="#accordion">
                            <div class="card-body">
                                Absolutely. We use encrypted servers and secure data protocols to ensure that all client and lawyer information remains private and protected.
                            </div>
                        </div>
                    </div>
                </div>
                <a class="btn btn-primary mt-3" href="/contact">Ask More</a>
            </div>
        </div>
    </div>
</div>
<!-- FAQs End -->
           


           
            
            
            <!-- Newsletter Start -->
            <div class="newsletter">
                <div class="container">
                    <div class="section-header">
                        <h2>BE RESPECTFUL FOR KANUN</h2>
                    </div>
                </div>
            </div>
            <!-- Newsletter End -->


            <jsp:include page="footer.jsp"></jsp:include>
            
            <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="/views/lib/easing/easing.min.js"></script>
        <script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="/views/lib/isotope/isotope.pkgd.min.js"></script>

        <!-- Template Javascript -->
        <script src="/views/js/main.js"></script>
    </body>
</html>
