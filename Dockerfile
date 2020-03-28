# Versão da máquina utilizada
FROM node:alpine

# Diretório dentro da maquina
WORKDIR /usr/app

# Copiando os arquivos para a máquina e rodando NPM install
COPY package*.json ./
RUN npm install
COPY . .

# Expondo a porta que será acessada
EXPOSE 3000

# Rodando aplicação
CMD [ "npm", "start" ]