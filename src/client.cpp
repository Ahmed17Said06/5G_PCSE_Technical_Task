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


std::vector<int> readings;
int accu = 0;
double avg = 0.0;
long long ot_accu = 0;
double ot_avg = 0.0;
double divisor = 5.0;
bool accu_avg = false;
bool print_5s = false; 


/*
SOCK_STREAM: TCP(reliable, connection oriented)
SOCK_DGRAM: UDP(unreliable, connectionless)
*/

void network(){
    //Create a socket
    int sock = socket(AF_INET, SOCK_STREAM, 0); //TCP connection
    if (sock == -1)
    {
        return;
    }

    //Create a hint structure for the server we're connecting with
    int port = 54000;
    std::string ipAddress = "127.0.0.1";

    sockaddr_in hint;
    hint.sin_family = AF_INET;
    hint.sin_port = htons(port);
    inet_pton(AF_INET, ipAddress.c_str(), &hint.sin_addr);

    //Connect to the server on the socket
    int connectRes = connect(sock, (sockaddr*)&hint, sizeof(hint));
    if (connectRes == -1)
    {   
        std::cout<<"ERROR: No server found"<<std::endl;
        std::cout<<"Server not found check the server side and try again"<<std::endl;
        std::cout<<"This is planned enforced exit no server found to listen to"<<std::endl;
        exit(1);
    }

    //While loop:
    int buf[4096];
    //string userInput;
    do {
        //Wait for response
        memset(buf, 0, 4096);
        int bytesReceived = recv(sock, buf, 4096, 0);
        if (bytesReceived == -1)
        {
            std::cout << "There was an error getting response from server\r\n";
        }
        else if(bytesReceived == 0) {
            std::cout<<"ERROR: connection to the server is lost"<<std::endl;
            std::cout<<"Server connection lost either termintaed or crashed"<<std::endl;
            std::cout<<"This is enforced termination for the client as server seems to be down now, check server side!"<<std::endl;
            exit(1);
        }
        else{
            readings.push_back(bytesReceived);
        }
    } while(true);

    //Close the socket
    close(sock);
}

void accu_calc(){
    while(true){
        std::this_thread::sleep_for(std::chrono::seconds(5));
        if(readings.size() < 5){
            std::this_thread::sleep_for(std::chrono::seconds(5 - readings.size()));
        }
            accu = accumulate(readings.begin(), readings.end(),0);
            ot_accu += accu;
            accu_avg = true;
            print_5s = true;
    }
}

void avg_calc(){
    while(true){
        if (accu_avg){
            avg  = accu / 5.0;
            ot_avg = ot_accu/divisor;
            divisor += 5;
            accu_avg = false;
        }
    }    
}


void print(){
    while(true){
        if (print_5s){
            std::cout<<"last 5 seconds readings are: ";
            for(int i = 0; i < readings.size(); i++){
                std::cout<<readings[i]<<" ";
            }
            std::cout<<std::endl;
            std::cout << "Accumulation over last 5s    = " << accu << std::endl;
            std::cout << "Average over last 5s         = " << avg << std::endl;
            std::cout << "Accumulation over ""all"" time   = " << ot_accu << std::endl;
            std::cout << "Average over ""all"" time        = " << ot_avg << std::endl;
            std::cout<<std::endl;
            std::cout<<std::endl;
            readings.clear();
            print_5s = false;
        }
    }
}



int main()
{
    
    std::thread thread1 (network);
    std::thread thread2 (accu_calc);
    std::thread thread3 (avg_calc);
    std::thread thread4 (print);

    thread1.join();
    thread2.join();
    thread3.join();
    thread4.join();
    
    return 0;
}
