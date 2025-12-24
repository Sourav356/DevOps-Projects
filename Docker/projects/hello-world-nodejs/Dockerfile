FROM node:18-alpine   

# modern LTS

WORKDIR /app

# Copy only dependency files first for better caching
COPY package*.json ./

# Use npm install instead of npm ci (since no lockfile)
RUN npm install --omit=dev

# Copy rest of the source code
COPY . .

EXPOSE 5000

# Use npm start (calls the "start" script in package.json)
CMD ["npm", "start"]


#ENTRYPOINT ["npm", "start"]
#COPY package.json /app
