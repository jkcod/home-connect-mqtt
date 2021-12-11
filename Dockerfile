FROM node:13-alpine

# Setup App
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

# Set port and expose
ENV PORT 63069
ENV DATA_DIR /data
ENV CONFIG_FILE /data/config.json
EXPOSE 63069

# Start
CMD ["npm", "start"]
