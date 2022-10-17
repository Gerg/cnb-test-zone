FROM cloudfoundry/cflinuxfs4
RUN mkdir -p /tmp/app
RUN mkdir -p /tmp/cache/final
RUN mkdir -p /tmp/contents3205658702/deps
WORKDIR /app
COPY . .
COPY ./cf-acceptance-tests/assets/dora/* /tmp/app
CMD ["./v2-cnb-ruby-buildpack/bin/finalize", "/tmp/app", "/tmp/cache/final", "/tmp/contents3205658702/deps", "0"]
