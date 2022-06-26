# syntax=docker/dockerfile:1
FROM golang:1.18
WORKDIR /app
#TODO: 
# Keep in mind this is probably copying the entire dang directory so we should change that with .dockerignore 

# #Install ssh client and git 
# RUN apk add --no-cache openssh-client git

# #Get Public Key for Github.com
# RUN mkdir =p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# #Clone Private Repo 
# RUN --mount=type=ssh git clone git@github.com:BinaryVixen899/Dolores.git /repo


COPY go.mod ./
COPY go.sum ./
COPY /internal ./internal

RUN go mod download
COPY *.go ./


RUN go build -o Dolores

RUN ls /app/
EXPOSE 8080 
CMD ["./Dolores"]