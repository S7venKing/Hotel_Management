const body = document.querySelector("body"),
    sidebar = body.querySelector(".sidebar"),
    toggle = body.querySelector(".toggle"),
    searchBtn = body.querySelector(".search-box"),
    modeSwitch = body.querySelector(".toggle-switch"),
    modeText = body.querySelector(".mode-text");

toggle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
});

searchBtn.addEventListener("click", () => {
    sidebar.classList.remove("close");
});

modeSwitch.addEventListener("click", () => {
    body.classList.toggle("dark");

    if (body.classList.contains("dark")) {
        modeText.innerText = "Light Mode"
    } else {
        modeText.innerText = "Dark Mode"

    }
});

function updateIndex(index) {
    let mucdich = document.getElementById("2").innerText;
    let gia = document.getElementById("3").innerText;
    let theloai = document.getElementById("4").innerText;
    let ngay = document.getElementById("5").innerText;
    document.getElementById("v2").value = mucdich;
    document.getElementById("v3").value = gia;
    document.getElementById("v4").innerText = theloai;

    var dateInCorrectFormat = ngay.split("/").reverse().join("-");
    document.getElementById("v5").value = dateInCorrectFormat;


}





