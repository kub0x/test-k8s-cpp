FROM debian:latest

RUN apt-get update && apt install -y g++ cmake make git

RUN git clone https://github.com/oatpp/oatpp.git

RUN cd oatpp/ && mkdir build && cd build && cmake .. && make install

RUN mkdir /app

WORKDIR /app

COPY app/ .

RUN g++ main.cpp -o main -I /usr/local/include/oatpp*/oatpp/ -L /usr/local/lib/oatpp*/ -loatpp -lpthread

ENTRYPOINT ["./main"]