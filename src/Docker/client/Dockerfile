FROM gcc:11.3

COPY . /

WORKDIR /

RUN g++ -o client client.cpp -pthread

CMD ["./client"]
