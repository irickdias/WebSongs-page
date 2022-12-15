function isValido()
{   
    let valido=false;
    let nome = document.getElementById("nome").value;
    let artista = document.getElementById("artista").value;
    //console.log(nome);
    //console.log(artista);
    //let regex = new RegExp("/[a-zA-z0-9 ]*/");

    //if(regex.test(nome) && regex.test(artista))
     //   valido=true;

    if(nome.match(/^[a-zA-z0-9 ]*$/) && artista.match(/^[a-zA-z0-9 ]*$/))
        valido=true;
    
    //console.log(valido);
    return valido;
}

function EnviaArquivo()
{
   event.preventDefault(); // evita refresh da tela
   let alertBox = document.getElementById('alertBox');
   var valido = isValido();
   //console.log(valido);
   if(valido)
   {
        const URL_TO_FETCH = 'upload';
        var formData = new FormData(document.getElementById("formFile"));
        //formData.append('acao', 'confirmar'); opcional, caso queira inserir outra informação

        fetch(URL_TO_FETCH, { method: 'post', body: formData
        }).then(function (response) {
             return response.text();
        }).then(function (retorno) {
             // result recebe a resposta do módulo dinâmico

             if (retorno.startsWith('Erro')) // problemas ao alterar/gravar
             {
                 alertBox.innerHTML = "<p style=\"color: red;\">" + retorno + "</p>";
                 //document.getElementById('erro').style.display = "block";
             } else  // tudo OK, limpar o formulário
             {
                 document.getElementById('formFile').reset(); 
                 alertBox.innerHTML = "<p style=\"color: green;\">" + retorno + "</p>";
             }
        }).catch(function (error) {
             console.error(error);
        });
   }
   else
   {
       alertBox.innerHTML = "<p style=\"color: red;\">Não é permitido caracteres especias!</p>";
   }
   
   
}

