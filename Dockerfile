FROM node:current-alpine

WORKDIR /app

COPY . /app

RUN npm install -g firebase-tools \
    && apk update \
    && apk add git
    
RUN chmod +x /app/entrypoint.sh
ENV GOOGLE_APPLICATION_CREDENTIALS $GOOGLE_APPLICATION_CREDENTIALS

ENTRYPOINT [ "/app/entrypoint.sh" ]
