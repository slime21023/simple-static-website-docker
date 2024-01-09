FROM joseluisq/static-web-server:2.24.2-alpine

COPY dist/ /dist/

WORKDIR /dist

CMD ["sh", "-c", "static-web-server -d . --page404 index.html --page50x index.html"]
