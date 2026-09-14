# The production bundle is built in CI (see .github/workflows/main.yml) so this
# image just serves the pre-built static files - no npm install/build on the EB instance.
FROM nginx
EXPOSE 80
COPY build /usr/share/nginx/html
# the "RUN" command is ran by default when using nginx, so no need to run it here