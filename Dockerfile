FROM swr.cn-north-4.myhuaweicloud.com/scana/scana-prerender:cache

# COPY . /app
WORKDIR /app
COPY build /app/build
COPY node_modules /app/node_modules
COPY package.json /app/package.json
RUN mkdir -p /usr/share/fonts/chinese/TrueType
ADD font/ /usr/share/fonts/chinese/TrueType

# docker build . --cache-from swr.cn-north-4.myhuaweicloud.com/scana/scana-prerender:cache -t swr.cn-north-4.myhuaweicloud.com/scana/scana-render-pdf:latest
