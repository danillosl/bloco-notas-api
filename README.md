# bloco-notas-api

api rest simples usando ruby 2.3 e rails 5.0 e mongodb

### Instalação
Este projeto depende do docker instalado
```sh
git clone https://github.com/danillosl/bloco-notas-api.git
cd bloco-notas-api
docker build -t bloco-notas-api .
sudo docker run -it -p 3000:3000 -e DATABASE='databaseUrl:porta' -e USERNAME='usuarioDatabase' -e PASSWORD='senhaDatabase' bloco-notas-api

```
ou
```sh
docker pull danillosl/bloco-notas-api
sudo docker run -it -p 3000:3000 -e DATABASE='databaseUrl:porta' -e USERNAME='usuarioDatabase' -e PASSWORD='senhaDatabase' danillosl/bloco-notas-api
```
O projeto deve estar disponivel em: http://localhost:3000 .
