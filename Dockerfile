# Usa uma imagem base oficial do Ruby
FROM ruby:3.2.1

# Instalação de dependências do sistema e do PostgreSQL
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apt-utils \
    build-essential \
    gnupg2 \
    curl \
    lsb-release \
    libpq-dev \
    git \
    nodejs \
    npm \
    yarn \
    postgresql-client \  
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho dentro do contêiner
WORKDIR /home/app/web

# Copia a aplicação para o diretório de trabalho
COPY . /home/app/web

# Instala as gems da aplicação
RUN bundle install