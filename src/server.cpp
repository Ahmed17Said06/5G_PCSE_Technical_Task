#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <string.h>
#include <string>
#include <random>
#include <chrono>
#include <thread>
#include <ctime>
#include <vector>
#include <fcntl.h>

int sim_temp = 0;
int sec_count_5s = 0;
bool send_now = false;
bool someone_is_listening = false;
std::vector<int> client_sockets;
int buf[0];

void temp_simulator()
{
    std::random_device rand_dev;
    std::mt19937 generator(rand_dev());
    std::vector<int> i{30, 33, 36, 40, 44, 47, 49, 53};
    std::vector<int> w{0, 1, 2, 3, 3, 2, 1, 0};

    while (true)
    {
        std::this_thread::sleep_for(std::chrono::seconds(1));
        std::piecewise_linear_distribution<> distr{i.begin(), i.end(), w.begin()};
        sim_temp = round(distr(generator));
        std::cout << sim_temp << std::endl;
        send_now = true;
    }
}

void network()
{
    // Create a socket
    int listening = socket(AF_INET, SOCK_STREAM, 0); // TCP
    fcntl(listening,F_SETFL, O_NONBLOCK);
    if (listening == -1)
    {
        std::cerr << "Can't create a socket! Quitting" << std::endl;
        return;
    }

    // Bind the ip address and port to a socket
    sockaddr_in hint;
    hint.sin_family = AF_INET;
    hint.sin_port = htons(54000);
    inet_pton(AF_INET, "0.0.0.0", &hint.sin_addr);
    bind(listening, (sockaddr *)&hint, sizeof(hint));

    // Tell Winsock the socket is for listening
    listen(listening, SOMAXCONN);

    // Wait for a connection
    sockaddr_in client;
    socklen_t clientSize = sizeof(client);

    while (true){
        int clientSocket = accept(listening, (sockaddr *)&client, &clientSize);
        if(clientSocket != -1){
            client_sockets.push_back(clientSocket);
            char host[NI_MAXHOST];    // Client's remote name "localhost"
            char service[NI_MAXSERV]; // Service (i.e. port) the client is connect on
            memset(host, 0, NI_MAXHOST); 
            memset(service, 0, NI_MAXSERV);
            if (getnameinfo((sockaddr *)&client, sizeof(client), host, NI_MAXHOST, service, NI_MAXSERV, 0) == 0)
            {
                std::cout <<"client "<< host << " connected on port " << service << std::endl;
            }
            else
            {
                inet_ntop(AF_INET, &client.sin_addr, host, NI_MAXHOST);
                std::cout <<"client "<<host << " connected on port " << ntohs(client.sin_port) << std::endl;
            }
            }
            if (send_now){
                send_now = false;
                for(int i = 0; i<client_sockets.size(); i++){
                send(client_sockets[i], buf, sim_temp, MSG_NOSIGNAL);
            }
            }
    }

}

int main()
{
    std::thread thread1(temp_simulator);
    std::thread thread2(network);
    thread1.join();
    thread2.join();
    return 0;
}