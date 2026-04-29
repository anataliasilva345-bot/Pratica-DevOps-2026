# Atividade 2.3 - Instalação e Configuração de Servidor Web

## Grupo: Anatalia, Alexandre e Laizean 

## Pesquisa e Seleção

Para o cenário da empresa ScreenMatch, que irá hospedar uma plataforma com conteúdo majoritariamente estático, como HTML, CSS, JavaScript, imagens e vídeos, além de possuir previsão de alto volume de tráfego, o servidor web escolhido foi o **Nginx**.

## Justificativa

O Nginx é mais indicado para esse tipo de aplicação porque possui uma arquitetura orientada a eventos, conseguindo atender muitas conexões simultâneas com menor consumo de memória. Isso é importante para ambientes com grande quantidade de acessos, principalmente quando o conteúdo servido é estático.

O Apache também é um servidor web muito utilizado e possui grande compatibilidade com módulos e aplicações dinâmicas. Porém, em cenários com alto tráfego e muitos arquivos estáticos, o Apache pode consumir mais recursos do servidor, pois tradicionalmente trabalha com processos ou threads para atender as requisições.

## Comparação entre Apache e Nginx

| Característica | Apache | Nginx |
|---|---|---|
| Arquitetura | Baseada em processos/threads | Orientada a eventos |
| Consumo de memória | Maior em alto tráfego | Menor em alto tráfego |
| Conteúdo estático | Bom desempenho | Excelente desempenho |
| Alto volume de conexões | Pode exigir mais recursos | Mais eficiente |
| Facilidade de módulos | Muito flexível | Mais simples e eficiente |

## Conclusão

Considerando que a plataforma ScreenMatch terá conteúdo estático e alto volume de tráfego, o servidor web mais adequado é o **Nginx**. Ele oferece melhor desempenho para arquivos estáticos, menor consumo de recursos e maior eficiência no atendimento de muitas requisições simultâneas.

Portanto, para esse projeto, o Nginx é a escolha mais apropriada.
