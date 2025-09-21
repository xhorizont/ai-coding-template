FROM node:20-bullseye
WORKDIR /workspace
COPY package.json .
RUN npm i --silent || true
COPY . .
CMD ["bash"]
