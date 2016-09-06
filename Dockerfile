# From the latest LTS of Node
FROM node:argon

# Install forever
RUN npm install -g forever

# Install TypeScript
RUN npm install -g typescript

# Create directory for our sources and logs
RUN mkdir -p /usr/src/sheetson
WORKDIR /usr/src/sheetson

# Install dependencies
COPY ./package.json /usr/src/sheetson/package.json
RUN npm install

# Bundle app sources
COPY . /usr/src/sheetson

# Transpile to JS
RUN tsc

EXPOSE 4242
CMD ["forever", "-l", "./forever.log", "-e", "./error.log", "-o", "./out.log", "./index.js"]
