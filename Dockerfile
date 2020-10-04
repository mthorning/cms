FROM strapi/base

WORKDIR /srv/app

COPY ./app/api ./api
COPY ./app/config ./config
COPY ./app/extensions ./extensions
COPY ./app/favicon.ico ./favicon.ico
COPY ./app/package-lock.json .
COPY ./app/package.json .
COPY ./app/public ./public 

RUN npm install
RUN NODE_ENV=production npm run build
CMD NODE_ENV=production npm start


