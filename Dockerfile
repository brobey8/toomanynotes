FROM node:6.3-wheezy

RUN mkdir -p /var/www
WORKDIR /var/www

COPY package.json /var/www
RUN npm install

COPY . /var/www

EXPOSE 8008

ENV PORT=8008

RUN [ "npm", "run", "build:dll" ]
CMD [ "npm", "start" ]

