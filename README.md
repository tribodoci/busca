# Busca de Texto
Exercício de pesquisa de texto implementando um algorítimo de busca de texto completo (fulltext search). Não é um [```llm``` (large language model)](https://arxiv.org/abs/1706.03762) pois o texto para treinamento é muito pequeno. Foi usado como referência os seguintes livros:
- [Programando A Inteligencia Coletiva - Toby Segaran - 2008](https://altabooks.com.br/)
- [Web Scraping com Python - 2ª Edição - Ryan Mitchell - 2019](https://novatec.com.br/livros/web-scraping-com-python-2ed/) 
- [Data Science do Zero - Joel Grus - 2016](https://altabooks.com.br/produto/data-science-do-zero/)

Lembrando que esse não é um projeto pronto para produção, é um exercício de programação de criação de um banco de dados de vetor em uma abordagem relacional, utilizando um algorítimo de contagem.

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

A princípio a idéia era baixar os arquivos raw, porém em alguns casos eles demoram atualizar, sendo melhor baixar os arquivos diretamente do repositório com as trasncrições com o git:
```shell
git clone https://github.com/tribodoci/tribodoci-podcast-transcript.git
```
O caminho no arquivo [src/documentos.csv](src/documentos.csv) está considerando que o código do repositório estão na mesma pasta.

## Processar os textos
Ver [doc/](doc/)

## Blog Post
Escrever sobre a solução em um blogpost na [Tribo do C.I.](https://tribodoci.net).

## Outras Referências
- [RETVec: Resilient & Efficient Text Vectorizer](https://github.com/google-research/retvec)
- [Paper - Attention Is All You Need](https://arxiv.org/abs/1706.03762)
- [ChromaDB - Chroma is the open-source AI application database. Batteries included](https://www.trychroma.com/)
