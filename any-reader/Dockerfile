FROM node:20-bookworm-slim

ENV PORT=8898
ENV PUPPETEER_SKIP_DOWNLOAD=true
RUN echo 'use npm mirror' && npm config set registry https://registry.npmmirror.com


RUN npm install -g any-reader@latest --omit=dev && npm cache clean --force && rm -rf /root/.cache/puppeteer 
# RUN npm install -g any-reader@latest --omit=dev

RUN  mkdir -p /root/.any-reader && echo "{}" | cat > /root/.any-reader/config.desktop.json

ENTRYPOINT ["any-reader", "web"]