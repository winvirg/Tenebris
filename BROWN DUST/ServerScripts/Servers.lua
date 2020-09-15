
--Obtenha o tamanho do cliente do servidor
--Como um script ClientWidth()Após a execução, você pode conectar a variável global e a variável correspondente..
function ClientWidth()
    Server.FireEvent("GetW")
end

function ClientHeight()
    Server.FireEvent("GetH")
end

Server.GetTopic("Width").Add(
        function(value)
            Server.SetWorldVar(0,value*0.5)
        end)

Server.GetTopic("Height").Add(
        function(value)
            Server.SetWorldVar(1,value*0.5)
        end)