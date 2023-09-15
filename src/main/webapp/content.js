const cont = document.getElementsByClassName("cont");
	let count = 0;
	for (const q of cont) {
		const btn = q.getElementsByTagName("button")[0];
		const btn2 = q.getElementsByTagName("button")[1];
		console.log(btn);
		btn.addEventListener("click", () => {
			q.getElementsByClassName("ans")[0].style.display = "block";
			btn.style.display = "none";
			btn2.style.display = "block";
			btn2.addEventListener("click", () => {
				cont[++count].style = "display:block";
				btn2.style.display = "none";
			});
		});
	}
