# Teste técnico Robot Framework

Este repositório se trata de um teste técnico realizado com Robot Framework, com o objetivo de automatizar testes WEB e API.

## 🚀 Começando

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de validar os testes realizados.

### 📋 Pré-requisitos

```
Robot Framework
Browser Library
Requests Library
Python
NodeJS
```

O arquivo de dependências com as versões das bibliotecas utilizadas neste projetos estão no arquivo requirements.txt

Para utilizar as mesmas basta utilizar o comando abaixo:

```
pip install -r requirements.txt
```

## ⚙️ Executando os testes

Sugiro que utilize o comando abaixo para executar a suíte de testes:

```
robot -d ./logs tests/
```

Dessa maneira a pasta logs será povoada com reports e logs da execução realizada, sem acumular arquivos desnecessários e sendo possível análise dos testes realizados.

Não foram utilizadas tags para definir inicialmente os tipos de testes.

### 🔩 Analise os testes de ponta a ponta

Conforme explicado acima, para análise dos testes basta verificar a pasta logs que é criada no momento da execução dos testes, estarão todos os steps realizados durantes os testes.

```
/logs
```

## 🛠️ Construído com

* [BrowserLibrary](https://github.com/MarketSquare/robotframework-browser) - Biblioteca em Playwright para automatização WEB
* [Python](https://www.python.org/) - Linguagem utilizada 
* [RobotFramework](https://robotframework.org/) - O framework de testes utilizado
* [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests) - Biblioteca para testes de API


## 📌 Versão

Utilizei [git](https://git-scm.com/) para controle de versão. 

## 📄 Licença

Este projeto está sob a licença MIT - veja o arquivo [LICENSE](https://github.com/elvisfagundes/teste-robot-primecontrol/blob/main/LICENSE) para detalhes.
