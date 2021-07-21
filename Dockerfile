FROM quay.io/jeffdean/node-alpine as build

WORKDIR /home/app

COPY package*.json ./
RUN npm install
RUN npm config set unsafe-perm true
COPY . .

RUN chown -R node /home/app/node_modules
USER node
EXPOSE 3000
CMD ["npm", "start"]
