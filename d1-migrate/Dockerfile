FROM node:22-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev --no-audit --no-fund
WORKDIR /mc-auth
CMD ["/app/node_modules/.bin/wrangler", "d1", "migrations", "apply", "MC_AUTH_DB", "--local", "--env", "local"]
