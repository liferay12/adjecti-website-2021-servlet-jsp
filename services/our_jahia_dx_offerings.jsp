<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html lang="en">

    <head>
        <%@include file="/head.jsp" %>
    </head>

    <body>
        <div class="header_fixed">
            <header>
                <div class="container">
                    <%@include file="/top_nav.jsp" %>
                </div>
            </header>
        </div>

        <!-- COMMON PAGE OF INDUSTRIES START -->
        <figure class="adjectiJahia text-uppercase">
            <img class="img-fluid border-right pr-2" src="images/jahia.png" alt="Adjecti Jahia Image" title="Adjecti Jahia">
            <figcaption class="adjectiCenter text-white text-uppercase font-weight-bold">
                <h1 class="font-weight-bold text-primary">Our Jahia DX Offerings</h1>
                <p class="text-white">Support & Maintenance </p>
            </figcaption>

        </figure>
        <!-- COMMON PAGE OF INDUSTRIES END -->

        <section class="about">
            <div class="container">
                <div class="text-center wow fadeInDown">
                    <h2 class="py-2 textGradient">Strong the powerful combination of digital asset and content
                        management</h2>
                </div>
                <p class="wow fadeInDown text-center"> Lorem Ipsum is simply dummy text of the printing and typesetting
                    industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived
                    not only five centuries. industry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen book. It hasindustry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen book. It has
                </p>

            </div>
        </section>



        <!-- <%@include file="/how_we_work.jsp"%> -->
        <%@include file="/clients.jsp" %>
            <%@include file="/discover.jsp" %>
                <%@include file="/subscribe.jsp" %>

                    <footer>
                        <section class="footer">
                            <%@include file="/footer.jsp" %>
                        </section>
                    </footer>

                    <%@include file="/quick_contact_modal.jsp" %>
                        <!-- Mainly scripts -->
                        <script src="js/jquery-2.1.1.js"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <script src="js/jquery.bxslider.min.js"></script>
                        <script src="js/wow.min.js"></script>
                        <script>
                            $(document).ready(function () {
                                $('.slider').bxSlider({
                                    auto: true,
                                    controls: false
                                });
                                new WOW().init();
                            });
                        </script>
    </body>

    </html>