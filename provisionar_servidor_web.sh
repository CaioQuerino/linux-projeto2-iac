#!/bin/bash

# Função para atualizar o sistema
atualizar_sistema() {
  echo "Atualizando o sistema..."
  apt update -y && apt upgrade -y
}

# Função para instalar pacotes necessários
instalar_pacotes() {
  echo "Instalando Apache2 e Unzip..."
  apt install apache2 unzip -y
}

# Função para baixar a aplicação do repositório
baixar_aplicacao_repositorio() {
  echo "Baixando a aplicação do repositório..."
  wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip
  unzip /tmp/main.zip -d /tmp/
}

# Função para copiar os arquivos da aplicação para o diretório do Apache
copiar_arquivos() {
  echo "Copiando arquivos para o diretório do Apache..."
  cp -R /tmp/linux-site-dio-main/* /var/www/html/
}

# Função principal que executa todas as etapas
main() {
  atualizar_sistema
  instalar_pacotes
  baixar_aplicacao_repositorio
  copiar_arquivos
  echo "Processo concluído!"
}

# Executa a função principal
main

