FROM strapi/base

WORKDIR /srv/app

COPY . .

RUN npm ci
RUN NODE_ENV=production npm run build
CMD NODE_ENV=production npm start


