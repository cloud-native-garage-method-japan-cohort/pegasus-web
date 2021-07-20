FROM quay.io/jeffdean/node-alpine as build

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm config set unsafe-perm true
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
