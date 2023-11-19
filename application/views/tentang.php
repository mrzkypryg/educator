<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background="">
        </div>
        <div class="container">
            <div class="banner_content text-center">
                <h2 data-aos="fade-up" data-aos-duration="1600">Tentang Educator</h2>
                <div data-aos="fade-up" data-aos-duration="1800" class="page_link">
                    <a href="<?= base_url('welcome') ?>">Beranda</a>
                    <a href="">Tentang</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Home Banner Area =================-->

<!--================About Area =================-->
<section class="about_area p_60">
    <div class="container">
        <div class="main_title">
            <h2 data-aos="fade-up" data-aos-duration="1600" style="font-size: 33px !important;">Tentang Educator</h2>
            <p data-aos="fade-up" data-aos-duration="1800">Educator adalah Web Edukasi yang dirancang dirancang untuk kebaikan pendidikan Indonesia menjadi lebih baik terutama kepada tenaga pendidik.
                Guru dapat mengupload video untuk membantu meningkatkan kualitas soft skill dan hard skill tenaga pendidik di Indonesia.
            </p>
        </div>
        <div class="row about_inner">
            <div class="col-lg-6">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Visi
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                            Visi dari website Educator adalah untuk meningkatkan kualitas tenaga pendidik di Indonesia pada bidang soft skill dan hard skill.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Misi
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                            Misi dari website ini adalah untuk memberikan informasi dan sumber daya pembelajaran berupa video yang dibutuhkan oleh tenaga pendidik untuk meningkatkan kualitas soft skill dan hard skill mereka.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Tujuan
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                Tujuan dari website ini adalah untuk membantu tenaga pendidik di Indonesia untuk menjadi lebih kompeten dan efektif dalam mengajar, serta membantu siswa untuk mencapai potensi mereka.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingfour">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                Manfaat
                                <i class="lnr lnr-chevron-down"></i>
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                        </div>
                        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionExample">
                            <div class="card-body">
                                Manfaat dari website ini adalah untuk meningkatkan kualitas pendidikan di Indonesia dan membantu menciptakan generasi yang lebih berkualitas dan siap menghadapi tantangan masa depan.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="video_area" id="video">
                    <img class="img-fluid" src="<?= base_url('assets/') ?>img/video-1.jpg" alt="" />
                    <a class="popup-youtube" href="https://www.youtube.com/watch?v=Xw-sgcMLJcQ">
                        <img src="<?= base_url('assets/') ?>img/icon/video-icon-1.png" alt="" />
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End About Area =================-->



<!--================Impress Area =================-->
<section class="impress_area p_120">
    <div class="container">
        <div class="impress_inner text-center">
            <h2 data-aos="fade-up" data-aos-duration="1800">LOGIN SEBAGAI GURU DAN UPLOAD MATERI & VIDEO SEKARANG</h2>
            <p data-aos="fade-up" data-aos-duration="2000">Ayo bergabung menjadi guru untuk membantu meningkatkan kualitas tenaga pendidik di Indonesia. Berikan dan upload materi video terbaikmu sekarang !. 
				Mari dukung kemajuan tenaga pendidik di Indonesia.
            </p>
            <a data-aos="fade-up" data-aos-duration="2200" class="main_btn" href="<?= base_url('welcome/guru') ?>">Login Sebagai Guru <span class="lnr lnr-arrow-right text-black"></span></a>
        </div>
    </div>
</section>
<!--================End Impress Area =================-->