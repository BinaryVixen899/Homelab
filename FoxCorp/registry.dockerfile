FROM ubuntu/nginx

LABEL repo="BinaryVixen899/Homelab" \
      program="FoxRegistry" \
      category="FoxCorp"

WORKDIR /registry

RUN apt-get update \
&& apt-get install --no-install-recommends --assume-yes \
curl \
ca-certificates

RUN curl -sLS https://get.arkade.dev -o arkade && chmod a+x arkade && ./arkade

CMD ["/bin/bash"]
