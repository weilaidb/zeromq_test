#include "common.h"
#include <nanomsg/pubsub.h>

#define SERVER "server"
#define CLIENT "client"
#define SOCKET_ADDR "ipc:///tmp/pubsub.ipc"

char *date(void)
{
        time_t raw = time(&raw);
        struct tm *info = localtime(&raw);
        char *text = asctime(info);
        text[strlen(text) - 1] = '\0';
        return text;
}

int server(const char *url)
{
        int sock = nn_socket(AF_SP, NN_PUB);
        assert(sock >= 0);
        assert(nn_bind (sock, url) >= 0);

        while (1)
        {
                char *d = date();
                int sz_d = strlen(d) + 1; // '\0' too
                printf("SERVER: PUBLISHING DATE %s\n", d);
                int bytes = nn_send(sock, d, sz_d, 0);
                assert(bytes == sz_d);
                sleep(1);
        }

        return nn_shutdown(sock, 0);
}

int client(const char *url, const char *name)
{
        int sock = nn_socket (AF_SP, NN_SUB);

        assert(sock >= 0);
        /* TODO learn more about publishing/subscribe keys */
        assert(nn_setsockopt (sock, NN_SUB, NN_SUB_SUBSCRIBE, "", 0) >= 0);
        assert(nn_connect (sock, url) >= 0);

        while (1)
        {
                char *buf = NULL;
                int bytes = nn_recv(sock, &buf, NN_MSG, 0);
                assert(bytes >= 0);
                printf("CLIENT (%s): RECEIVED %s\n", name, buf);
                nn_freemsg(buf);
        }

        return nn_shutdown(sock, 0);
}

int main(const int argc, const char **argv)
{
        if (argc == 2 && strncmp(SERVER, argv[1], strlen(SERVER)) == 0) {
                return server(SOCKET_ADDR);
        } else if (argc == 3 && strncmp (CLIENT, argv[1], strlen (CLIENT)) == 0) {
                return client(SOCKET_ADDR, argv[2]);
        } else {
                fprintf(stderr, "Usage: pubsub %s|%s <ARG> ...\n", SERVER, CLIENT);
                return 1;
        }
}
