FROM ubuntu:22.10

#EXPOSE port
#LABEL key="value"
RUN apt-get update \
&& apt-get install --no-install-recommends --assume-yes \
dig \
curl \
ping \ 
wget

#EXPOSE 443 80

CMD [ "/bin/bash" ]
