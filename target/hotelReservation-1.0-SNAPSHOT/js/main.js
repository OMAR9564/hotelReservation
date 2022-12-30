
window.dataLayer = window.dataLayer || [];
function gtag() {
  dataLayer.push(arguments);
}
gtag('js', new Date());

gtag('config', 'UA-23581568-13');

$("#video-modal").on('hidden.bs.modal', function () {
  $("#video-modal iframe").attr("src", $("#video-modal iframe").attr("src"));
});

function revIndexData(){
    var indexGtarihi = document.getElementById("indexGTarihi");
    var indexCtarihi = document.getElementById("indexCTarihi");
    var indexOdaName = document.getElementById("indexOdaNameRev");
    var indexPersonCount = document.getElementById("indexPersonCountRev");
    
    
    document.getElementById("gTarihi").value(indexGtarihi.value);
    document.getElementById("cTarihi").value(indexCtarihi.value);
    document.getElementById("room").value(indexOdaName.value);
    document.getElementById("custCount").value(indexPersonCount.value);

    






   



}

