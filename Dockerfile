FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
USER root
ENV uuid 3448472e-cfe4-4a0a-bc46-d8b7baf136cd
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
