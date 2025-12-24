FROM node:18-alpine   
# use a modern LTS

WORKDIR /app

# Copy only dependency files first for better caching

COPY package*.json ./

RUN npm ci --only=production

# Copy rest of the source code
COPY . .

EXPOSE 5000

CMD ["node", "start"]

#ENTRYPOINT ["node", "start"]
#COPY package.json /app
