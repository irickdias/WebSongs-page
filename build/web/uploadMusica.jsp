
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/edit.css" rel="stylesheet" type="text/css"/>
        <script src="js/FormController.js" type="text/javascript"></script>
        <title>WEBSONG | Enviar música</title>
    </head>
    <body>
        <div class="outterBoxForm">
            <div class="innerBoxForm">
                <form id="formFile" onSubmit="EnviaArquivo()" enctype="multipart/form-data" method="POST">
                    <p>
                        <label for="nome">Nome da música: </label>
                        <input type="text" id="nome" name="nome" autocomplete="off" required/>
                    </p>
                    <br/>
                    <p>
                        <label for="genero">Gênero da música: </label>
                        <select id="genero" name="genero">
                            <option value="Eletronica">Eletrônica</option>
                            <option value="Funk">Funk</option>
                            <option value="Rock">Rock</option>
                            <option value="Metal">Metal</option>
                            <option value="Pop">Pop</option>
                            <option value="Phonk">Phonk</option>
                            <option value="Rap">Rap</option>
                            <option value="Hip-hop">Hip-hop</option>
                            <option value="Gospel">Gospel</option>
                            <option value="Sertanejo">Sertanejo</option>
                            <option value="K-pop">K-pop</option>
                            <option value="J-pop">J-pop</option>
                        </select>
                    </p>
                    <br/>
                    <p>
                        <label for="artista">Artista: </label>
                        <input type="text" id="artista" name="artista" autocomplete="off" required/>
                    </p>
                    <br/>
                    <p>
                        <label for="myfile" class="typeFile">Arquivo: </label><br/>
                        <input type="file" id="myfile" name="myfile" required/>
                    </p>
                    
                    
                    <div id="alertBox"></div>
                    
                    <div class="options">
                        <div class="button">
                            <button type="submit">Confirmar</button>
                        </div>
                        
                        <div>
                            <a class="buttonVoltar" href="index.html">Voltar</a>
                        </div>
                    </div>

                </form>
                
                
            </div>
        </div>
        
    </body>
</html>
