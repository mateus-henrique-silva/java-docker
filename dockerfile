# Usar uma imagem base do OpenJDK
FROM openjdk:11-jre-slim

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo pom.xml e a pasta src para o diretório de trabalho
COPY pom.xml /app
COPY src /app/src

# Instalar as dependências do Maven e compilar a aplicação
RUN apt-get update && \
    apt-get install -y maven && \
    mvn clean install

# Expõe a porta que a aplicação vai rodar
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["java", "-jar", "target/nome-do-seu-jar.jar"]
