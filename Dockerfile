FROM debian:stretch
RUN apt-get update && apt-get install -y curl wget nuget && apt-get clean all

ENTRYPOINT ["nuget"]