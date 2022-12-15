
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/edit.css" rel="stylesheet" type="text/css"/>
        <title>WEBSONG | Escutar música</title>
        <%!
            //boolean flag = false;
            
            String procura = "";
        %>
    </head>
    <body>
        <%
            procura = (request.getParameter("musica"));
        %>
        <div class="outterBoxListen">
            <div class="innerBoxListen">
                
                <form action="escutarMusica.jsp">

                    <p>
                        <h1 class="search">Procurar música</h1>
                        <br/>
                        <input class="inputSearch" type="text" size="40" name="musica" autocomplete="off"/>
                    </p>
                    <br/><br/>
                    
                    <div class="options">
                        <div class="button2">
                            <button type="submit">Procurar</button>
                        </div>
                        
                        <div>
                            <a class="buttonVoltar2" href="index.html">Voltar</a>
                        </div>
                    </div>
                    
                    

                </form>
            </div>
            
            
                
    
            
        </div>
       
        <% if(procura != null) {
            %><nav class="audioNav"><%
                String audio= "";
                int index = 0;
                String extensao = "";
                File pasta = new File(getServletContext().getRealPath("/") + "musicas");
                File[] files = pasta.listFiles();
                for (File f : files)
                {
                    index = f.getName().indexOf(".");
                    extensao = f.getName().substring(index);
                    //<audio controls autoplay>
                    if(extensao.equals(".mp3") && f.getName().toUpperCase().contains(procura.toUpperCase())){
                     audio = "<audio class=\"audio\" controls><source src=\"musicas\\"+f.getName() + "\" type=\"audio/mpeg\"></audio>";
                     %>
                     <div class="audioBox">
                         <p><%= f.getName() %></p>
                         <br/>
                        <%= audio %>
                    </div>
                    <% } %>

                    
                    <%
                }
            %> </nav> <%   


        } %>
        
    </body>
</html>
