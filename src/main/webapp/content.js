const cont = document.getElementsByClassName("cont");
let count = 0;
const btn = document.getElementById("btn");
btn.addEventListener("click", () => {
    console.log(cont[++count].style = "display:block");
});