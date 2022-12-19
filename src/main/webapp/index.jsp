<%-- 
    Document   : index
    Created on : Dec 10, 2022, 2:52:43 PM
    Author     : omerfaruk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Rihana</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/flaticon.css">
  <link href='https://css.gg/user.css' rel='stylesheet'>
  
  <script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    <script>
      window.onscroll = function () { scrollFunction() };

          function scrollFunction() {
            console.log(document.documentElement.scrollTop);
            if (document.documentElement.scrollTop > 80) {
              document.getElementById("btn-login").style.transform = "rotate(90deg)";

            } if (document.documentElement.scrollTop < 80) {
              document.getElementById("btn-login").style.transform = "rotate(360deg)";
            }
          }
        </script>
</head>

<body>
  <jsp:include page="indexNav.jsp" flush="true"/>

  <div class="hero">
    <div class="container-wrap d-flex justify-content-end align-items-end modal-body">
      <a href="#video-modal" class="d-flex justify-content-center align-items-center" data-toggle="modal"
        data-target="#video-modal">
        <iconify-icon icon="bi:play-circle" width="90" height="90"></iconify-icon>
      </a>
    </div>
    <section class="home-slider owl-carousel" id="home-section">
      <div class="slider-item" style="background-image:url(img/xbg_1.jpg.pagespeed.ic.AclQK41gjJ.webp)">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center">
            <div class="col-md-8 ftco-animate">
              <div class="text mb-5 pb-5">
                <h1 class="mb-3">Prestij</h1>
                <h2>Bir Otelden Daha Fazlası</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item" style="background-image:url(img/xbg_2.jpg.pagespeed.ic.chbpB3Ho4l.webp)">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center">
            <div class="col-md-8 ftco-animate">
              <div class="text mb-5 pb-5">
                <h1 class="mb-3">Mükemmel Bir Deneyim</h1>
                <h2>Prestij Otel &amp; Tatil Yeri</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <div class="modal fade" id="video-modal" tabindex="-1" aria-labelledby="video-modalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
        <div class="modal-body p-0">
          <div class="ratio ratio-16x9">
            <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/ism1XqnZJEg"
              title="YouTube video player" frameborder="0"
              allow="accelerometer; autoplay=1; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
  <section class="ftco-booking ftco-section ftco-no-pt ftco-no-pb">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 pr-1 aside-stretch">
          <form action="#" class="booking-form">
            <div class="row">
              <div class="col-md d-flex py-md-4">
                <div class="form-group align-self-stretch d-flex align-items-end">
                  <div class="flex-wrap bg-white align-self-stretch py-3 px-4">
                    <label for="#">Giriş Tarihi</label>
                    <input type="text" class="form-control checkin_date" placeholder="Check-in date">
                  </div>
                </div>
              </div>
              <div class="col-md d-flex py-md-4">
                <div class="form-group align-self-stretch d-flex align-items-end">
                  <div class="flex-wrap bg-white align-self-stretch py-3 px-4">
                    <label for="#">Çıkış Tarihi</label>
                    <input type="text" class="form-control checkout_date" placeholder="Check-out date">
                  </div>
                </div>
              </div>
              <div class="col-md d-flex py-md-4">
                <div class="form-group align-self-stretch d-flex align-items-end">
                  <div class="wrap bg-white align-self-stretch py-3 px-4">
                    <label for="#">Oda</label>
                    <div class="form-field">
                      <div class="select-wrap">
                        <div class="icon">
                          <iconify-icon icon="bi:chevron-compact-down" width="20" height="20"></iconify-icon>
                        </div>
                        <select name="" id="" class="form-control">
                          <option value="">Süit</option>
                          <option value="">Aile Odası</option>
                          <option value="">Lüx Oda</option>
                          <option value="">Luxury Oda</option>
                          <option value="">Superior Oda</option>
                         
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md d-flex py-md-4">
                <div class="form-group align-self-stretch d-flex align-items-end">
                  <div class="wrap bg-white align-self-stretch py-3 px-4">
                    <label for="#">Misafir</label>
                    <div class="form-field">
                      <div class="select-wrap">
                        <div class="icon">
                          <iconify-icon icon="bi:chevron-compact-down" width="20" height="20"></iconify-icon>
                        </div>
                        <select name="" id="" class="form-control">
                          <option value="">1 Kişi</option>
                          <option value="">2 Kişi</option>
                          <option value="">3 Kişi</option>
                          <option value="">4 Kişi</option>
                          <option value="">5 Kişi</option>
                          <option value="">6 Kişi</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md d-flex">
                <div class="form-group d-flex align-self-stretch">
                  <a href="rezervasyonPage.jsp" class="btn btn-black py-5 py-md-3 px-4 align-self-stretch d-block"><span>
                          Kontrol Et<small>En İyi Fiyat Garantisi!</small></span></a>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-wrap">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3">
          <a href="#" class="services-wrap img align-items-end d-flex"
            style="background-image:url(img/xroom-3.jpg.pagespeed.ic.-BqmSKjZKz.webp)">
            <div class="text text-center pb-2">
              <h3>Özel Odalar</h3>
            </div>
          </a>
        </div>
        <div class="col-md-3">
          <a href="#" class="services-wrap img align-items-end d-flex"
            style="background-image:url(img/xswimming-pool.jpg.pagespeed.ic.mC5qZptYus.webp)">
            <div class="text text-center pb-2">
              <h3>Yüzme havuzu</h3>
            </div>
          </a>
        </div>
        <div class="col-md-3">
          <a href="#" class="services-wrap img align-items-end d-flex"
            style="background-image:url(img/xresto.jpg.pagespeed.ic._SJIzCyCO0.webp)">
            <div class="text text-center pb-2">
              <h3>Restoran</h3>
            </div>
          </a>
        </div>
        <div class="col-md-3">
          <div class="services-wrap services-overlay img align-items-center d-flex"
            style="background-image:url(img/xsleep.jpg.pagespeed.ic.KJn3VNUaWY.webp)">
            <div class="text text-center pb-2">
              <h3 class="mb-0">Suit &amp; Oda</h3>
              <span>özel odalar</span>
              <div class="d-flex mt-2 justify-content-center">
                <div class="icon">
                  <div class="mt-1">
                    <a href="#">
                      <span>
                        <iconify-icon icon="bi:chevron-right" width="20" height="20"></iconify-icon>
                      </span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section text-center ftco-animate">
          <span class="subheading">Prestij Otel'e Hoş Geldiniz</span>
          <h2 class="mb-4">Yeni Bir Lüks Otel Vizyonu</h2>
        </div>
      </div>
      <div class="row d-flex">
        <div class="col-md pr-md-1 d-flex align-self-stretch ftco-animate">
          <div class="media block-6 services py-4 d-block text-center">
            <div class="d-flex justify-content-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <span class="flaticon-reception-bell"></span>
              </div>
            </div>
            <div class="media-body">
              <h3 class="heading mb-3">Güler Yüzlü Hizmet</h3>
            </div>
          </div>
        </div>
        <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
          <div class="media block-6 services active py-4 d-block text-center">
            <div class="d-flex justify-content-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <span class="flaticon-serving-dish"></span>
              </div>
            </div>
            <div class="media-body">
              <h3 class="heading mb-3">Kahvaltı</h3>
            </div>
          </div>
        </div>
        <div class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate">
          <div class="media block-6 services py-4 d-block text-center">
            <div class="d-flex justify-content-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <span class="flaticon-car"></span>
              </div>
            </div>
            <div class="media-body">
              <h3 class="heading mb-3">Transfer Hizmetleri</h3>
            </div>
          </div>
        </div>
        <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
          <div class="media block-6 services py-4 d-block text-center">
            <div class="d-flex justify-content-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <span class="flaticon-spa"></span>
              </div>
            </div>
            <div class="media-body">
              <h3 class="heading mb-3">Suit &amp; SPA</h3>
            </div>
          </div>
        </div>
        <div class="col-md pl-md-1 d-flex align-self-stretch ftco-animate">
          <div class="media block-6 services py-4 d-block text-center">
            <div class="d-flex justify-content-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <span>
                  <iconify-icon icon="ion:bed" width="54" height="54.5"></iconify-icon>
                </span>
              </div>
            </div>
            <div class="media-body">
              <h3 class="heading mb-3">Rahat Odalar</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section bg-light ftco-room" id="rooms-section">
    <div class="container-fluid px-0" >
      <div class="row no-gutters justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section text-center ftco-animate">
          <span class="subheading">Prestij Odaları</span>
          <h2 class="mb-4">Size Uygun Oda Çeşitleri</h2>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <div class="room-wrap">
            <div class="img d-flex align-items-center"
              style="background-image:url(img/xbg_3.jpg.pagespeed.ic.JAfb0DsHvt.webp)">
              <div class="text text-center px-4 py-4">
                <h2>Hoş Geldiniz <a href="index.html">Prestij</a> Otel</h2>
                <p>5 Yıldızlı Otel Deneyimini Yaşayın.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="room-wrap d-md-flex">
            <a href="#" class="img" style="background-image:url(img/xroom-1.jpg.pagespeed.ic.0q4Bp6Qeo7.webp)"></a>
            <div class="half left-arrow d-flex align-items-center">
              <div class="text p-4 p-xl-5 text-center">
                <p class="star mb-0">
                  <span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                    class="ion-ios-star"></span><span class="ion-ios-star"></span>
                </p>
                <p class="mb-0"><span class="price mr-1">₺3200.00</span> <span class="per">Tek Gecelik</span></p>
                <h3 class="mb-3"><a href="rooms.html">Süit Odalar</a></h3>
                <p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2">Oda Detaylarını Görüntüle
                    <span class="icon-long-arrow-right"></span>
                  </a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="room-wrap d-md-flex">
            <a href="#" class="img order-md-last"
              style="background-image:url(img/xroom-2.jpg.pagespeed.ic.qQEQzEZcIj.webp)"></a>
            <div class="half right-arrow d-flex align-items-center">
              <div class="text p-4 p-xl-5 text-center">
                <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                    class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                <p class="mb-0"><span class="price mr-1">₺9300.00</span> <span class="per">Tek Gecelik</span></p>
                <h3 class="mb-3"><a href="rooms.html">Aile Odaları</a></h3>
                <p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2">Oda Detaylarını Görüntüle <span
                      class="icon-long-arrow-right"></span></a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="room-wrap d-md-flex">
            <a href="#" class="img order-md-last"
              style="background-image:url(img/xroom-3.jpg.pagespeed.ic.-BqmSKjZKz.webp)"></a>
            <div class="half right-arrow d-flex align-items-center">
              <div class="text p-4 p-xl-5 text-center">
                <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                    class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                <p class="mb-0"><span class="price mr-1">₺5300.00</span> <span class="per">Tek Gecelik</span></p>
                <h3 class="mb-3"><a href="rooms.html">Lüx Odalar</a></h3>
                <p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2">Oda Detaylarını Görüntüle <span
                      class="icon-long-arrow-right"></span></a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="room-wrap d-md-flex">
            <a href="#" class="img" style="background-image:url(img/xroom-4.jpg.pagespeed.ic.5v9gH2L7pP.webp)"></a>
            <div class="half left-arrow d-flex align-items-center">
              <div class="text p-4 p-xl-5 text-center">
                <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                    class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                <p class="mb-0"><span class="price mr-1">₺6250.00</span> <span class="per">Tek Gecelik</span></p>
                <h3 class="mb-3"><a href="rooms.html">Luxury Room</a></h3>
                <p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2">Oda Detaylarını Görüntüle <span
                      class="icon-long-arrow-right"></span></a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="room-wrap d-md-flex">
            <a href="#" class="img" style="background-image:url(img/xroom-6.jpg.pagespeed.ic.jmpfruk5EA.webp)"></a>
            <div class="half left-arrow d-flex align-items-center">
              <div class="text p-4 p-xl-5 text-center">
                <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                    class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                <p class="mb-0"><span class="price mr-1">₺10200.00</span> <span class="per">Tek Gecelik</span></p>
                <h3 class="mb-3"><a href="rooms.html">Superior Room</a></h3>
                <p class="pt-1"><a href="room-single.html" class="btn-custom px-3 py-2">Oda Detaylarını Görüntüle <span
                      class="icon-long-arrow-right"></span></a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section testimony-section bg-light" id="about-section">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section text-center ftco-animate">
          <span class="subheading">Yorumlar</span>
          <h2 class="mb-4">Mutlu Misafir Yorumları</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-8 ftco-animate">
          <div class="row ftco-animate">
            <div class="col-md-12">
              <div class="carousel-testimony owl-carousel ftco-owl">
                <div class="item">
                  <div class="testimony-wrap py-4 pb-5">
                    <div class="user-img mb-4"
                      style="background-image:url(img/xperson_1.jpg.pagespeed.ic.a2MnMHMs44.webp)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="icon-quote-left"></i>
                      </span>
                    </div>
                    <div class="text text-center">
                      <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span></p>
                      <p class="mb-4">Mükemmel Bir Deneyimdi. Cennet Böyle Bir Yer Olmalı.
                        </p>
                      <p class="name">Hakkı Mert Peyk</p>
                      <span class="position">Misafir</span>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-wrap py-4 pb-5">
                    <div class="user-img mb-4"
                      style="background-image:url(img/xperson_2.jpg.pagespeed.ic.Xrdu_nPZRp.webp)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="icon-quote-left"></i>
                      </span>
                    </div>
                    <div class="text text-center">
                      <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span></p>
                      <p class="mb-4">CSS in amk:</p>
                      <p class="name">Ömer Faruk</p>
                      <span class="position">Misafir</span>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-wrap py-4 pb-5">
                    <div class="user-img mb-4"
                      style="background-image:url(img/xperson_3.jpg.pagespeed.ic.Cln-jaM1jK.webp)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="icon-quote-left"></i>
                      </span>
                    </div>
                    <div class="text text-center">
                      <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span></p>
                      <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary
                        regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                        mouth.</p>
                      <p class="name">Nathan Smith</p>
                      <span class="position">Guests</span>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-wrap py-4 pb-5">
                    <div class="user-img mb-4"
                      style="background-image:url(img/xperson_1.jpg.pagespeed.ic.a2MnMHMs44.webp)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="icon-quote-left"></i>
                      </span>
                    </div>
                    <div class="text text-center">
                      <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span></p>
                      <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary
                        regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                        mouth.</p>
                      <p class="name">Nathan Smith</p>
                      <span class="position">Guests</span>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-wrap py-4 pb-5">
                    <div class="user-img mb-4"
                      style="background-image:url(img/xperson_1.jpg.pagespeed.ic.a2MnMHMs44.webp)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="icon-quote-left"></i>
                      </span>
                    </div>
                    <div class="text text-center">
                      <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span><span class="ion-ios-star"></span><span
                          class="ion-ios-star"></span></p>
                      <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary
                        regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your
                        mouth.</p>
                      <p class="name">Nathan Smith</p>
                      <span class="position">Guests</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section ftco-no-pt ftco-no-pb px-0">
    <div class="container-fluid px-0">
      <div class="row no-gutters justify-content-end">
        <div class="col-md-12">
          <div id="home" class="video-hero"
            style="height:800px;background-image:url(img/xbg_1.jpg.pagespeed.ic.AclQK41gjJ.webp);background-size:cover;background-position:center center">
            <a class="player"
              data-property="{videoURL:'https://www.youtube.com/watch?v=ism1XqnZJEg',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:0, opacity:1, quality:'default'}"></a>
            <div class="container">
              <div class="row justify-content-start d-flex align-items-end height-text ">
                <div class="col-md-8">
                  <div class="text">
                    <h1>En Çok Tavsiye Edilen Oteliz</h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section ftco-menu"
    style="background-image:url(img/xrestaurant-pattern.jpg.pagespeed.ic.LbTPrbPHNM.webp)" id="restaurant-section">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section text-center ftco-animate">
          <span class="subheading">Restorant</span>
          <h2>Restorant</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img order-md-last" style="background-image:url(img/xmenu-1.jpg.pagespeed.ic.yC-EI1C2Sl.webp)">
            </div>
            <div class="desc pr-3 text-md-right">
              <div class="d-md-flex text align-items-center">
                <h3 class="order-md-last heading-left"><span>Havyarlı Pasta</span></h3>
                <span class="price price-left">₺120.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img order-md-last" style="background-image:url(img/xmenu-2.jpg.pagespeed.ic.xuS6fI649R.webp)">
            </div>
            <div class="desc pr-3 text-md-right">
              <div class="d-md-flex text align-items-center">
                <h3 class="order-md-last heading-left"><span>Meyveli Pasta</span></h3>
                <span class="price price-left">₺90.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img order-md-last" style="background-image:url(img/xmenu-3.jpg.pagespeed.ic.uGV1uE0TVM.webp)">
            </div>
            <div class="desc pr-3 text-md-right">
              <div class="d-md-flex text align-items-center">
                <h3 class="order-md-last heading-left"><span>Meyveli Krep</span></h3>
                <span class="price price-left">₺100.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img order-md-last" style="background-image:url(img/xmenu-4.jpg.pagespeed.ic._eupGZGDhZ.webp)">
            </div>
            <div class="desc pr-3 text-md-right">
              <div class="d-md-flex text align-items-center">
                <h3 class="order-md-last heading-left"><span>Dana Bonfile</span></h3>
                <span class="price price-left">₺400.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img" style="background-image:url(img/xmenu-5.jpg.pagespeed.ic.AjEzQKSqtq.webp)"></div>
            <div class="desc pl-3">
              <div class="d-md-flex text align-items-center">
                <h3><span>Izgara Tavuk</span></h3>
                <span class="price">₺120.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img" style="background-image:url(img/xmenu-6.jpg.pagespeed.ic.SSID_aLKfC.webp)"></div>
            <div class="desc pl-3">
              <div class="d-md-flex text align-items-center">
                <h3><span>Tavuk Sote</span></h3>
                <span class="price">₺180.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img" style="background-image:url(img/xmenu-7.jpg.pagespeed.ic.E5AmxrGlDY.webp)"></div>
            <div class="desc pl-3">
              <div class="d-md-flex text align-items-center">
                  <h3><span>Alkollü İçecekler</span></h3>
                <span class="price">₺200.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
          <div class="pricing-entry d-flex ftco-animate">
            <div class="img" style="background-image:url(img/xmenu-8.jpg.pagespeed.ic.qnCVD_wbaQ.webp)"></div>
            <div class="desc pl-3">
              <div class="d-md-flex text align-items-center">
                <h3><span>Milkshake &amp; Soğuk Kahve</span></h3>
                <span class="price">₺80.00</span>
              </div>
              <div class="d-block">
                <p>A small river named Duden flows by their place and supplies</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section" id="blog-section">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section text-center ftco-animate" >
          <span class="subheading">Blog Oku</span>
          <h2>Blog</h2>
        </div>
      </div>
      <div class="row d-flex">
        <div class="col-md-4 d-flex ftco-animate">
          <div class="blog-entry align-self-stretch">
            <a href="blog-single.html" class="block-20"
              style="background-image:url(img/ximage_1.jpg.pagespeed.ic.5DkxjauAhn.webp)">
            </a>
            <div class="text mt-3 text-center">
              <div class="meta mb-2">
                <div><a href="#">Ocak 03, 2019</a></div>
                <div><a href="#">Admin</a></div>
                <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
              </div>
              <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
              </h3>
              <p><a href="#" class="btn-custom">Devamını Oku</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
          <div class="blog-entry align-self-stretch">
            <a href="blog-single.html" class="block-20"
              style="background-image:url(img/ximage_2.jpg.pagespeed.ic.iRhitIsi5A.webp)">
            </a>
            <div class="text mt-3 text-center">
              <div class="meta mb-2">
                <div><a href="#">Mart 03, 2019</a></div>
                <div><a href="#">Admin</a></div>
                <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
              </div>
              <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
              </h3>
              <p><a href="#" class="btn-custom">Devamını Oku</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
          <div class="blog-entry align-self-stretch">
            <a href="blog-single.html" class="block-20"
              style="background-image:url(img/ximage_3.jpg.pagespeed.ic.wLTAdXVdRP.webp)">
            </a>
            <div class="text mt-3 text-center">
              <div class="meta mb-2">
                <div><a href="#">Şubat 03, 2019</a></div>
                <div><a href="#">Admin</a></div>
                <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
              </div>
              <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a>
              </h3>
              <p><a href="#" class="btn-custom">Devamını Oku</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="instagram">
    <div class="container-fluid">
      <div class="row no-gutters justify-content-center pb-5">
        <div class="col-md-7 text-center heading-section ftco-animate">
          <span class="subheading">Fotoğraflar</span>
          <h2><span>Instagram</span></h2>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-sm-12 col-md ftco-animate">
          <a href="img/insta-1.jpg" class="insta-img" data-toggle="modal" data-target="#insta-1"
            style="background-image:url(img/xinsta-1.jpg.pagespeed.ic.2na4p6O9wY.webp)">
            <div class="icon d-flex justify-content-center">
              <span class="icon-instagram align-self-center"></span>
            </div>
          </a>
        </div>
        <div id="insta-1" class="modal fade" aria-labelledby="insta-1Label" aria-hidden="true" tabindex="-1" role="dialog">
          <div class="modal-dialog" data-dismiss="modal">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img src="img/xinsta-1.jpg.pagespeed.ic.2na4p6O9wY.webp" class="img-responsive" style="width: 100%;">
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md ftco-animate">
          <a href="img/insta-2.jpg" class="insta-img" data-toggle="modal" data-target="#insta-2"
            style="background-image:url(img/xinsta-2.jpg.pagespeed.ic.ebWPeomeew.webp)">
            <div class="icon d-flex justify-content-center">
              <span class="icon-instagram align-self-center"></span>
            </div>
          </a>
        </div>
        <div id="insta-2" class="modal fade" aria-labelledby="insta-2Label" aria-hidden="true" tabindex="-1" role="dialog">
          <div class="modal-dialog modal-dialog-centered" data-dismiss="modal">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img src="img/xinsta-2.jpg.pagespeed.ic.ebWPeomeew.webp" class="img-responsive" style="width: 100%;">
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md ftco-animate">
          <a href="img/insta-3.jpg" class="insta-img" data-toggle="modal" data-target="#insta-3"
            style="background-image:url(img/xinsta-3.jpg.pagespeed.ic.IvRP9vKCkR.webp)">
            <div class="icon d-flex justify-content-center">
              <span class="icon-instagram align-self-center"></span>
            </div>
          </a>
        </div>
        <div id="insta-3" class="modal fade" aria-labelledby="insta-3Label" aria-hidden="true" tabindex="-1" role="dialog">
          <div class="modal-dialog modal-dialog-centered" data-dismiss="modal">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img src="img/xinsta-3.jpg.pagespeed.ic.IvRP9vKCkR.webp" class="img-responsive" style="width: 100%;">
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md ftco-animate">
          <a href="img/insta-4.jpg" class="insta-img" data-toggle="modal" data-target="#insta-4"
            style="background-image:url(img/xinsta-4.jpg.pagespeed.ic.yzRt_Fln6r.webp)">
            <div class="icon d-flex justify-content-center">
              <span class="icon-instagram align-self-center"></span>
            </div>
          </a>
        </div>
        <div id="insta-4" class="modal fade" aria-labelledby="insta-4Label" aria-hidden="true" tabindex="-1" role="dialog">
          <div class="modal-dialog" data-dismiss="modal">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <img src="img/xinsta-4.jpg.pagespeed.ic.yzRt_Fln6r.webp" class="img-responsive" style="width: 100%;">
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md ftco-animate">
          <a href="img/insta-5.jpg" class="insta-img" data-toggle="modal" data-target="#insta-5"
            style="background-image:url(img/xinsta-5.jpg.pagespeed.ic.Ch5m2V-S9S.webp)">
            <div class="icon d-flex justify-content-center">
              <span class="icon-instagram align-self-center"></span>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div id="insta-5" class="modal fade" aria-labelledby="insta-5Label" aria-hidden="true" tabindex="-1" role="dialog">
      <div class="modal-dialog" data-dismiss="modal">
        <div class="modal-content">
          <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <img src="img/xinsta-5.jpg.pagespeed.ic.Ch5m2V-S9S.webp" class="img-responsive" style="width: 100%;">
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer class="ftco-footer ftco-bg-dark ftco-section" id="contact-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Prestij</h2>
            <p>Otelcilikte Yılların Tecrübesiyle Mutlu ve Sağlıklı Bir yaşam</p>
            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4 ml-md-5">
            <h2 class="ftco-heading-2">Bilgilendirme</h2>
            <ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">Blog</a></li>
              <li><a href="#" class="py-2 d-block">Odalar</a></li>
        
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Bize Ulaşın</h2>
            <ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">Hakkında</a></li>
              <li><a href="#" class="py-2 d-block">İletişim</a></li>
      
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Sorularınız mı var?</h2>
            <div class="block-23 mb-3">
              <ul>
                <li><span class="icon icon-map-marker"></span><span class="text">Şirinyalı, Lara Cd. No:28, 07100 Muratpaşa/Antalya</span></li>
                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+90 542 894 5757</span></a></li>
                <li><a href="#"><span class="icon icon-envelope"></span><span class="text"><span class="__cf_email__"
                        data-cfemail="abc2c5cdc4ebd2c4ded9cfc4c6cac2c585c8c4c6">[email&#160;protected]</span></span></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <p>
            Copyright &copy;
            <script data-cfasync="false" src="js/cloudflare-static/email-decode.min.js"></script>
            <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with
            <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="http://omaralfarouk.com/" target="_blank">BYA</a>
          </p>
        </div>
      </div>
    </div>
  </footer>

  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#F96D00" />
    </svg></div>
<script src="js/main.js"></script>
  <script src="js/jquery.min.js"></script>
  
  <script src="js/jquery-migrate-3.0.1.min.js+popper.min.js+bootstrap.min.js.pagespeed.jc.bWy9KSRkPr.js"></script>
  <script>eval(mod_pagespeed_s0TMcfHaBC);</script>
  <script>eval(mod_pagespeed_IcSZ8M2qIG);</script>
  <script>eval(mod_pagespeed_f$DgaqZSNS);</script>
  <script
    src="js/jquery.easing.1.3.js+jquery.waypoints.min.js+jquery.stellar.min.js+owl.carousel.min.js.pagespeed.jc.rAu6rTRP-H.js"></script>
  <script>eval(mod_pagespeed_h_q6RN2xQu);</script>
  <script>eval(mod_pagespeed_KOJpOiOb27);</script>
  <script>eval(mod_pagespeed_tDDCmBAKZt);</script>
  <script>eval(mod_pagespeed_Wl0$osxNZB);</script>
  <script
    src="js/jquery.magnific-popup.min.js+aos.js+jquery.animateNumber.min.js+jquery.mb.YTPlayer.min.js.pagespeed.jc.pdW0quDuBm.js"></script>
  <script>eval(mod_pagespeed_sma7s5TUCI);</script>
  <script>eval(mod_pagespeed_FtwLbyDc9E);</script>
  <script>eval(mod_pagespeed_MEnB_ULTkN);</script>
  <script>eval(mod_pagespeed_XPtj4Dqkua);</script>
  <script src="js/bootstrap-datepicker.js+scrollax.min.js+google-map.js+main.js.pagespeed.jc.3OX7m4BfsR.js"></script>
  <script>eval(mod_pagespeed_5RCOc4uC1D);</script>
  
  <script>eval(mod_pagespeed_IK4QGLcbLS);</script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script>eval(mod_pagespeed_2UQNrhl3o6);</script>
<script>eval(mod_pagespeed_R227twyO_u);</script>
  
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    
</body>

</html>