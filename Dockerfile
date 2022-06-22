FROM debian:latest

RUN apt-get update && apt install -y g++
COPY main.cc .
RUN g++ -o main main.cc

ENTRYPOINT ["./main"]