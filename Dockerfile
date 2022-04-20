FROM node:17-slim
# Using slim for now. use regular if issue arrises

# default port doesnt matter just yet
EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json ./

# Install packages from package-lock.json
RUN npm ci

# Copy project files over
COPY . .

RUN npm run build

CMD ["npm","run","start"]
