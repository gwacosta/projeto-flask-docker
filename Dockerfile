# Usando uma imagem oficial do Python como base
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo requirements.txt (que será criado) para o diretório de trabalho
COPY requirements.txt requirements.txt

# Instalar as dependências do Flask
RUN pip install -r requirements.txt

# Copiar o restante do código da aplicação
COPY . .

# Definir a variável de ambiente que desativa o buffering do output do Flask
ENV PYTHONUNBUFFERED=1

# Expôr a porta que a aplicação Flask vai rodar
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["python", "app.py"]
