const btn = document.getElementsByClassName("btn");
const ac = document.getElementsByClassName("ac");

for(let i=0;i<btn.length;i++){
btn[i].addEventListener("click", () => {
	btn[i].style = "display:none";
	ac[i].style = "display:block";
});	
}