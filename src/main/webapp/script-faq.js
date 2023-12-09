const perguntas = document.querySelector(".container_perguntas");

perguntas.addEventListener("click", (e) => {
	if (!e.target.closest('div')) return;

    ind_perg = parseInt(e.target.dataset.ordem);
    perg = perguntas.children[(ind_perg*2)-1];

    if (perg.style.display == "block")
        perg.style.display = "none";
    else
        perg.style.display = "block";
});