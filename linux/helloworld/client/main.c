#include <zmq.h>  
#include <string.h>  
#include <stdio.h>  
#include <unistd.h>  
  
int main (int argc, char **argv)  
{  
    if (argc < 2)
    {
	printf("useage:./a.out loopnums\n");
	return;
    }
    setbuf(stdout, NULL);
    printf ("Connecting to hello world server...\n");  
    void *context = zmq_ctx_new ();  
    void *requester = zmq_socket (context, ZMQ_REQ);  
    //zmq_connect (requester, "tcp://localhost:5555");  
    //zmq_connect (requester, "inproc://my_publisher");  
    //zmq_connect (requester, "tcp://xiaoweilai:5555");  
    //zmq_connect (requester, "tcp://*:5555");  
    zmq_connect (requester, "tcp://192.168.1.101:5555");  
  
    int request_nbr;  
    for (request_nbr = 0; request_nbr != atoi(argv[1]); request_nbr++) {  
        char buffer [10] = {0};  
	memset(buffer, 0 , sizeof(buffer));
        printf ("Sending Hello %d...\n", request_nbr);  
        zmq_send (requester, "Hello", 5, 0);  
        zmq_recv (requester, buffer, 10, 0);  
        fprintf (stdout, "Received [%s] %d\n", buffer, request_nbr);  
    }  
    zmq_close (requester);  
    zmq_ctx_destroy (context);  
    return 0;  
}  
