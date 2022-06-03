document.getElementById("botao").onclick = function(){
    var radios = document.getElementsByName("sexo")
    var ano =(document.getElementById('ano')).value
    for (var i =0;1 < radios.length;i++){
        if (radios[i].checked){
            var escolha = radios[i].value
            console.log("Escolheu: " + escolha);
            resultado(escolha,ano)
        }
    }
};

var texto = document.getElementById('texto')
var imagem = document.getElementById('imagem')

function resultado(opcao,ano){
    var idade = 2022-(parseInt(ano))
    console.log(idade)
    if (opcao == 'masc'){
        texto.innerHTML = '<p> Voce escolheu MASCULINO.</p>'
        texto.innerHTML += 'Voce tem ${idade} anos </p>'
    }
    else{
        texto.innerHTML = '<p> Voce escolheu FEMININO.</p>'
        texto.innerHTML += 'Voce tem ${idade} anos </p>'
    }
}
