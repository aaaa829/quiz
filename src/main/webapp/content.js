const cont = document.getElementsByClassName("cont");
const end = document.getElementById("end");
let count = 1;
for (const quiz of cont) {
	const decision = quiz.getElementsByTagName("button")[0];
	const next = quiz.getElementsByTagName("button")[1];


	decision.addEventListener("click", () => {
		quiz.getElementsByClassName("ans")[0].style.display = "block";
		decision.style.display = "none";
		if (count >= cont.length) {
			end.style = "display:block";
		} else {
			next.style.display = "block";
		}

	});
	next.addEventListener("click", () => {
		cont[count++].style = "display:block";
		next.style.display = "none";
	});
}

