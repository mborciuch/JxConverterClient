FROM node:lts

WORKDIR /usr/app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g

COPY . .

RUN npm run build

CMD [ "npm", "start"]
