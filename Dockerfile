FROM node:lts

WORKDIR /usr/app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g
RUN npm install -g serve

COPY . .

RUN npm run build

CMD serve -s build
