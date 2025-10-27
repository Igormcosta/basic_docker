# Usa o mesmo base do Dockerfile principal
FROM ruby:3.2.1

# Instalação de dependências do sistema e do PostgreSQL (mesmos comandos do Dockerfile principal)
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

# --- Configuração Específica do Worker ---

# Copia o script de entrypoint para um local acessível no PATH
COPY worker/entrypoint.sh /usr/bin/entrypoint.sh

# Dá permissão de execução ao script
RUN chmod +x /usr/bin/entrypoint.sh

# Define o script como o ponto de entrada principal do contêiner
ENTRYPOINT ["entrypoint.sh"]