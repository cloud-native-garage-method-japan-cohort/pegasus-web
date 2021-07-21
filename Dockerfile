FROM quay.io/jeffdean/node-alpine as build

WORKDIR /home/app

COPY package*.json ./
RUN npm install
RUN npm config set unsafe-perm true
RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
