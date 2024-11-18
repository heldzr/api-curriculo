# Usar uma imagem Node.js como base
FROM node:18

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o package.json e o package-lock.json para o container
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar o restante do código do projeto para o container
COPY . .

# Expor a porta que a aplicação vai usar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "index.js"]
