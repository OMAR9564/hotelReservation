
window.dataLayer = window.dataLayer || [];
function gtag() {
  dataLayer.push(arguments);
}
gtag('js', new Date());

gtag('config', 'UA-23581568-13');

$("#video-modal").on('hidden.bs.modal', function (e) {
  $("#video-modal iframe").attr("src", $("#video-modal iframe").attr("src"));
});

