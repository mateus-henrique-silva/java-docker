# java-docker

```bash

meu-projeto-java
│
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   └── test
│       ├── java
│       └── resources
│
├── pom.xml
└── Dockerfile
└── docker-compose.yml


```

### Construir a imagem Docker


```bash
docker-compose build

```


### Iniciar os serviços


```bash
docker-compose up

```

## Explicação do docker-compose.yml:
    - version: '3.8': Define a versão do Docker Compose.
    - services: Define os serviços que compõem a aplicação. Temos dois serviços: app e mongodb.
    - app:
        build: .: Indica que o Docker Compose deve construir a imagem usando o Dockerfile localizado no diretório atual.
        ports: "8080:8080": Mapeia a porta 8080 do contêiner para a porta 8080 da máquina host.
        depends_on: mongodb: Indica que o serviço app depende do serviço mongodb.
        mongodb:
        image: mongo
        : Usa a imagem oficial do MongoDB.
        ports: "27017:27017": Mapeia a porta 27017 do contêiner para a porta 27017 da máquina host.
        volumes: mongo-data:/data/db: Monta um volume para persistência dos dados do MongoDB.


## Conclusão
Agora você tem uma aplicação Java Maven rodando em um contêiner Docker, conectada a um banco de dados MongoDB em outro contêiner. O Dockerfile cuida da construção da imagem da aplicação, enquanto o docker-compose.yml orquestra a execução dos contêineres.

