<%-- Document : userPage Created on : Nov 8, 2022, 10:32:58 AM Author :
omerfaruk --%> <%@page import="java.util.ArrayList"%> <%@page
import="com.omar.hotelreservation.getInfo"%> <%@page
import="com.omar.hotelreservation.mySql"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en" data-lang="" data-template="gms-free-content">
  <head>
    <script
      type="text/javascript"
      src="https://app.secureprivacy.ai/script/61728e9cdd3f47f9277b168e.js"
    ></script>
    <script>
      window.addEventListener(
        "sp_init",
        function (evt) {
          window.sp.switchLanguage("en");
        },
        false
      );
    </script>
    <script>
      var galaxyGMS = (function () {
        var e;
        return {
          isUserLoggedIn: function () {
            try {
              var r =
                sessionStorage.getItem("gms_profil_data") ||
                localStorage.getItem("gms_profil_data");
              return !!(
                r &&
                (e = JSON.parse(r)) &&
                e.firstName &&
                e.timestamp &&
                45 > (+new Date() - e.timestamp) / 1e3 / 60
              );
            } catch (e) {
              return !1;
            }
          },
          userTierKey: function () {
            if (this.isUserLoggedIn()) {
              var r = e.levelName;
              if ("string" == typeof r)
                return r.toLowerCase().replace(/ /g, "_");
            }
            return !1;
          },
        };
      })();
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="/css/userPage.css"
    />
    <script>
      window.gmsSDKSession = true; // use sessionStorage and not localStorage for sdk (user token)
    </script>
    <script src="https://cdn.galaxy.tf/asset-galaxy/js/gms-latest.min.js?v7023236b1ce1009d84aebdbd9bf8bdbe"></script>
    <script>
      window.gmsJSPath = "/integration/mphotels/public/shared-gms-v2/js/";
    </script>
    <script
      defer
      src="/integration/mphotels/public/shared-gms-v2/js/main.bundle.js?v7023236b1ce1009d84aebdbd9bf8bdbe"
    ></script>
    <meta
      name="google-site-verification"
      content="OaX-Dkeyk4GC8DPZvFetKqYaILlKbHJbmTL1jrMmT8I"
    />
    <!-- Meta Pixel Code -->

    <script>
      !(function (f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function () {
          n.callMethod
            ? n.callMethod.apply(n, arguments)
            : n.queue.push(arguments);
        };

        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = "2.0";

        n.queue = [];
        t = b.createElement(e);
        t.async = !0;

        t.src = v;
        s = b.getElementsByTagName(e)[0];

        s.parentNode.insertBefore(t, s);
      })(
        window,
        document,
        "script",

        "https://connect.facebook.net/en_US/fbevents.js"
      );

      fbq("init", "2907421596228663");

      fbq("track", "PageView");
    </script>

    <noscript
      ><img
        height="1"
        width="1"
        style="display: none"
        src="https://www.facebook.com/tr?id=2907421596228663&ev=PageView&noscript=1"
    /></noscript>

    <!-- End Meta Pixel Code -->
    <title>Guest Portal Dashboard | MP Hotels</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta property="og:site_name" content="MP Hotels" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow" />
    <link
      rel="canonical"
      href="https://www.mphotels.com/guest-portal-dashboard"
    />
    <link
      type="image/x-icon"
      href="https://cdn.galaxy.tf/uploads/3s/website/001/624/594/1624594357_60d557b55e5c3.png"
      rel="shortcut icon"
    />
    <link
      rel="alternate"
      href="https://www.mphotels.com/guest-portal-dashboard"
      hreflang="en"
    />
    <link
      rel="alternate"
      href="https://www.mphotels.com/de/guest-portal-dashboard"
      hreflang="de"
    />
    <meta
      property="og:url"
      content="https://www.mphotels.com/guest-portal-dashboard"
    />
    <meta property="og:title" content="Guest Portal Dashboard | MP Hotels" />
    <meta property="og:description" content="" />
    <meta property="og:locale" content="en_US" />
    <script type="application/ld+json">
      {
        "@context": "http:\/\/schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
          {
            "@type": "ListItem",
            "position": 1,
            "item": {
              "@id": "https:\/\/www.mphotels.com\/guest-portal-dashboard",
              "name": "Guest portal dashboard"
            }
          }
        ]
      }
    </script>
    <script>
      var websiteID = 4629;
    </script>
    <script>
      var cms = 137909;
    </script>
    <script>
      var ts_analytics = {
        master_brand_bid: "1075679",
        brand_bid: "1075679",
        master_brand_chain_id: "",
      };
    </script>
    <script>
      window.dataLayer = window.dataLayer || [];
      var dl = {
        pageLanguage: "en",
        tvs: "tvs_no",
        websiteLanguage: "en",
        pageSection: "not_applicable",
        pageSubSection: "not_applicable",
        contentGroup: "not_applicable",
        globalProduct: "guest_portal",
        event: "datalayer-first-render",
        productPurchased: "custom",
        propertyWebsiteLanguages: 8,
        webHostname: "mphotels.com",
        parentHostname: "not_applicable",
      };
      dl.loggedIn = galaxyGMS.isUserLoggedIn() ? "yes" : "no";
      dl.memberTier = galaxyGMS.userTierKey()
        ? galaxyGMS.userTierKey()
        : "null";
      window.dataLayer.push(dl);
    </script>
    <script>
      var galaxyInfo = {
        website_id: 4629,
        tvs: 0,
        cms_id: 137909,
        iso: "en_US",
        local: "en",
        traduction_id: 1,
        env: "prod",
        domain_unique_id: "a0dfa7a85ae8354b1900e33d7a37e4a6",
        proxy_url: "https://tc.galaxy.tf",
        proxy_key: "5b4a236e8048ce6c8b27bb5221146d97",
        proxy_url_lead:
          "https://tc.galaxy.tf/leads?key=5b4a236e8048ce6c8b27bb5221146d97&glx-website-id=4629&glx-trad-id=1",
        item_previous: "",
        item_current: "",
        item_next_item: "",
        item_count: "0",
        auto_visibility_start: "",
        auto_visibility_end: "",
        visibility_redirect_url: "",
        locales_theme: "/json/locale/4629/229/1",
        live_website: true,
        backstage: "https://www.travelclick-websolutions.com",
      };
    </script>
    <script>
      (function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
        var f = d.getElementsByTagName(s)[0],
          j = d.createElement(s),
          dl = l != "dataLayer" ? "&l=" + l : "";
        j.async = true;
        j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
        f.parentNode.insertBefore(j, f);
      })(window, document, "script", "dataLayer", "GTM-TL2MM4B");
    </script>

    <script>
      (function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
        var f = d.getElementsByTagName(s)[0],
          j = d.createElement(s),
          dl = l != "dataLayer" ? "&l=" + l : "";
        j.async = true;
        j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
        f.parentNode.insertBefore(j, f);
      })(window, document, "script", "dataLayer", "GTM-M8NXSZC");
    </script>
    <script>
      (function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
        var f = d.getElementsByTagName(s)[0],
          j = d.createElement(s),
          dl = l != "dataLayer" ? "&l=" + l : "";
        j.async = true;
        j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
        f.parentNode.insertBefore(j, f);
      })(window, document, "script", "dataLayer", "GTM-KX6KRJV");
    </script>
    <script>
      _dynamic_base = "https://dynamic.travelclick-websolutions.com";
    </script>
    <<link rel="stylesheet" href="css/userPage.css"/>
  </head>
  <body class="g_gms-free-content body--header1">
    <a
      class="ada-skip"
      tabindex="1"
      href="#main"
      aria-label="skip to main content"
      >skip to main content</a
    >
    >
    <jsp:include page="indexNav.jsp" flush="true"/>

    <script
      src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.1/cookieconsent.min.js"
      async
    ></script>
    <script>
      window.addEventListener("load", function () {
        window.cookieconsent.initialise(
          {
            layout: "basic-close",
            position: "bottom",
            window:
              "<div role='dialog' aria-label='cookieconsent' aria-describedby='cookieconsent:desc' class='cc-window \{\{classes\}\} cookie-bar '><div class='cc-window--container container'><div class='cookie-wrap'>\{\{children\}\}</div></div></div>",
            elements: {
              dismiss:
                '<a tabindex="0" role="button" aria-label="Accept Cookie Policy" class="cc-btn cc-dismiss btn ghost primary-btn"><span>\{\{dismiss\}\}</span></a>',
              messagelink:
                '<div class="cookie-contents"><p id="cookieconsent:desc" class="cc-message cookie-text" tabindex="0">\{\{message\}\} <a tabindex="0" class="cc-link" href="\{\{href\}\}" \{\{settarget\}\}>\{\{link\}\}</p></a></div>',
              close:
                '<span aria-label="allow cookie message" tabindex="0" class="cc-btn cc-dismiss cc-allow cc-cls"><svg xmlns="http://www.w3.org/2000/svg" width="17.53" height="17.53" viewBox="0 0 17.53 17.53"><g id="close-sm" transform="translate(-63.586 -734.586)"><path id="close-sm_Path_137" data-name="Path 137" d="M65,736l14.7,14.7" fill="none" stroke-linecap="round" stroke-width="2"/><path id="close-sm_Path_138" data-name="Path 138" d="M65,750.7,79.7,736" fill="none" stroke-linecap="round" stroke-width="2"/></g></svg></span>',
            },
            content: {
              close:
                '<svg xmlns="http://www.w3.org/2000/svg" width="17.53" height="17.53" viewBox="0 0 17.53 17.53"><g id="close-sm" transform="translate(-63.586 -734.586)"><path id="close-sm_Path_137" data-name="Path 137" d="M65,736l14.7,14.7" fill="none" stroke-linecap="round" stroke-width="2"/><path id="close-sm_Path_138" data-name="Path 138" d="M65,750.7,79.7,736" fill="none" stroke-linecap="round" stroke-width="2"/></g></svg>',
              message:
                "By using our website, you are consenting to our use of cookies in accordance with our Cookie Policy.",
              link: "Learn More",
              dismiss: "Accept",
              href: "/privacy-policy",
              settarget: 'target="_blank" ',
            },
          },
          function (popup) {
            var handler = function (event) {
              // if key <enter> or <space>
              if (event.keyCode === 13 || event.keyCode === 32) {
                this.click();
              }
            };
            document
              .querySelector(".cc-dismiss")
              .addEventListener("keyup", handler);
            //document.querySelector('.cc-close').addEventListener('keyup', handler);
          }
        );
      });
    </script>
    <div id="booking-mask" class="bm-wrapper ada-trap">
      <div
        id="bm-app"
        data-bm-hotel-type-id="3"
        data-bm-hotel-id="0"
        data-bm-booking-mask-url="https://search.mphotels.com/MPH/mph-corporate/"
        data-bm-booking-engine-provider-id="1"
        data-bm-rooms="1"
        data-bm-adults="1"
        data-bm-children="0"
        data-bm-promo-code-type=""
        data-bm-promo-code-value=""
        data-bm-check-in=""
        data-bm-check-out=""
        data-default-url="https://search.mphotels.com/MPH/mph-corporate/"
      ></div>
      <div id="bm-box-wrapper">
        <form class="bm-form-container">
          <div class="bm-section-wrapper destination-section">
            <span class="arrow arrow-down"></span>
            <span class="arrow arrow-up"></span>
            <div
              class="bm-section-inner has-info ada-mouse-enter"
              tabindex="0"
              aria-expanded="false"
              aria-hidden="true"
            >
              <span class="bm-label-name">Where do you want to go?</span>
              <span class="bm-values">Country, city, region or hotel</span>
            </div>
            <div class="bm-section-outer-wrapper">
              <div class="bm-section-outer">
                <label for="destinations" class="bm-label bm-select-label"
                  >Please enter 3 or more characters</label
                >
                <select
                  name="hotels"
                  id="destinations"
                  class="bm-select bm-select-destinations"
                ></select>
              </div>
            </div>
          </div>
          <div class="bm-section-wrapper dates-wrapper">
            <span class="arrow arrow-down"></span>
            <span class="arrow arrow-up"></span>
            <div
              class="bm-section-inner has-info ada-mouse-enter"
              tabindex="0"
              aria-expanded="false"
              aria-hidden="true"
            >
              <span class="bm-label-name">Check-in / Check-out</span>
              <span class="bm-values"
                ><span class="bm-date-in-value"></span> -
                <span class="bm-date-out-value"></span
              ></span>
              <div id="bm-checkin-trigger" class="bm-col-hidden" tabindex="-1">
                <input
                  id="bm-checkin-input"
                  data-param="bmCheckIn"
                  type="text"
                  class="bm-field bm-calendar-ele"
                  tabindex="-1"
                  readonly
                />
              </div>
              <div id="bm-checkout-trigger" class="bm-col-hidden" tabindex="-1">
                <input
                  id="bm-checkout-input"
                  data-param="bmCheckOut"
                  type="hidden"
                  tabindex="-1"
                />
              </div>
            </div>
          </div>
          <div class="bm-section-wrapper guests-wrapper">
            <span class="arrow arrow-down"></span>
            <span class="arrow arrow-up"></span>
            <div
              class="bm-section-inner has-info ada-mouse-enter"
              tabindex="0"
              aria-expanded="false"
              aria-hidden="true"
            >
              <span class="bm-label-name">Rooms & people</span>
              <span class="bm-values"
                ><span class="label-value" data-name="adults">1</span>
                <span class="singular adults">Adult</span
                ><span class="plural adults hide">Adults</span>,
                <span class="label-value" data-name="childern">0</span>
                Children, <span class="label-value" data-name="rooms">1</span>
                <span class="singular rooms">Room</span
                ><span class="plural rooms hide">Rooms</span></span
              >
            </div>
            <div class="bm-section-outer-wrapper">
              <div class="bm-section-outer">
                <div class="values-controller">
                  <span class="value">1</span>
                  <span class="control-type"
                    ><span class="singular adults">Adult</span
                    ><span class="plural adults hide">Adults</span></span
                  >
                  <div
                    class="controllers"
                    data-max="10"
                    data-min="1"
                    data-name="adults"
                  >
                    <div class="control-btn minus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                    <div class="control-btn plus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                  </div>
                  <input type="hidden" name="adults" id="adults" value="1" />
                </div>
                <div class="values-controller">
                  <span class="value">0</span>
                  <span class="control-type">Children</span>
                  <div
                    class="controllers"
                    data-max="5"
                    data-min="0"
                    data-name="childern"
                  >
                    <div class="control-btn minus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                    <div class="control-btn plus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                  </div>
                  <input
                    type="hidden"
                    name="childern"
                    id="childern"
                    value="0"
                  />
                </div>
                <div class="values-controller">
                  <span class="value">1</span>
                  <span class="control-type"
                    ><span class="singular rooms">Room</span
                    ><span class="plural rooms hide">Rooms</span></span
                  >
                  <div
                    class="controllers"
                    data-max="10"
                    data-min="1"
                    data-name="rooms"
                  >
                    <div class="control-btn minus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                    <div class="control-btn plus-btn ada-click" tabindex="0">
                      <span class="control-icon"></span>
                    </div>
                  </div>
                  <input type="hidden" name="rooms" id="rooms" value="1" />
                </div>
              </div>
            </div>
          </div>
          <div class="bm-section-wrapper btns-wrapper">
            <div class="bm-section-inner">
              <button
                id="booking-mask-submit"
                class="btn filled-btn filled-btn-1 bm-submit-btn js-galaxy-book-body js-bm-modifyBooking-submit"
                type="submit"
                tabindex="0"
                aria-label="Booking Mask Open"
              >
                Book Now
              </button>
              <div class="promo-code-wrapper">
                <span
                  class="promo-label ada-mouse-enter"
                  tabindex="0"
                  aria-expanded="false"
                  aria-hidden="true"
                  >PROMO CODE?</span
                >
                <div class="promo-code-inner" tabindex="-1">
                  <div class="form__row form-col">
                    <label for="promo-types">Promo Type</label>
                    <div class="form__controls select-promo">
                      <select
                        class="field-select bm-select promo-bm-select"
                        tabindex="0"
                        name="promo-types"
                        id="promo-types"
                        aria-expanded="false"
                        aria-hidden="true"
                      >
                        <option value="" disabled>Select</option>
                        <option
                          value="discount"
                          aria-label="Discount Code"
                          selected
                        >
                          Discount Code
                        </option>
                        <option value="groupid" aria-label="Group Attendee">
                          Group Attendee
                        </option>
                        <option
                          value="identifier"
                          aria-label="Promo/Corporate "
                        >
                          Promo/Corporate
                        </option>
                        <option value="iata" aria-label="Travel Agency Code">
                          Travel Agency Code
                        </option>
                      </select>
                      <span class="arrow arrow-down"></span>
                      <span class="arrow arrow-up"></span>
                    </div>
                  </div>
                  <div class="form__row form-col">
                    <label for="promo">Promo Code</label>
                    <div class="form__controls">
                      <input
                        type="text"
                        tabindex="0"
                        placeholder="TYPE YOUR PROMO CODE"
                        class="field"
                        name="promo"
                        id="promo"
                        value=""
                      />
                    </div>
                  </div>
                  <a
                    href="#"
                    class="primary-link promo-apply"
                    tabindex="0"
                    aria-label="Apply Promo Code"
                    >Apply</a
                  >
                  <a
                    href="#"
                    class="primary-link promo-close"
                    tabindex="0"
                    aria-label="Close Promo Code"
                    >Close</a
                  >
                </div>
              </div>
            </div>
          </div>
          <div id="bm-calendars" class="bm-section-outer-wrapper not-visible">
            <div id="bm-calendars-wrapper"></div>
          </div>
        </form>
      </div>
      <div
        id="checkin-region"
        role="region"
        aria-live="assertive"
        class="sr-only"
      ></div>
      <div
        id="checkout-region"
        role="region"
        aria-live="assertive"
        class="sr-only"
      ></div>
    </div>

    <script>
      var gmsUrlReservation = "";
      var endpointBase = "https://api.travelclick.com/loyalty/v2/MPH";
      var tokenEndpoint =
        "https://dynamic.travelclick-websolutions.com/token/1";
      var reservationUrl = "";
      var gmsModifyBookingURL =
        ""; /* Link for the button "Modify" if no value */
      var language = "en";
      var gmsLoginURL = "/guest-portal-login-page";
      var gmsHomeURL = "/guest-portal-dashboard";
      var gmsSignUpURL = "/guest-portal-sign-up";
      var gmsResetPasswordURL = "/guest-portal-reset-password";
      var gmsSignUpSuccessURL = "/guest-portal-sign-up-success";
      var gmsResetPasswordCodeSuccessURL =
        "/guest-portal-reset-password-step-2";
      var gmsDateFormat = "MM-DD-YYYY";
      var gmsDatePlaceholder = "MM-DD-YYYY";
      var gmsCalendars = {
        wcag: {
          selectedCheckInDate: "Selected check in date is",
          selectedCheckOutDate: "Selected check out date is",
          selectedCheckInDateText:
            "This button opens the calendar to select check in date.",
          selectedCheckOutDateText:
            "This button opens the calendar to select check out date.",
          selected: "Selected",
        },
        labels: {
          previousMonth: "Previous Month",
          nextMonth: "Next Month",
        },
      };
      var gmsDefaultTierColor = "" || "#0D214D";
      var gmsDefaultTierColorText = "#2F2F2F" || "#ffffff";
      var gmsMembershipBgColor = "#9F9C84" || "#0a183b";
      var gmsMembershipTxtColor = "#ffffff" || "#ffffff";
      var gmsPointsBgColor = "#9F9C84" || "#0a183b";
      var gmsPointsTxtColor = "#FFFFFF" || "#ffffff";

      var gmsConfigObject = {
        hotelsDefaultPhoto:
          "https://image-tc.galaxy.tf/wijpeg-cddbg6trveoui8akk6vltpyh3/babel-hookah-lounge-1.jpg?width=400",
        consentTexts: {
          popup: {
            title: "One more thing",
            button: "Continue",
          },
          email: {
            opt_in:
              "<p>I agree to receive electronic communications related to the updates, private offers and services offered by the MP Hotels, as well as commercial communications concerning similar products and services.<\/p>\r\n",
            opt_out:
              "No! I don't want to know about Special Offers and Promotions",
          },
          conditions: "<p>I agree to MP Hotels terms of use.<\/p>\r\n",
        },
      };
    </script>

    <style>
      :root {
        --gms-default-tier-bg-color: #0d214d;
        --gms-default-tier-text-color: #2f2f2f;
        --gms-membership-bg-color: #9f9c84;
        --gms-membership-text-color: #ffffff;
        --gms-points-bg-color: #9f9c84;
        --gms-points-text-color: #ffffff;
        --gms-form-input-error-text-color: #fd1041;
        --gms-form-input-error-text-size: 10px;
      }
    </style>
    <script>
      var GMS_iHotelier_language = (function () {
        var allLanguages = {
          en_US: 1,
          es_ES: 2,
          fr_FR: 3,
          pt_PT: 4,
          zh: 5,
          ja: 6,
          de_DE: 7,
          it_IT: 8,
          ru: 9,
          nl: 10,
          en_GB: 11,
          zh_TW: 12,
          hu: 13,
          el: 14,
          ar: 15,
          sv: 16,
          nb: 17,
          cs: 18,
          tr: 19,
          ca: 20,
          da: 21,
          vi: 22,
          hr: 23,
          sk: 24,
          lt: 25,
          ko: 26,
          pl: 27,
          id: 28,
          he: 29,
          et: 30,
          lv: 31,
          ro: 32,
          is: 33,
          fi: 34,
          slv: 35,
          th: 36,
          uk_UK: 37,
          bg: 38,
          sr: 39,
          pt_BR: 40,
        };
        return allLanguages["en_US"] ? allLanguages["en_US"] : 1;
      })();
    </script>

    <script>
      var cms_configs = {};
      var GMS_required_status = "auth";
    </script>
    <div id="main-content" role="main">
      <link
        rel="stylesheet"
        href="/integration/mphotels/public/shared-gms-v2/css/main.css?v7023236b1ce1009d84aebdbd9bf8bdbe"
      />
      <script src="/integration/mphotels/public/shared-gms-v2/js/authorization.bundle.js?v7023236b1ce1009d84aebdbd9bf8bdbe"></script>

      <div
        class="hero-slider visual-slider hero-not-full-height"
        data-autoplay="false"
      >
        <div class="hero-swiper visual-swiper swiper-container">
          <div class="swiper-wrapper">
            <div
              class="slide swiper-slide lazyload no-caption"
              data-bg="https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=1920"
              data-bg-tablet="https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=1199"
              data-bg-mobile="https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=767"
            >
              <img
                class="lazyload"
                data-src="https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=1920"
                data-srcset="https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=767 650w,
                https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=1199 1024w,
                https://image-tc.galaxy.tf/wijpeg-2k7kyyr321b4qyn6o0a8xt0gn/sea-view-2.jpg?width=1920 1280w"
                alt="LABRANDA Mares Marmaris Vue Mer"
              />
            </div>
          </div>
          <div class="slide-nav disable">
            <div
              class="swiper-pagination"
              role="link"
              aria-label="Hero Slider Pagination"
              tabindex="0"
            ></div>

            <span
              class="play-btn"
              role="link"
              aria-label="Hero Slider Play"
              tabindex="0"
            ></span>
            <span
              class="pause-btn disable"
              role="link"
              aria-label="Hero Slider Pause"
              tabindex="0"
            ></span>
          </div>
        </div>
      </div>
      <div class="gms-page-wrap">
        <div id="gms-navigation" class="">
          <navigation
            :configs="{
        with_logout_action: true,
        with_tiers: true,
        no_tiers_color: '#223859',
        menu_items: [

{
    title: 'Dashboard',
    url: '/guest-portal-dashboard',
    target: '_self',
},


{
    title: 'Reservations',
    url: '/guest-portal-reservations',
    target: '_self',
},


{
    title: 'Profile',
    url: '/guest-portal-profile',
    target: '_self',
},




{
    title: 'Special Offers',
    url: '/guest-portal-special-offers',
    target: '_self',
},


        ]
    }"
            :translations='{
        more: "More",
        menu: "Menu",
        close: "Close",
        logout: "Logout",
        hello: "Hello",
    }'
          ></navigation>
        </div>

        <main class="gms-main">
          <div
            id="gms-member-info"
            class="id-053c33ef011bcf30200412474ca58543"
            v-cloak
          >
            <member-info
              :configs='{
      cms_settings: {
        custom_background: {
  
    enabled:false,
  
},
  custom_margin: {
  
    enabled:false,
  
},
  custom_padding: {
  
    enabled:false,
  
},
      custom_color_text: {
  
    enabled:false,
  
},
      },
      with_tiers: false,
      next_tier: false,
      with_member_number: false,
      with_member_name: true,
      logo_placement: false,
      with_points_expiration: false,
      current_balance: {
        with_stays: false,
        with_nights: true,
        with_points: false,
        with_cash_value: false,
        with_total_spent: false,
        with_cross_stays: false,
      },
      tier_logo: "https://image-tc.galaxy.tf/wisvg-bn8io0yerjfkt12mv2sw9jcx/logo-header.svg?height=150",
      with_passbook_button: false,
      with_profile_complete: false,
    }'
              :translations='{
      stays: "Stays",
      stay: "Stay",
      nights: "Nights",
      night: "Night",
      points: "Points",
      cash_value: "Cash Value",
      point: "Point",
      points_expiration_title: "Points Expiration Schedule",
      expiry_date: "Expiry Date",
      points_expiring_on: "Points expiring on:",
      member: "Member",
      member_number: "Member Number:",
      total_spent: "Total Spent",
      cross_stays: "Cross stays",
      next_tier: "The next tier is",
      current_points_balance: "Current point balance:",
      current_balance: "Current balance:",
      intro_title: "",
      intro_description: "",
      add_to_passbook: "Add To Apple Wallet",
      passbook_error_message: "Failed to generate QRCode. Please try again later.",
      passbook_wording: "Scan this code using the Apple Wallet App on your IOS device",
      profile_complete: "Profile completeness"
    }'
            ></member-info>
          </div>
          <script>
            window.gmsReservationMapsLink = false;
            window.gmsResShowUsedPoints = false;
            window.gmsResShowDailyRate = true;
          </script>
          <div
            id="gms-upcoming-reservations"
            class="gms-section-group id-3ba1a05f31cea4c738cc8fabda9fa8be"
          >
            <upcoming-reservations
              :configs='{
      title:"Upcoming reservations",
      
        seeAll:{
          href: "\/guest-portal-reservations",
          
            target: "",
          
          text: "See all my reservations",
        },
      
      cms_settings: {
        custom_background: {
  
    enabled:false,
  
},
  custom_margin: {
  
    enabled:false,
  
},
  custom_padding: {
  
    enabled:false,
  
},
      custom_color_text: {
  
    enabled:false,
  
},
      },
    }'
              :translations='{
    error_message: "You don\u2019t have any reservations yet",
    error_message_past: "You don\u2019t have any past reservations yet",
    error_message_btn_text: "Make A Reservation",
    filters_prefix: "Show",
    all: "All reservations",
    current: "Current reservations",
    past: "Past reservations",
    reservation: {
        check_in: "Check In",
        check_out: "Check Out",
        confirmation_number: "Confirmation Number",
        nights_number: "N\u00ba Of Nights",
        rooms_number: "N\u00ba Of Rooms",
        adult_number: "N\u00ba Of Adults",
        child_number: "N\u00ba Of Children",
        confidential: "Confidential rate text",
        daily_rate: "Daily Rate",
        collected_points: "Collected Points",
        used_points: "Used Points",
        book_again: "Book again",
        visit_hotel: "Visit hotel",
        modify_reservation: "Modify reservation",
        modify_booking: "Modify Booking",
        total: "Total Amount",
    },
}'
            >
            </upcoming-reservations>
          </div>
          <script>
            var offers = [];

            var currentOffer;
          </script>

          <div
            id="widget-special-offers"
            class="gms-section-group id-c9815790a433f766f96ed049f66b8c7e"
            v-cloak
          >
            <widget-offers-wrapper
              :configs='{
      hide_read_more: false,
      title:"Special Offers",
      
        seeAll:{
          href: "\/guest-portal-special-offers",
          
            target: "",
          
          text: "Show all offers",
        },
      
      cms_settings: {
        custom_background: {
  
    enabled:false,
  
},
  custom_margin: {
  
    enabled:false,
  
},
  custom_padding: {
  
    enabled:false,
  
},
      custom_color_text: {
  
    enabled:false,
  
},
      },
    }'
              :translations="{
    book_now: 'Book Now',
    read_more: 'Read More',
    multiple_properties_select_text: 'This offer is available in a range of selected hotels. Please choose at which one you would like to book.',
    book_offer: 'Book Offer',
    select_hotel_label: 'Select Hotel'
}"
            ></widget-offers-wrapper>
          </div>
        </main>
        <!-- /.gms-main -->
      </div>
      <!-- /.gms-page-wrap -->
    </div>

    <footer class="footer image-on-right">
      <span class="back-to-top ada-click" tabindex="0"></span>
      <div class="footer-wrapper container">
        <h3 class="footer-h3-type-1" tabindex="0">Our Brands</h3>

        <div class="footer-logos-wrapper">
          <div class="footer-logo" data-brand="labranda" tabindex="0">
            <img
              src="https://image-tc.galaxy.tf/wisvg-bkryp5r33v3j703k421xafsn3/footer-labranda-logo.svg"
              class="default-image"
              alt="Logo de la marque Labranda(Bas de page)"
            />
            <img
              src="https://image-tc.galaxy.tf/wisvg-5devk31k2s5s5awa5piq1qvkc/labranda-on-hover.svg"
              class="hover-image"
              alt="Logo de la marque Labranda(Bas de page)"
            />
            <a
              href="https://www.labranda.com/"
              tabindex="0"
              target="_blank"
              aria-label="Visit Brand Site labranda opens in a new tab"
            ></a>
          </div>
          <div class="footer-logo" data-brand="designplus" tabindex="0">
            <img
              src="https://image-tc.galaxy.tf/wisvg-3ezh2ag1swaslgr3uifw6kz0/footer-designplus-logo.svg"
              class="default-image"
              alt="Logo de la marque Design Plus (Bas de page)"
            />
            <img
              src="https://image-tc.galaxy.tf/wisvg-cewt0u113krornlkymwn2t1z/designplus-on-hover.svg"
              class="hover-image"
              alt="Logo de la marque Design Plus (Bas de page)"
            />
            <a
              href="https://www.designplus-hotels.com/"
              tabindex="0"
              target="_blank"
              aria-label="Visit Brand Site designplus opens in a new tab"
            ></a>
          </div>
          <div class="footer-logo" data-brand="kairaba" tabindex="0">
            <img
              src="https://image-tc.galaxy.tf/wisvg-23zadv02nf91j79rkoto57f8n/footer-kairaba-logo.svg"
              class="default-image"
              alt="Logo de la marque Kairaba(Bas de page)"
            />
            <img
              src="https://image-tc.galaxy.tf/wisvg-93ky2w3yyvarxocc6tsshd8jk/kairaba-on-hover.svg"
              class="hover-image"
              alt="Logo de la marque Kairaba(Bas de page)"
            />
            <a
              href="https://kairaba-hotels.com/en/"
              tabindex="0"
              target="_blank"
              aria-label="Visit Brand Site kairaba opens in a new tab"
            ></a>
          </div>
          <div class="footer-logo" data-brand="lemon_soul" tabindex="0">
            <img
              src="https://image-tc.galaxy.tf/wisvg-beiofdowaonietrwu4s4gbavp/footer-lemon-soul-logo.svg"
              class="default-image"
              alt="Logo de la marque Lemon & Soul(Bas de page)"
            />
            <img
              src="https://image-tc.galaxy.tf/wisvg-1qry5pn0uz2tn81m5z7f3npka/lemon-on-hover.svg"
              class="hover-image"
              alt="Logo de la marque Lemon & Soul(Bas de page)"
            />
            <a
              href="https://lemonandsoul.com/en/"
              tabindex="0"
              target="_blank"
              aria-label="Visit Brand Site lemon_soul opens in a new tab"
            ></a>
          </div>
          <div class="footer-logo" data-brand="mphotels" tabindex="0">
            <img
              src="https://image-tc.galaxy.tf/wisvg-3iy9tkvvpt16lxdde52u9rsr4/footer-mphotels-logo.svg"
              class="default-image"
              alt="Logo de la marque MP Hotels(Bas de page)"
            />
            <img
              src="https://image-tc.galaxy.tf/wisvg-8f667x1lc9x4evf350oiw4ie7/mphotels-on-hover.svg"
              class="hover-image"
              alt="Logo de la marque MP Hotels(Bas de page)"
            />
            <a
              href="https://mphotels.com"
              tabindex="0"
              target="_blank"
              aria-label="Visit Brand Site mphotels opens in a new tab"
            ></a>
          </div>
        </div>
        <div class="footer-middle">
          <div class="footer-middle-left">
            <h3 class="footer-h3-type-2" tabindex="0">Our Company</h3>

            <nav class="footer_menu js-galaxy-footer">
              <ul>
                <li>
                  <a
                    href="https://www.meeting-point.com/careers/"
                    aria-label="Careers"
                    >Careers</a
                  >
                </li>

                <li>
                  <a href="/privacy-policy" aria-label="Privacy & Cookie Policy"
                    >Privacy & Cookie Policy</a
                  >
                </li>

                <li>
                  <a href="/imprint" aria-label="Imprint">Imprint</a>
                </li>

                <li>
                  <a
                    href="/guest-portal-login-page"
                    target="_blank"
                    aria-label="Loyalty Program opens in a new tab"
                    >Loyalty Program</a
                  >
                </li>
              </ul>
            </nav>
          </div>

          <div class="footer-middle-right">
            <h3 class="footer-h3-type-2" tabindex="0">How Can We Help?</h3>
            <div class="contact-details-wrapper">
              <div class="contact-detail-wrapper">
                <span class="contact-icon"
                  ><svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="32.733"
                    height="32.733"
                    viewBox="0 0 32.733 32.733"
                  >
                    <g transform="translate(0.001 -0.001)">
                      <g
                        data-name="066---Contact"
                        transform="translate(-0.001 0.001)"
                      >
                        <path
                          d="M31.55,5.456H12.183L10.928,1.3A1.846,1.846,0,0,0,8.642.077L5.863.895a1.855,1.855,0,0,0-.806.488L1.927,4.625a1.838,1.838,0,0,0-.469.885,28.325,28.325,0,0,0,.889,13.72A28.618,28.618,0,0,0,9.215,31.186a1.849,1.849,0,0,0,.88.482l4.415,1.019a1.849,1.849,0,0,0,.416.047,1.872,1.872,0,0,0,.526-.076L16.99,32.2l1.239-.366a1.823,1.823,0,0,0,1.1-.889,1.8,1.8,0,0,0,.141-1.388l-.691-2.285H31.55a2.182,2.182,0,0,0,2.182-2.182V7.638A2.182,2.182,0,0,0,31.55,5.456ZM22.958,16.2l9.616-8.928a1.071,1.071,0,0,1,.067.363V25.095a1.085,1.085,0,0,1-.061.343ZM31.55,6.547a1.083,1.083,0,0,1,.184.019l-11.422,10.6a1.091,1.091,0,0,1-1.484,0L10.972,9.895l.579-.171a1.828,1.828,0,0,0,1.1-.889,1.8,1.8,0,0,0,.14-1.387l-.274-.9ZM9.583,22.493a13.276,13.276,0,0,1-2.463-4.679,12.3,12.3,0,0,1-.278-6.664.1.1,0,0,1,.067-.06l2.841-.837,6.407,5.929Zm8.783,7.938a.74.74,0,0,1-.447.36L17.2,31l-1.328-4.4a.546.546,0,1,0-1.044.316l1.329,4.389-1.007.3a.764.764,0,0,1-.39.012L10.34,30.6a.764.764,0,0,1-.362-.2,27.473,27.473,0,0,1-6.587-11.49A27.223,27.223,0,0,1,2.524,5.74a.749.749,0,0,1,.191-.359l3.127-3.24a.758.758,0,0,1,.327-.2l1.015-.3,1.328,4.4a.546.546,0,0,0,.522.388A.524.524,0,0,0,9.193,6.4a.546.546,0,0,0,.364-.68L8.233,1.334l.717-.211a.754.754,0,0,1,.938.5l1.855,6.143a.717.717,0,0,1-.055.553.745.745,0,0,1-.447.361l-.724.213L10.3,8.181A.546.546,0,0,0,9.258,8.5l.212.7L6.6,10.044a1.19,1.19,0,0,0-.811.818,13.408,13.408,0,0,0,.286,7.265,13.539,13.539,0,0,0,3.79,6.23,1.185,1.185,0,0,0,1.127.245l2.876-.848.214.709a.546.546,0,1,0,1.044-.316l-.212-.7.716-.211a.757.757,0,0,1,.938.5l1.855,6.143a.717.717,0,0,1-.056.556Zm.083-4.245-.836-2.766a1.847,1.847,0,0,0-2.291-1.228l-4.637,1.367a.109.109,0,0,1-.1-.017c-.076-.067-.164-.151-.265-.245l6.636-6.372,1.126,1.043a2.19,2.19,0,0,0,2.969,0l1.1-1.023,9.605,9.22a1.084,1.084,0,0,1-.212.023Z"
                          transform="translate(-0.999 -0.001)"
                          fill="#9f9c84"
                        />
                        <path
                          data-name="Shape"
                          d="M26.546,15.091h8.729a.546.546,0,0,0,0-1.091H26.546a.546.546,0,0,0,0,1.091Z"
                          transform="translate(-12.361 -6.363)"
                          fill="#9f9c84"
                        />
                        <path
                          data-name="Shape"
                          d="M55.546,22a.546.546,0,0,0-.546.546v7.638a.546.546,0,1,0,1.091,0V22.546A.546.546,0,0,0,55.546,22Z"
                          transform="translate(-25.541 -9.999)"
                          fill="#9f9c84"
                        />
                      </g>
                    </g>
                  </svg>
                </span>

                <p class="contact-detail-title" tabindex="0">General Contact</p>

                <p class="contact-detail-email">
                  <a
                    tabindex="0"
                    href="mailto:info@mphotels.com"
                    aria-label="General Contact info@mphotels.com"
                    >info@mphotels.com</a
                  >
                </p>

                <p class="contact-detail-phone">
                  <a
                    tabindex="0"
                    href="tel:+49(0)892525-0"
                    aria-label="General Contact +49 (0) 89 2525-0"
                    >+49 (0) 89 2525-0</a
                  >
                </p>
              </div>
            </div>
          </div>

          <div class="footer-middle-bottom">
            <div
              class="social-media-wrapper footer_socials page-footer__socials"
            >
              <a
                class="smo-link instagram"
                tabindex="0"
                rel="noopener"
                aria-label="instagram (opens in a new tab)"
                href="https://www.instagram.com/mp_hotels/"
                target="_blank"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fab"
                  data-icon="instagram"
                  class="svg-inline--fa fa-instagram fa-w-14"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 448 512"
                >
                  <path
                    fill="currentColor"
                    d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"
                  ></path>
                </svg>
              </a>
              <a
                class="smo-link facebook"
                tabindex="0"
                rel="noopener"
                aria-label="facebook (opens in a new tab)"
                href="https://www.facebook.com/MeetingPointHotels/"
                target="_blank"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fab"
                  data-icon="facebook-f"
                  class="svg-inline--fa fa-facebook-f fa-w-10"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 320 512"
                >
                  <path
                    fill="currentColor"
                    d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"
                  ></path>
                </svg>
              </a>
              <a
                class="smo-link twitter"
                tabindex="0"
                rel="noopener"
                aria-label="twitter (opens in a new tab)"
                href="https://www.twitter.com/mp_hotels/"
                target="_blank"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fab"
                  data-icon="twitter"
                  class="svg-inline--fa fa-twitter fa-w-16"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="currentColor"
                    d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"
                  ></path>
                </svg>
              </a>
              <a
                class="smo-link youtube"
                tabindex="0"
                rel="noopener"
                aria-label="youtube (opens in a new tab)"
                href="https://www.youtube.com/mp_hotels/"
                target="_blank"
              >
                <svg
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fab"
                  data-icon="youtube"
                  class="svg-inline--fa fa-youtube fa-w-18"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 576 512"
                >
                  <path
                    fill="currentColor"
                    d="M549.655 124.083c-6.281-23.65-24.787-42.276-48.284-48.597C458.781 64 288 64 288 64S117.22 64 74.629 75.486c-23.497 6.322-42.003 24.947-48.284 48.597-11.412 42.867-11.412 132.305-11.412 132.305s0 89.438 11.412 132.305c6.281 23.65 24.787 41.5 48.284 47.821C117.22 448 288 448 288 448s170.78 0 213.371-11.486c23.497-6.321 42.003-24.171 48.284-47.821 11.412-42.867 11.412-132.305 11.412-132.305s0-89.438-11.412-132.305zm-317.51 213.508V175.185l142.739 81.205-142.739 81.201z"
                  ></path>
                </svg>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <h3 class="footer-h3-type-3" tabindex="0">MP Hotels</h3>

        <p>
          A Meeting Point Global Tourism LLC Website
          <span class="footer-sep"></span>
          <a
            href="mailto:info@mphotels.com"
            aria-label="MP Hotels info@mphotels.com"
            >info@mphotels.com</a
          >
        </p>

        <p>
          © <span class="inject-year"></span> Meeting Point Global Tourism LLC
          Website <span class="footer-sep"></span> Made by
          <a href="https://amadeus.com/en" target="_blank">Amadeus</a>
        </p>
      </div>

      <span class="parallax-bg-image" tabindex="-1"></span>
    </footer>
    <a
      href="https://search.mphotels.com/MPH/mph-corporate/"
      tabindex="-1"
      target="_blank"
      class="booking-btn btn filled-btn filled-btn-1 mobile-only"
      aria-label="Book Now opens in a new tab"
      >Book Now</a
    >

    <script type="text/javascript" id="lightbox_json_store">
      var GalaxyPersonalization = { pageCampaigns: [], allActiveCampaigns: [] };
    </script>

    <script src="/frontend/galaxy-helpers/public/galaxy-helpers.js?v=l-5a39ed33-cee8-4ee8-9f81-569c61858cf0"></script>
    <!-- Generated by Galaxy-->
    <script src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBAJ43uOIus5TPhkpXrT2N7miluooDSYIE"></script>

    <script src="/integration/mphotels/public/js/bundle.js?v7023236b1ce1009d84aebdbd9bf8bdbe"></script>

    <script>
      (function () {
        var js =
          "window['__CF$cv$params']={r:'779e6ec91a24515a',m:'HXuzb2IhsEDS2p5IK0x2T.tok79DiM_lnW2Eonp4cXM-1671099480-0-AY813j0BBEegR++2ZWBPXM8qby5MQVqKji5yORPZOiupmCWHk535EFqL5smDJnJK+Rdz351E5k2M7u3VjSCZ6HFlJJXIHEEKpKs6e127nuTC3j/XtG6wFQwHJQCsRZVYmrp87esM2gNSVIqjHKN5MJE=',s:[0xc45c293f6d,0x2f0b12e35f],u:'/cdn-cgi/challenge-platform/h/g'};var now=Date.now()/1000,offset=14400,ts=''+(Math.floor(now)-Math.floor(now%offset)),_cpo=document.createElement('script');_cpo.nonce='',_cpo.src='/cdn-cgi/challenge-platform/h/g/scripts/alpha/invisible.js?ts='+ts,document.getElementsByTagName('head')[0].appendChild(_cpo);";
        var _0xh = document.createElement("iframe");
        _0xh.height = 1;
        _0xh.width = 1;
        _0xh.style.position = "absolute";
        _0xh.style.top = 0;
        _0xh.style.left = 0;
        _0xh.style.border = "none";
        _0xh.style.visibility = "hidden";
        document.body.appendChild(_0xh);
        function handler() {
          var _0xi = _0xh.contentDocument || _0xh.contentWindow.document;
          if (_0xi) {
            var _0xj = _0xi.createElement("script");
            _0xj.nonce = "";
            _0xj.innerHTML = js;
            _0xi.getElementsByTagName("head")[0].appendChild(_0xj);
          }
        }
        if (document.readyState !== "loading") {
          handler();
        } else if (window.addEventListener) {
          document.addEventListener("DOMContentLoaded", handler);
        } else {
          var prev = document.onreadystatechange || function () {};
          document.onreadystatechange = function (e) {
            prev(e);
            if (document.readyState !== "loading") {
              document.onreadystatechange = prev;
              handler();
            }
          };
        }
      })();
    </script>
  </body>
</html>
