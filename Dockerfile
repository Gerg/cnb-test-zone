FROM cloudfoundry/cflinuxfs3
USER vcap
RUN mkdir -p /tmp/app
RUN mkdir -p /tmp/whatever/deps
RUN mkdir -p /tmp/buildpacks/whatever
RUN mkdir -p /tmp/whatever/profile.d
WORKDIR /home/vcap
COPY ./run.sh /tmp/run.sh
COPY ./cf-acceptance-tests/assets/dora/* /tmp/app
COPY ./v2-cnb-ruby-buildpack/* /tmp/buildpacks/whatever
CMD ["/tmp/run.sh"]
