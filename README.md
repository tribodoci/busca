# Busca de Texto
Exercício de pesquisa de texto implementando um algorítimo de busca de texto completo (fulltext search). Não é um ```llm``` (large language model) pois o texto para treinamento é muito pequeno. Foi usado como referência os seguintes libros:
- [Programando A Inteligencia Coletiva - Toby Segaran - 2008](https://altabooks.com.br/)
- [Web Scraping com Python - 2ª Edição - Ryan Mitchell - 2019](https://novatec.com.br/livros/web-scraping-com-python-2ed/) 
- [Data Science do Zero]()

Lembrando que esse não é um projeto pronto para produção, é um exercício de programação de criação de um banco de dados de vetor em uma abordagem relacional.

Etapas:
- [X] - Criar repositório no github 
- [ ] - Baixar transcrições
  - [X] - [Solução itermediária, baixar os arquivos locais](#baixar-transcrições)
- [ ] - Leitura dos arquivos e mapear em um banco de dados
  - [ ] - [Mapeamento das palavaras e dos documentos](./doc/) 
- [ ] - Blog Post

## Criar repositório no github
Esse reposótiorio, a idéia é documentar cada passo 
## Baixar transcrições
Baixar a transcrição dos episódios do repositório, filtrar os ```*.txt```, utilizar o csv com os campos.

Campo           | Descrição
--------------- | -------
```id```        | Campo único de Identificação do Episódio
```link```      | Link para o episódio
```descricao``` | Breve resumo do episódio
```arquivo```   | Nome do Arquivo com a descrição

Poderia ser feito uma cópia dos arquivos nesse mesmo repositório, mas baixar direto do repositório facilita o treinamento quando for uma revisão da transcrição e então poder efetuar o treinamento novamente.
Por enquanto pode baixar o repositório com as trasncrições com o git:
```shell
git clone https://github.com/tribodoci/tribodoci-podcast-transcript.git
```
O caminho no arquivo [src/documentos.csv](src/documentos.csv) está considerando que o código do repositório estão na mesma pasta.

## Processar os textos
Ver [doc/](doc/)

## Blog Post
Escrever sobre a solução em um blogpost na [Tribo do C.I.](https://tribodoci.net).

## Referencias
- [RETVec: Resilient & Efficient Text Vectorizer](https://github.com/google-research/retvec)