FROM registry.access.redhat.com/ubi8/nodejs-16:1-5 as builder


COPY ./package*.json ./
COPY . ./

FROM registry.access.redhat.com/ubi8/nodejs-16:1-5 as deployer

COPY --from=builder /opt/app-root/src/dist .
COPY --from=builder /opt/app-root/src/serve.json .

CMD ["sh", "-c","serve", "-p", "$PORT", "-s", "."]