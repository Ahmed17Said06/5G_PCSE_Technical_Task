FROM gcc:11.3

COPY . /

WORKDIR /

RUN g++ -o server server.cpp -pthread

CMD ["./server"]
