# Stage 1: Build
# names the stage to be referred to in stage 2
FROM node:14 AS build-stage
WORKDIR /app
COPY package*.json ./
# installs the necessary dependencies
RUN npm install
COPY . .

# Stage 2: Run
# lightweight version with only runtime essentials
FROM node:14-slim
WORKDIR /app
# copies everything from specified directory from stage 1 to stage 2
COPY --from=build-stage /app .
EXPOSE 3000
ENV NODE_ENV=production
CMD ["node", "server.js"]