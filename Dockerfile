FROM jenkins/jenkins:lts

# Atualizar os pacotes e instalar o OpenJDK 17
USER root
RUN apt-get update && apt-get install -y openjdk-17-jdk && apt-get clean

# Configurar o Java 17 como padrão
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

# Voltar ao usuário jenkins para segurança
USER jenkins
