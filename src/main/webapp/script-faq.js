const perguntas = document.querySelector(".container_perguntas");

// ativa se ocorrer um click dentro da <main class="container_perguntas">
perguntas.addEventListener("click", (e) => {
    // se o click foi feito em um elemento diferente de uma div, apenas retorna
	if (!e.target.closest('div')) return;

    // perg é a div com a resposta para a pergunta que recebeu um click
    ind_perg = parseInt(e.target.dataset.ordem);
    perg = perguntas.children[ (ind_perg*2) - 1 ];

    // se perg está com display igual a block, troca para none, e se estiver none troca para block
    // ou seja, o click mostra ou esconde a mensagem
    if (perg.style.display == "block")
        perg.style.display = "none";
    else
        perg.style.display = "block";
});